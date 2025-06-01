CREATE TABLE ecommerce.customers (
  User_Id INT64,
  Session_start TIMESTAMP,
  Session_end TIMESTAMP,
  Offer_notification_click_time TIMESTAMP,
  Purchase_completion_time TIMESTAMP
);


SELECT COUNT(User_Id) AS UserCount
FROM ecommerce.customers
WHERE Offer_notification_click_time IS NOT NULL
  AND Purchase_completion_time IS NOT NULL
  AND Purchase_completion_time >= Offer_notification_click_time
  AND Purchase_completion_time BETWEEN Session_start AND Session_end;
