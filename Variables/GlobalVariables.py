# Global variables file is usually part of the project where we keep the most important information that will be used
# in multiple tests
# For example server, basic selenium delay, different URL locations, timeout constants, browsers, etc.
SERVER = "opencart.abstracta.us"
# The good practise is to use sever in separate variable so you can switch between environments easily with only
# one change here and not updating all of the URLs one by one

STOREFRONT_URL = "http://"+SERVER+"/"
REGISTER_URL = "https://"+SERVER+"/index.php?route=account/register"
SUCCESS_REGISTER_URL = "http://"+SERVER+"/index.php?route=account/success"

DELAY = "0.8"
# Delay is usually used in Open Browser keyword or similar and sets the selenium speed. The purpose of delay is to make
# sure that first action is really executed before the second

# BROWSER = "PhantomJS"
# Here you can specify which browser you will use or set it to headless browser

# Here you should add any global constants like timeouts, sleeps, numbers that are used in variety of tests, email, etc.
# TIMEOUT_30s = 30

NUMBER_8 = "8"
NUMBER_1 = "1"

# We store here the second part of the email because the final email used in the tests is created with a random string
# for the user name. For example in the GlobalKeywords.robot there is a keyword that generates the first part and
# it will be unique for every run. Then it is joined with the user_email_part_2 below.
user_email_part_2 = "@mailinator.com"

