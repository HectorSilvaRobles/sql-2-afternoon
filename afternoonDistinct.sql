-- 1. From the `track` table find a unique list of all `composer`s
select distinct composer from track


-- 2. From the `invoice` table find a unique list of all `billing_postal_code`s
select distinct billing_postal_code from invoice

-- 3. From the `customer` table find a unique list of all `company`s
select distinct company from customer