def remove_dollar_sign_from_price(price):
    return price[1:]


def calculate_vat(subtotal):
    vat = 0.2
    vat_value = float(subtotal) * vat

    return round(vat_value, 2)
