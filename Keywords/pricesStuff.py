# This is python file that holds python functions related to price calculation
# Import the required python libraries
from __builtin__ import float, round

# This function is taking the price in format $43.89 and returning it in format 43.89
# so we can use it in future calculations
# Note that the returned format is string!
def remove_dollar_sign_from_price(price):
    return price[1:]

# This function calculates VAT from a subtotal price. VAT is usually 20%
def calculate_vat(subtotal):
    vat = 0.2
# we use float to cast the subtotal to number
    vat_value = float(subtotal) * vat
# before return we should round the price do the second digit so it matches the format of the prices on the storefront
    return round(vat_value, 2)
