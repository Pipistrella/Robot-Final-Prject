# Global variables file is usually part of the project where we keep the most important information that will be used
# in multiple tests
# For example server, basic selenium delay, different URL locations, timeout constants, browsers, etc.

SERVER = "automationpractice.com"
# The good practise is to use sever in separate variable so you can switch between environments easily with only
# one change here and not updating all of the URLs one by one

STOREFRONT_URL = "http://"+SERVER+"/"
REGISTER_URL = "https://"+SERVER+"/index.php?route=account/register"

DELAY = "0.8"
# Delay is usually used in Open Browser keyword and sets the selenium speed. The purpose of delay is to make sure that
# first action is really executed before the second

# BROWSER = "PhantomJS"
# Here you can specify which browser you will use or set it to headless browser

# TIMEOUT_30s = 30