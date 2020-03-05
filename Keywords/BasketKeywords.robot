*** Keywords ***

I Am Adding Product To The Basket As Anonymous Customer
    Click Element  ${main_nav_category_phones_and_pda}
    Click Element  ${product_palm_treo_pdp_link}
    Click Element  ${add_to_basket_from_pdp}
    Page Should Contain Element  ${add_to_basket_success_message}

The Basket VAT Is Calculated Correctly
    Go To Basket Page
    ${basket_subtotal}=  Get Text  ${basket_page_subtotal}
    ${subtotal_substring}=  remove_dollar_sign_from_price  ${basket_subtotal}
    ${vat_value}=  Get Text  ${basket_page_VAT_value}
    ${vat_substring}=  remove_dollar_sign_from_price  ${vat_value}
    ${vat_value_calculated}=  calculate_vat  ${subtotal_substring}
    Should Be Equal As Numbers  ${vat_substring}  ${vat_value_calculated}


Go To Basket Page
    Click Element  ${basket_main_nav_button}
    Click Element  ${view_cart_basket_dropdown}

