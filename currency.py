# -*- coding:utf-8 -*-
import requests
import csv
import codecs

# api 1美元的匯率
def rate(payload):
    res = requests.get("http://apilayer.net/api/live", params=payload)
    if res.status_code != 200:
        raise Exception("ERROR: API request unsucessful.")
    
    data = res.json()

    return data['quotes']

# api 代碼所對應的國家
def country(payload):
    res = requests.get("http://apilayer.net/api/list", params=payload)
    if res.status_code != 200:
        raise Exception("ERROR: API request unsucessful.")
    
    data = res.json()

    data_list = keys_list = []  
    keys_list = data['currencies'].keys()
    for key in keys_list:
        value = data['currencies'][key]
        data_list.append((key, str(value)))
    return data_list

def main():
    payload = {'access_key': 'YOUR_KEY'}
    r = rate(payload)
    c = country(payload)

    for each in c:
        print("1 US dollar == " + str(r["USD"+each[0]]))
        print(each[1])
        print("")

if __name__ == "__main__":
    main()