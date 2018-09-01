import requests
import pymysql

allUrl = []
ajax_result_url = []
f = open('ajax_getresult_groupcode.txt','r')
for line in f.readlines():
    #先清洗.txt內的資料
    line = line.replace(",…", "")
    line = line.replace(":", "")
    line = line.replace(",", "")
    line = line.replace("\n", "")
    line = line.split(' ')

    #print(line)
    #蒐集目標網址
    try:
        if line[2] == "group_code":
            allUrl.append(r"https://www.tripresso.com/detail?group_code="
                +line[3][1:-1]
                +"&tour_key="
                +line[5][1:-1]
                +"-"
                +line[7][1:-3])

            ajax_result_url.append(r"https://www.tripresso.com/detail/ajaxTourInfo/"
                +line[5][1:-1]
                +"-"
                +line[7][1:-3]
                +"/"
                +line[3][1:-1])
    except IndexError:
        pass

#將旅遊項目url、及該ajax.url存入資料庫
db = pymysql.connect(host='localhost', port=3306, password='', user='root', db='tourism')
cursor = db.cursor()
i = 0
for i in range(len(allUrl)):
    sql="insert into web(id, weburl, ajaxurl) value("+str(i)+",'"+allUrl[i]+"','"+ajax_result_url[i]+"')"
    try:
        cursor.execute(sql)
        db.commit()
        print("第", (i), "筆資料已存入")
        i = i+1
    except:
        db.rollback()

db.close()

#爬取所有url內旅遊資訊，並存入資料庫
#日期、最大團員人數、可售票、成人票價、小孩票價
db = pymysql.connect(host='localhost', port=3306, password='', user='root', db='tourism')
cursor = db.cursor()
for i in range(len(allUrl)):
    res = requests.get(ajax_result_url[i])
    content = res.text

    position = 1
    while(content):
        if(content.find("date",position-1) == -1):
            break

        position = content.find("date",position)
        date = content[position+7:position+17]
        position = content.find("qty",position)
        qty = content[position+6:position+8]
        position = content.find("sell",position)
        sell = content[position+7:position+9]
        position = content.find("adult",position)
        adult = content[position+8:position+13]
        position = content.find("child",position)
        child = content[position+8:position+13]

        qty = qty.replace("\""," ")
        sell = sell.replace("\""," ")
        try:
            sql="insert into web_info(weburl, date, qty, sell, adult, child) value('"+allUrl[i]+"','"+date+"','"+qty+"','"+sell+"','"+adult+"','"+child+"')"
            cursor.execute(sql)
            db.commit()
        except:
            print(date+" "+qty+" "+sell+" "+adult+" "+child+" "+" doesn't work ")
            db.rollback()
        #print(date+" "+qty+" "+sell+" "+adult+" "+child)
        #print()
        position = position + 1

db.close()