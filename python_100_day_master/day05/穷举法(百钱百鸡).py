# coding = utf-8
"""
@project: python_100_day_master
@author: ZWNONG
@file: 穷举法(百钱百鸡).py
@time: 2020-09-04 22:00:48
"""
# 在《算经》一书中提出的数学问题：鸡翁一值钱五，鸡母一值钱三，鸡雏三值钱一。百钱买百鸡，问鸡翁、鸡母、鸡雏各几何？
# 公鸡5元一只，母鸡3元一只，小鸡1元三只，用100块钱买一百只鸡，问公鸡、母鸡、小鸡各有多少只？
for x in range(0, 20):
    for y in range(0, 33):
        z = 100 - x - y
        if 5 * x + 3 * y + z / 3 == 100:
            print('公鸡：%d只, 母鸡: %d只, 小鸡: %d只' % (x, y, z))
