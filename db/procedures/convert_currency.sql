CREATE FUNCTION `convert_currency`(from_currency integer, to_currency int) RETURNS decimal(20,6)
  READS SQL DATA
begin
  declare v_rate decimal(20,6) default 1.0;

  if from_currency != to_currency
  then

    set v_rate = (
      select h.azex_rate
      from currency_rate_history h, currency cf, currency ct
      where from_currency_id = from_currency and to_currency_id = to_currency
        and h.from_currency_id = cf.id and cf.status = 1
        and h.to_currency_id = ct.id and ct.status = 1
        and h.status = 1 and now() between h.valid_from and h.valid_to
    );

  end if;

  return v_rate;

end