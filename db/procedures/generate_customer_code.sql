
CREATE FUNCTION `generate_customer_code`() RETURNS varchar(50) CHARSET utf8 COLLATE utf8_unicode_ci
  READS SQL DATA
BEGIN
  declare l_prefix char(1);
  declare l_new_code integer;
  declare l_customer_code varchar(50);

  set l_prefix = (select prefix  from customer_code  order by count, prefix limit 1);

  set l_new_code = (select new_code
                    from (
                           select floor(10000 + rand() * 100000) as new_code
                         ) as a
                    where new_code not in (select code from customer_code_generated)
                    limit 1);

  set l_customer_code = concat(l_prefix, l_new_code);

  insert into customer_code_generated(code) values(l_new_code);

  update customer_code
  set count = count + 1, last_customer_code = l_customer_code
  where prefix = l_prefix;

  RETURN l_customer_code;
END