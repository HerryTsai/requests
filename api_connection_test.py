# -*- coding:utf-8 -*-
import requests
import csv
import codecs

def main():
    res = requests.get("https://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=95299946-7095-4020-a719-8b553d84fdc6")
    if res.status_code != 200:
        raise Exception("ERROR: API request unsucessful.")
        
    data = res.json()
    info = data['result']['results']
    for i in info:
        print(i)

    #直接使用以下程式碼對齊會歪掉
    '''with open('test.csv', 'w') as csvfile:
        csvfile.write(str(codecs.BOM_UTF8))
        testfile = csv.writer(csvfile, dialect='excel')
        for item in info:
            testfile.writerow(item["班期別"])
            testfile.writerow(str(item["_id"]))
    '''
    #將亂碼先存入另一excel
    with open('test1.csv', 'w') as csvfile:
    #解決中文亂碼
        csvfile.write(str(codecs.BOM_UTF8))

    #coverert dict into list 來對齊
    data = []
    for item in info:
        data.append((item[" 訓練期數\n(期) "], 
        item["結訓人次(A)\n(人次)男"], 
        item["結訓人次(A)\n(人次)合計"], 
        item["班期別"], 
        str(item["_id"]), 
        str(item[" 訓練期程\n(B)(小時) "]), 
        str(item["結訓人次(A)\n(人次)女"]))
        )
        
    with open('test2.csv', 'w') as csvfile:
        testfile = csv.writer(csvfile, dialect='excel')

        title = [" 訓練期數\n(期) ", 
        "結訓人次(A)\n(人次)4男", 
        "結訓人次(A)\n(人次)合計", 
        "班期別", "_id", 
        " 訓練期程\n(B)(小時) ",
        "結訓人次(A)\n(人次)女"
        ]

        testfile.writerow(title)
        for lis in data:
            testfile.writerow(lis)
    
if __name__ == "__main__":
    main()
