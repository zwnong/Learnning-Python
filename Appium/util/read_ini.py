# coding = utf-8
import sys
import configparser


class ReadIni:
    def __init__(self, file_path=None):
        if file_path is None:
            self.file_path = r'D:\Git\Python\Appium\config\elements.ini'
        else:
            self.file_path = file_path
        self.data = self.read_ini()

    def read_ini(self):
        read = configparser.ConfigParser()
        read.read(self.file_path), "r", "utf_16"
        return read

    # 通过key获取对应的value
    def get_value(self, key, section=None):
        if section is None:
            section = 'elements'
        try:
            value = self.data.get(key, section)
        except:
            value = None
        return value


if __name__ == '__main__':
    read_ini = ReadIni()
    print(read_ini.get_value("finish_button", "elements"))
