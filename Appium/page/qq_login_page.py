# coding = utf-8
from util.get_element_by_ini import GetElementByIni
from base.base_driver import Driver


# 元素层
class QQLoginPage:
    def __init__(self):
        base_driver = Driver()
        self.driver = base_driver.android_driver()
        self.get_element_by_ini = GetElementByIni(self.driver)

    # 登录页面的所以元素
    def get_username_element(self):
        """
        # 获取用户名元素信息
        """
        return self.get_element_by_ini.get_element('username')

    def get_password_element(self):
        """
        # 获取密码元素信息
        """
        return self.get_element_by_ini.get_element('password')

    def get_login_btn_element(self):
        """
        # 获取登录按钮元素信息
        """
        return self.get_element_by_ini.get_element('loginbtn')