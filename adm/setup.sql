CREATE SEQUENCE customer_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE category_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE platform_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE tier_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE plan_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE restaurant_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE rider_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE subscription_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE coin_wallet_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE benefit_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE owner_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE item_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE sub_payment_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE voucher_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE voucher_wallet_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE order_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE order_details_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE payment_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE transaction_seq START WITH 1 INCREMENT BY 1 NOCACHE;

-- PROCEDURES
@"D:\Downloads\adm\app_session.txt"
@"D:\Downloads\adm\procedure\prc_login_customer.txt"
@"D:\Downloads\adm\procedure\prc_register_customer.txt"
@"D:\Downloads\adm\procedure\prc_add_to_cart.txt"
@"D:\Downloads\adm\procedure\prc_checkout.txt"
@"D:\Downloads\adm\procedure\prc_add_subscription.txt"
@"D:\Downloads\adm\procedure\prc_add_rider.txt"
@"D:\Downloads\adm\procedure\prc_apply_discounts.txt"
@"D:\Downloads\adm\procedure\prc_claim_voucher.txt"
@"D:\Downloads\adm\procedure\prc_complete_delivery.txt"
@"D:\Downloads\adm\procedure\prc_create_payment.txt"
@"D:\Downloads\adm\procedure\prc_finalize_order.txt"
@"D:\Downloads\adm\procedure\prc_prepare_order.txt"

-- TRIGGERS
@"D:\Downloads\adm\trigger\trg_after_payment_insert.txt"
@"D:\Downloads\adm\trigger\trg_after_rider_insert.txt"
@"D:\Downloads\adm\trigger\trg_after_sub_payment_insert.txt"
@"D:\Downloads\adm\trigger\trg_after_customer_insert.txt"
@"D:\Downloads\adm\trigger\trg_after_cust_order_insert.txt"
@"D:\Downloads\adm\trigger\trg_after_voucher_update.txt"
@"D:\Downloads\adm\trigger\trg_before_cart_insert.txt"
@"D:\Downloads\adm\trigger\trg_before_loyalty_update.txt"
@"D:\Downloads\adm\trigger\trg_before_rider_update.txt"
@"D:\Downloads\adm\trigger\trg_before_voucher_insert.txt"

-- REPORTS
@"D:\Downloads\adm\reports\prc_receipt.txt"
@"D:\Downloads\adm\reports\prc_view_cart.txt"
@"D:\Downloads\adm\reports\prc_view_riders_by_platform.txt"