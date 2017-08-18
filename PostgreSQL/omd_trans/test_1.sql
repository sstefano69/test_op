### TESt ######################################################################################################:

UPDATE foglamp.streams SET last_object=20000, ts=now() WHERE id=1;

# Specific measurement
SELECT * FROM foglamp.readings WHERE id > 20000 and id <= 20000+50 and asset_code  like '%lux%' ORDER by USER_ts;


SELECT * FROM foglamp.readings WHERE id > 20000 and id <= 20000+50 and asset_code like '%gyrosc%' ORDER by USER_ts;


### DEMO ######################################################################################################:

SELECT MAX(id)-19645 FROM foglamp.readings WHERE id >= 19645;

SELECT MAX(id) FROM foglamp.readings WHERE id >= 19645;
# 23998

UPDATE foglamp.streams SET last_object=19600, ts=now() WHERE id=1;

UPDATE foglamp.streams SET last_object=19645, ts=now() WHERE id=1;


SELECT * FROM foglamp.streams;

SELECT last_object-19645 loaded FROM foglamp.streams;
#  1840



SELECT * FROM foglamp.readings;


SELECT * FROM foglamp.readings WHERE id > 7420 ORDER by id;

SELECT * FROM foglamp.readings WHERE id > 19645 ORDER by id;

SELECT * FROM foglamp.readings WHERE id > 8958 ORDER by id;

SELECT * FROM foglamp.readings WHERE id > 8958 and id <= 8958+20 ORDER by USER_ts;

# Specific measurement
SELECT * FROM foglamp.readings WHERE id > 19600 and id <= 19645+50 and asset_code like '%gyrosc%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 19645 and id <= 19645+50 and asset_code  like '%lux%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 19645 and id <= 19645+200 and asset_code  like '%humidity%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 19645 and id <= 19645+50 and asset_code like '%gyrosc%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 19645 and id <= 19645+50 and asset_code like '%magnetometer%' ORDER by USER_ts;


SELECT * FROM foglamp.readings WHERE id > 8958  and asset_code like '%keys%' ORDER by USER_ts;

SELECT DISTINCT asset_code FROM foglamp.readings WHERE id > 19645;




SELECT * FROM foglamp.readings WHERE id > 7420 ORDER by id ;

###  ######################################################################################################:

INSERT INTO foglamp.destinations (id,description, ts ) VALUES (1,'OMF', now() );

INSERT INTO foglamp.streams (id,destination_id,description, last_object,ts ) VALUES (1,1,'OMF', 666,now());



















### streams ######################################################################################################:

# DELETE FROM foglamp.destinations;
# DELETE FROM foglamp.streams;

INSERT INTO foglamp.destinations (id,description, ts ) VALUES (1,'OMF', now() );

INSERT INTO foglamp.streams (id,destination_id,description, reading_id,ts ) VALUES (1,1,'OMF', 666,now());

SELECT * FROM foglamp.destinations;

SELECT * FROM foglamp.streams;

### SEQ ######################################################################################################:

SELECT MAX(ID) FROM foglamp.readings WHERE id >= 27777;
# 25574

UPDATE foglamp.streams SET reading_id=86609 WHERE id=1;

SELECT * FROM foglamp.streams;

SELECT * FROM foglamp.readings WHERE id >= 86609 ORDER by ID;


###  ######################################################################################################:

UPDATE foglamp.streams SET reading_id=31975 WHERE id=1;

SELECT * FROM foglamp.readings WHERE id >= 31975 ORDER by ID;


SELECT * FROM foglamp.streams;

SELECT * FROM foglamp.readings WHERE id >= 4201  ORDER by ID;

SELECT * FROM foglamp.readings WHERE id >= 4201 and reading ? 'y' ORDER by ID;

SELECT * FROM foglamp.readings WHERE id >= 4201 and reading ? 'lux' ORDER by ID;


### Streams ######################################################################################################:


SELECT * FROM foglamp.readings WHERE id >= 27777 ORDER by ID;

SELECT *  FROM foglamp.readings WHERE id>= 25374;

SELECT COUNT(ID) FROM foglamp.readings WHERE id>= 26856;

SELECT MAX(ID) FROM foglamp.readings WHERE id >= 27777;
# 25574

### Bck ######################################################################################################:

CREATE TABLE foglamp.readings_bck AS SELECT * FROM foglamp.readings ;

SELECT COUNT(ID) FROM foglamp.readings_bck;

SELECT COUNT(ID) FROM foglamp.readings_bck WHERE id>= 4194;


### psql ######################################################################################################:

SELECT * FROM foglamp.readings WHERE id >= 3374 ORDER by ID LIMIT 10;

###  ######################################################################################################:

SELECT * FROM foglamp.streams;

INSERT INTO foglamp.streams (id,destination_id,description, reading_id,ts ) VALUES (1,1,'OMF', 666,now());

INSERT INTO foglamp.destinations (id,description, ts ) VALUES (1,'OMF', now() );


### WRK ######################################################################################################:

SELECT * FROM foglamp.readings WHERE id >= 3374 ORDER by ID;

SELECT * FROM foglamp.readings WHERE id >= 3374 and reading ? 'temperature' ORDER by ID;

SELECT * FROM foglamp.readings WHERE id >= 3374 and reading ? 'x' ORDER by user_ts;


### OK ######################################################################################################:
# 4194

SELECT reading_id FROM foglamp.streams WHERE id=1;


SELECT * FROM foglamp.readings WHERE id >= 666 ORDER by ID;

SELECT * FROM foglamp.readings WHERE id >= 4194 ORDER by ID;

SELECT * FROM foglamp.readings WHERE id >= 4194 and reading ? 'temperature' ORDER by ID;

# TRUNCATE TABLE  foglamp.readings

SELECT COUNT(ID) FROM foglamp.readings WHERE id>= 4194;

SELECT MAX(ID) FROM foglamp.readings WHERE id >= 3374;
# 1721

UPDATE foglamp.streams SET reading_id=4203 WHERE id=1;



UPDATE foglamp.streams SET id=4203;


SELECT * FROM foglamp.omf_trans_position;



SELECT * FROM foglamp.log_codes;


### foglamp.omf_trans_position ######################################################################################################:




create table foglamp.omf_trans_position
(
	id bigint
);

TRUNCATE TABLE foglamp.omf_trans_position;

INSERT INTO foglamp.omf_trans_position (id) VALUES (666);





###  ######################################################################################################:

SELECT * FROM foglamp.sensor_values_t_new




-- Log Codes
DELETE FROM foglamp.log_codes;

-- The Cleaning Process
INSERT INTO foglamp.log_codes ( code, description )
     VALUES ( 'CLEAN', 'Cleaning Process' ),
      VALUES ( 'LOGGN', 'Logging Process' ),
     VALUES  ( 'SYPRG', 'Sytem Purge' );



###  ######################################################################################################:

SELECT * FROM sensor_values_t WHERE id >=4040513 ORDER BY id;


SELECT * FROM foglamp.sensor_values_t;


WHERE id >=4040513 ORDER BY id;

sensor_values_t

SELECT * FROM position;

### public ######################################################################################################:

INSERT INTO foglamp.sensor_values_t SELECT * FROM  public.sensor_values_t WHERE id >=3947;

SELECT * FROM foglamp.sensor_values_t

SELECT * FROM foglamp.sensor_values_t_new

# TRUNCATE TABLE  foglamp.sensor_values_t;

SELECT * FROM sensor_values_t WHERE id >=4040513 ORDER BY id;


SELECT * FROM public.sensor_values_t  WHERE id >=3914 ORDER BY id;

SELECT * FROM foglamp.readings;

SELECT * FROM public.readings;

SELECT * FROM postgres.readings;

SELECT * FROM public.sensor_values_t;

SELECT * FROM postgress.sensor_values_t

# TRUNCATE TABLE  public.sensor_values_t;



###  ######################################################################################################:

CREATE TABLE sensor_values_t_new_copy AS SELECT * FROM sensor_values_t_new;

SELECT * FROM foglamp.sensor_values_t_new_copy

CREATE TABLE sensor_values_t_new AS SELECT * FROM sensor_values_t;


CREATE TABLE copy_sensor_values_t AS SELECT * FROM sensor_values_t;

SELECT * FROM copy_sensor_values_t;

TRUNCATE TABLE sensor_values_t;

###  ######################################################################################################:

create table position
(
	id bigint
);

INSERT INTO position (
        id
    )
   VALUES (
       4040499
   );





###  ######################################################################################################:




INSERT INTO sensor_values_t (
        key
    )
   VALUES (
       '23699fdf-eb6f-44ac-bfd7-98c12b8b9cf1'
   );


INSERT INTO sensor_values_t (
        key,
        DATA
    )
   VALUES (
       '23699fdf-eb6f-44ac-bfd7-98c12b8b9cf1',
       '{timestamp: 2017-06-01T08:08:27.788Z, asset: wall clock}'
   );


INSERT INTO sensor_values_t (
        id,
        created,
        key
    )
   VALUES (
       3,
        now(),
       'TEST2'
   );


###  ######################################################################################################:

CREATE DATABASE foglamp3 OWNER foglamp;
-- DROP DATABASE foglamp3;

\connect foglamp3;

--
-- User creation ?
--

--
-- Sequences creation
--
CREATE SEQUENCE test_id_seq START 1;
--DROP SEQUENCE test_id_seq;

--
-- Tables creation
--

CREATE TABLE  config
    (
        id serial primary key not null,
        create_time timestamp(6) with time zone default now(),
        update_time timestamp(6) with time zone default now(),
        data jsonb
    );

CREATE TABLE asset_readings
    (
        id serial primary key not null,
        create_time timestamp(6) with time zone default now(),
        update_time timestamp(6) with time zone default now(),
        data jsonb
);


--
-- Load init values
--
INSERT INTO asset_readings (
        id,
        create_time,
        update_time,
        data
    )
   VALUES (
       2,
       NULL,
       NULL,
       NULL
   );

SELECT * FROM asset_readings;

