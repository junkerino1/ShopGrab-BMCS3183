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
@"app_session.txt"
@"procedure\prc_add_rider.txt"
@"procedure\prc_add_subscription.txt"
@"procedure\prc_add_to_cart.txt"
@"procedure\prc_apply_discounts.txt"
@"procedure\prc_claim_voucher.txt"
@"procedure\prc_complete_delivery.txt"
@"procedure\prc_create_payment.txt"
@"procedure\prc_finalize_order.txt"
@"procedure\prc_login_customer.txt"
@"procedure\prc_prepare_order.txt"
@"procedure\prc_receipt.txt"
@"procedure\prc_register_customer.txt"
@"procedure\prc_view_cart.txt"
@"procedure\prc_checkout.txt"

-- TRIGGERS
@"trigger\trg_after_customer_insert.txt"
@"trigger\trg_after_cust_order_insert.txt"
@"trigger\trg_after_payment_insert.txt"
@"trigger\trg_after_rider_insert.txt"
@"trigger\trg_after_sub_payment_insert.txt"
@"trigger\trg_after_voucher_update.txt"
@"trigger\trg_before_cart_insert.txt"
@"trigger\trg_before_loyalty_update.txt"
@"trigger\trg_before_rider_update.txt"
@"trigger\trg_before_voucher_insert.txt"

-- REPORTS
@"reports\prc_average_order_value_report.txt"
@"reports\prc_coin_flow_report.txt"
@"reports\prc_coin_transaction_history.txt"
@"reports\prc_customer_retention_report.txt"
@"reports\prc_monthly_restaurant_sales.txt"
@"reports\prc_rider_current_delivery_report.txt"
@"reports\prc_rider_delivery_report.txt"
@"reports\prc_subscription_countdown_report.txt"
@"reports\prc_voucher_countdown_report.txt"
@"reports\prc_voucher_redemption_report.txt"