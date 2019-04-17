CREATE DEFINER=`azex_admin`@`%` PROCEDURE `register_customer`(
	p_email varchar(100),
    p_name varchar(100),
    p_surname varchar(100),
    p_password varchar(255),
    p_registration_date datetime,
    p_token varchar(255),
    p_token_expire_date datetime
)
BEGIN

	declare l_id integer;

	insert into users(id, email, password, first_name, last_name, registration_date, token, token_expire_date, user_status, user_type, status)
	values(null, p_email, p_password, p_name, p_surname, p_registration_date, p_token, p_token_expire_date, 0, 0, 1);

	select last_insert_id() into l_id;

	insert into customer(id, user_id, status)
	values(null, l_id, 1);

	select last_insert_id() into l_id;

	insert into balance(id, balance_amount, currency_id, customer_id, last_update, status)
	values(null, 0.0, 1, l_id, current_date(), 1);

END