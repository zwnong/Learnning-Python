# coding = utf-8
"""
@project: python_100_day_master
@author: ZWNONG
@file: 字符串处理.py
@time: 2020-09-06 14:47:18
"""
str1 = 'hello, world!'
# 通过内置函数计算字符串长度：
print(len(str1))

# 获得字符串首字母的大写
print(str1.capitalize())

# 获得字符串每个单词首字母大写
print(str1.title())

# 小写转换大写
print(str1.upper())

# 从字符串忠查找子串所在得位置
print(str1.find('or'))

print(str1.find('shit'))  # -1
# 与find类似但找不到子串时会引发异常
# print(str1.index('or'))
# print(str1.index('shit'))
# 检查字符串是否以指定的字符串开头
print(str1.startswith('He'))
print(str1.startswith('hel'))

# 检查字符串是否以指定的字符串结尾
print(str1.endswith('!'))

# 将字符串以指定的宽度居中并在两侧填充指定的字符
print(str1.center(50, '*'))

# 将字符串以指定的宽度靠右放置左侧填充指定的字符
print(str1.rjust(50, ' '))

str2 = 'abc123456'
# 检查字符串是否由数字构成
print(str2.isdigit())

# 检查字符串是否以字母构成
print(str2.isalpha())

# 检查字符串是否以数字和字母构成
print(str2.isalnum())  # True
str3 = '  jackfrued@126.com '
print(str3)

# 获得字符串修剪左右两侧空格之后的拷贝
print(str3.strip())
