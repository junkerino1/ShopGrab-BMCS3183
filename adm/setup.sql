
-- SEQUENCES
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

-- INDEXES
CREATE INDEX idx_customer_id ON CUSTOMER(customer_id);
CREATE INDEX idx_rest_cat_name ON RESTAURANT_CATEGORY(category_name);
CREATE INDEX idx_platform_name ON PLATFORM(platform_name);
CREATE INDEX idx_loyalty_tier_spend ON LOYALTY_TIER(min_total_spend);
CREATE INDEX idx_sub_plan_price ON SUB_PLAN(price);
CREATE INDEX idx_restaurant_name ON RESTAURANT(name);
CREATE INDEX idx_rider_platform ON RIDER(platform_id);
CREATE INDEX idx_subscription_customer ON SUBSCRIPTION(customer_id);
CREATE INDEX idx_coin_wallet_total ON COIN_WALLET(total_coins);
CREATE INDEX idx_c_loyalty_tier ON C_LOYALTY(tier_id);
CREATE INDEX idx_l_benefit_tier ON L_BENEFIT(tier_id);
CREATE INDEX idx_owner_phone ON OWNER(phone_no);
CREATE INDEX idx_rest_cat_map_category ON RESTAURANT_CATEGORY_MAP(category_id);
CREATE INDEX idx_menu_item_restaurant ON MENU_ITEM(restaurant_id);
CREATE INDEX idx_sub_payment_subscription ON SUB_PAYMENT(subscription_id);
CREATE INDEX idx_voucher_status ON VOUCHER(status);
CREATE INDEX idx_voucher_wallet_customer ON VOUCHER_WALLET(customer_id);
CREATE INDEX idx_cust_order_customer ON CUST_ORDER(customer_id);
CREATE INDEX idx_order_details_order ON ORDER_DETAILS(order_id);
CREATE INDEX idx_payment_method ON PAYMENT(payment_method);
CREATE INDEX idx_coin_transaction_wallet ON COIN_TRANSACTION(wallet_id);
CREATE INDEX idx_temp_cart_item ON TEMP_CART(item_id);

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

-- VIEWS
@"queries\average_order_value_view.txt"
@"queries\coin_flow_view.txt"
@"queries\coin_transaction_view.txt"
@"queries\loyalty_benefits_view.txt"
@"queries\loyalty_customer_view.txt"
@"queries\menu_of_open_restaurant_view.txt"
@"queries\most_ordered_menu_view.txt"
@"queries\order_volume_view.txt"
@"queries\restaurant_revenue_view.txt"
@"queries\subscription_countdown_view.txt"

-- REPORTS
@"reports\prc_average_order_value_report.txt"
@"reports\prc_top_customer_spending_report.txt"
@"reports\prc_coin_transaction_history.txt"
@"reports\prc_customer_retention_report.txt"
@"reports\prc_monthly_restaurant_sales.txt"
@"reports\prc_platform_report.txt"
@"reports\prc_rider_delivery_report.txt"
@"reports\prc_subscription_countdown_report.txt"
@"reports\prc_top_menu_items_report.txt"
@"reports\prc_voucher_redemption_report.txt"