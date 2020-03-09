# coding = utf-8
import sys

import time
import unittest
from appium import webdriver
import HTMLTestRunner
from business.flyme_login_business import LoginBusiness


class TestFlyMeLoginFunc(unittest.TestCase):

    def __init__(self):
        pass

    def setUp(self):
        pass

    def tearDown(self):
        self.driver.quit()

    def test_01(self):
        self.flyme_login_pass()

    def case_suite(self):
        suite = unittest.TestSuite()
        suite.addTest(TestFlyMeLoginFunc("test_01"))
        # 获取当前时间
        now = time.strftime("%Y-%m-%M-%H_%M_%S", time.localtime(time.time()))
        # runner = unittest.TextTestRunner()
        # runner.run(suite)
        runner = HTMLTestRunner.HTMLTestRunner()
        file_path = r'D:\Git\Learnning-Python\Appium\report\report' + now + '.html'
        with open(file_path, 'wb') as f:
            HTMLTestRunner.HTMLTestRunner(stream=f, title='测试报告', description='描述:').run(suite)


if __name__ == '__main__':
    run = TestFlyMeLoginFunc()
    run.case_suite()
