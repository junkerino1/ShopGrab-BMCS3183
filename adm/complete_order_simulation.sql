BEGIN
	FOR rec IN (
		SELECT order_id
		FROM (
			SELECT order_id
			FROM CUST_ORDER
			WHERE order_status = 'Pending'
			ORDER BY DBMS_RANDOM.VALUE
		)
	) LOOP
		prc_complete_delivery(rec.order_id);
	END LOOP;
END;
/