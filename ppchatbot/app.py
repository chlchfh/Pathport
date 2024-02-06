from flask import Flask, request, jsonify, render_template
import sys, json, datetime, pymysql

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello():
    return render_template('index.html')

@app.route('/location', methods=['POST'])
def getLocation():
    body = request.get_json()
    print(body)
    # print(type(body), body.keys())
    loc = request.json.get("action", {}).get("detailParams", {}).get("location", {}).get("value", '')

    try:
        conn = pymysql.connect(
            host='pathport.cuj4cotn525c.ap-northeast-2.rds.amazonaws.com',
            user='PPDB',
            port=3306,
            password='PPepdlxj1!',
            db='PPDB',
            charset='utf8'
        )

        cur = conn.cursor()
        query1 = "SELECT DES_NAME, DES_CONT, DES_CODE FROM DESTINATION WHERE INSTR(DES_ADDR2, %s) > 0"
        query2 = "SELECT I.IMAGE_CODE FROM IMAGE I, DESTINATION D WHERE I.DES_CODE = D.DES_CODE and D.DES_CODE = %s"
        
        cur.execute(query1, (loc))
        data1 = cur.fetchmany(4)

        img_data = []

        for i in range(len(data1)):
            cur.execute(query2, (data1[i][2]))
            img_data.append(cur.fetchone()[0])

        print(data1)
        print(img_data)

        responseBody = {
            "version": "2.0",
            "template": {
                "outputs": [
                    {
                        "listCard": {
                            "header": {
                                "title": loc + "의 추천 여행지"
                            },
                            "items": [
                                {
                                    "title": data1[0][0],
                                    "description": data1[0][1],
                                    "imageUrl": img_data[0],
                                    "link": {
                                        "web": f"https://namu.wiki/w/{data1[0][0]}"
                                    }
                                },
                                {
                                    "title": data1[1][0],
                                    "description": data1[1][1],
                                    "imageUrl": img_data[1],
                                    "link": {
                                        "web": f"https://namu.wiki/w/{data1[1][0]}"
                                    }
                                },
                                {
                                    "title": data1[2][0],
                                    "description": data1[2][1],
                                    "imageUrl": img_data[2],
                                    "link": {
                                        "web": f"https://namu.wiki/w/{data1[2][0]}"
                                    }
                                },
                                {
                                    "title": data1[3][0],
                                    "description": data1[3][1],
                                    "imageUrl": img_data[3],
                                    "link": {
                                        "web": f"https://namu.wiki/w/{data1[3][0]}"
                                    }
                                }
                            ],
                            "buttons": [
                                {
                                    "label": "상세페이지 이동",
                                    "action": "message",
                                    "messageText": "상품페이지 이동"
                                },
                                {
                                    "label": "여행상품 검색",
                                    "action": "message",
                                    "messageText": "여행상품 검색"
                                }
                            ]
                        }
                    }
                ],
                "quickReplies": [
                    {
                        "messageText": "처음으로",
                        "action": "message",
                        "label": "처음으로"
                    }
                ]
            }
        }
    
    except pymysql.Error as e:
        print(f'에러발생: {e}')
        responseBody = {
            "version": "2.0",
            "template": {
                "outputs": [
                    {
                        "simpleText": {
                            "text": "데이터베이스 연결 오류"
                        }
                    }
                ]
            }
        }

    finally:
        # 데이터베이스 연결 닫기
        if 'conn' in locals() and conn.open:
            conn.close()

    return jsonify(responseBody);

@app.route('/locationDetail', methods=['POST'])
def getLocationDetail():
    body = request.get_json()
    print(body)
    # print(type(body), body.keys())
    loc = request.json.get("action", {}).get("detailParams", {}).get("여행지", {}).get("value", '')

    try:
        conn = pymysql.connect(
            host='pathport.cuj4cotn525c.ap-northeast-2.rds.amazonaws.com',
            user='PPDB',
            port=3306,
            password='qwer1234!',
            db='PPDB',
            charset='utf8'
        )

        cur = conn.cursor()
        query1 = "SELECT DES_NAME, DES_CONT, DES_CODE FROM DESTINATION WHERE INSTR(DES_NAME, %s) > 0"
        query2 = "SELECT I.IMAGE_CODE FROM IMAGE I, DESTINATION D WHERE I.DES_CODE = D.DES_CODE and D.DES_CODE = %s"
        
        cur.execute(query1, (loc))
        data1 = cur.fetchall()

        img_data = []
        cur.execute(query2, (data1[0][2]))
        img_data = cur.fetchall()

        print(data1)
        print(img_data)

        responseBody = {
            "version": "2.0",
            "template": {
                "outputs": [
                    {
                        "basicCard": {
                            "title": loc,
                            "description": data1[0][1],
                            "thumbnail": {
                                "imageUrl": img_data[0][0]
                            },
                            "buttons": [
                                {
                                "label": "상세페이지 이동",
                                "action": "webLink",
                                "webLinkUrl": f"https://namu.wiki/w/{data1[0][0]}"
                                }
                            ]
                        }
                    }
                ],
                "quickReplies": [
                    {
                        "messageText": "처음으로",
                        "action": "message",
                        "label": "처음으로"
                    }
                ]
            }
        }
    
    except pymysql.Error as e:
        print(f'에러발생: {e}')
        responseBody = {
            "version": "2.0",
            "template": {
                "outputs": [
                    {
                        "simpleText": {
                            "text": "데이터베이스 연결 오류"
                        }
                    }
                ]
            }
        }

    finally:
        # 데이터베이스 연결 닫기
        if 'conn' in locals() and conn.open:
            conn.close()

    return jsonify(responseBody);

@app.route('/detail', methods=['GET'])
def getDetail():
    return render_template('detail.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
