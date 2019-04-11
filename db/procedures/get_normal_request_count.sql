CREATE FUNCTION `get_normal_request_count`(p_customer_id int) RETURNS int(11)
  READS SQL DATA
BEGIN
  declare l_normal_req_count int;

  select count(distinct c.id) into l_normal_req_count
  from customer_request r  join customer c on r.customer_id = c.id and c.status = 1 and r.status = 1
  where c.id = p_customer_id
    and r.is_priority = 0
    and r.request_status = 2
    and r.paid = 1
    and  not exists (
      select 1
      from customer_request cr
      where cr.is_priority = 1 and cr.request_status = 2  and cr.paid = 1
        and cr.customer_id = c.id and cr.status = 1
    );

  RETURN l_normal_req_count;
END