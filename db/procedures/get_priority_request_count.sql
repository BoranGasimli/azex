CREATE FUNCTION `get_priority_request_count`(p_customer_id int) RETURNS int(11)
    READS SQL DATA
BEGIN
	declare l_priority_req_count int;

	select count(distinct c.id) into l_priority_req_count
	from customer_request r  join customer c on r.customer_id = c.id and c.status = 1
	where c.id = p_customer_id
		and r.is_priority = 1
		and r.request_status = 2
        and r.paid = 1
        and r.status = 1;

RETURN l_priority_req_count;
END