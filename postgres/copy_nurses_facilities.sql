\copy nurses(id, first_name, last_name, phone, email) FROM 'postgres/Nurses.csv' WITH DELIMITER ',' CSV HEADER;

\copy facilities(id, name, city, state, zip, num_patients, num_providers) FROM 'postgres/Facilities.csv' WITH DELIMITER ',' CSV HEADER;

\copy nurse_facility(nurse_id, facility_id) FROM 'postgres/Nurse_Facility.csv' WITH DELIMITER ',' CSV HEADER;