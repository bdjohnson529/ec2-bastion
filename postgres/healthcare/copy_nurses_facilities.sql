\copy nurses(id, facility, first_name, last_name, phone, email) FROM 'postgres/healthcare/Nurses_2.csv' WITH DELIMITER ',' CSV HEADER;
