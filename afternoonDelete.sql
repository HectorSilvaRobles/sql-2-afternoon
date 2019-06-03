-- 2. Delete all `'bronze'` entries from the table.
delete from practice_delete
where type = 'bronze'

-- 3. Delete all `'silver'` entries from the table
delete from practice_delete
where type = 'silver'

-- 4. Delete all entries whose value is equal to `150`
delete from practice_delete
where value = 150