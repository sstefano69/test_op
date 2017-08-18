### Sending ######################################################################################################:

SELECT * FROM foglamp.destinations;

SELECT * FROM foglamp.streams;


### perfroamnce ######################################################################################################:

SELECT * FROM  foglamp.streams;

SELECT *  FROM foglamp.readings WHERE id >= 0;

UPDATE foglamp.streams SET last_object=0, ts=now() WHERE id=1;

DELETE FROM foglamp.configuration WHERE key='OMF_TRANS ';


### Setup ######################################################################################################:
# Scheduler
DELETE FROM foglamp.schedules WHERE process_name='purge';

# DELETE FROM foglamp.schedules WHERE process_name='statistics to pi';


# Configuration
DELETE FROM foglamp.configuration WHERE key='STAT_PI';

# Configuration
DELETE FROM foglamp.configuration WHERE key='OMF_TRANS ';

# Disable compression


#
# RUN
#
SELECT * FROM foglamp.schedules;

SELECT * FROM foglamp.configuration;

SELECT *  FROM foglamp.readings WHERE id >= 0;

SELECT DISTINCT id FROM foglamp.statistics_history ORDER BY id;

SELECT * FROM foglamp.statistics_history ORDER BY id;

SELECT max(id)FROM foglamp.statistics_history;


UPDATE foglamp.statistics_history SET id=10 WHERE id IS NULL;

SELECT * FROM foglamp.statistics_history WHERE key='SENT';

SELECT * FROM foglamp.statistics_history WHERE key='READINGS';

SELECT count(id)  FROM foglamp.readings;

SELECT max(id)  FROM foglamp.readings;


###  ######################################################################################################:

SELECT * FROM  foglamp.streams;

SELECT * FROM foglamp.statistics_history;

SELECT * FROM foglamp.statistics_history WHERE id is NULL;





#
#
#

UPDATE foglamp.streams SET last_object=0, ts=now() WHERE id=2;




SELECT * FROM foglamp.configuration;




SELECT tb.key,tb.value FROM foglamp.statistics tb;

SELECT * FROM foglamp.statistics_history;



INSERT INTO foglamp.streams (id,destination_id,description, last_object,ts ) VALUES (2,1,'FogLAMP statistics into PI', 0,now());

ALTER TABLE foglamp.statistics_history ADD id bigint;

UPDATE foglamp.statistics_history SET id=1;



DELETE FROM foglamp.streams  WHERE id=2;




### Insert ######################################################################################################:

UPDATE foglamp.streams SET last_object=0, ts=now() WHERE id=1;




SELECT COUNT(id)  FROM foglamp.readings;
# 3203

SELECT * FROM foglamp.configuration;

SELECT tb.id,tb.description,tb.last_object FROM foglamp.streams tb;
# 10854

SELECT * FROM foglamp.statistics;
# 4691 - 5783 - 1092 = 6* sec

SELECT *  FROM foglamp.readings WHERE id >= 0;

SELECT * FROM foglamp.scheduled_processes;

SELECT * FROM foglamp.schedules;

### SHORT SQL ######################################################################################################:

\set myvar 5
SELECT :myvar  + 1 AS my_var_plus_1;
SELECT :myvar;
SELECT *  FROM foglamp.statistics_history WHERE id = :myvar;

with start_id as ( SELECT id as start_id FROM foglamp.statistics_history WHERE id = 5 )
select *
from foglamp.statistics_history
    cross join
    start_id
where id = start_id;


with start_date as (
    select date_trunc('month', current_date) as start_date
)
select *
from
    t
    cross join
    start_date
where create_time >= start_dat


SELECT id FROM foglamp.statistics_history WHERE id = 5;

select 5::int as var into temp table myvar;

SELECT tb.last_object INTO v3 FROM foglamp.streams tb WHERE id=2;

SELECT current_setting('v3');

SELECT current_setting('mycustom.var');

SHOW v3;

 select set_config('a.b', 'c', false);

\set myvariable 'test'

SELECT * FROM :myvariable;

INSERT INTO :myvariable SELECT tb.last_object FROM foglamp.streams tb WHERE id=2;


UPDATE foglamp.statistics_history SET id=:v2 WHERE id IS NULL;


SELECT v2;

SELECT tb.id,tb.description,tb.last_object FROM foglamp.streams tb;
# 10854


### Per ######################################################################################################:

UPDATE foglamp.streams SET last_object=0, ts=now() WHERE id=1;

# Configuration
DELETE FROM foglamp.configuration WHERE key='OMF_TRANS ';

SELECT * FROM foglamp.statistics_history;

### Test ######################################################################################################:

UPDATE foglamp.streams SET last_object=0, ts=now() WHERE id=1;


DELETE FROM foglamp.schedules WHERE process_name='purge';

# Configuration
DELETE FROM foglamp.configuration WHERE key='OMF_TRANS ';

SELECT max(id)  FROM foglamp.readings;

SELECT COUNT(id)  FROM foglamp.readings;
# 3203

SELECT * FROM foglamp.configuration;

SELECT * FROM foglamp.streams;
# 10854

SELECT * FROM foglamp.statistics;
# 4691 - 5783 - 1092 = 6* sec

SELECT *  FROM foglamp.readings WHERE id >= 0;

SELECT *  FROM foglamp.readings WHERE id >= 7130;


###  ######################################################################################################:

UPDATE foglamp.streams SET last_object=0, ts=now() WHERE id=1;

DELETE FROM foglamp.configuration WHERE key='OMF_TRANS ';

SELECT *  FROM foglamp.readings WHERE id >=  0;


SELECT * FROM foglamp.readings WHERE id > 0 and id <= 0+50 and asset_code like '%gyrosc%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 0 and id <= 0+50 and asset_code  like '%mag%' ORDER by USER_ts;



SELECT * FROM foglamp.readings WHERE id > 0 and id <= 0+50 and asset_code  like '%pre%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 0 and id <= 0+50 and asset_code  like '%hum%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 0 and id <= 0+50 and asset_code  like '%lux%' ORDER by USER_ts;


### Compression ######################################################################################################:


SELECT * FROM foglamp.streams;
# 1464

SELECT * FROM foglamp.statistics;

SELECT MAX(id) FROM foglamp.readings WHERE id >= 294;

SELECT *  FROM foglamp.readings WHERE id > 294;


UPDATE foglamp.streams SET last_object=1, ts=now() WHERE id=1;

SELECT DISTINCT asset_code FROM foglamp.readings WHERE id > 1218;


SELECT * FROM foglamp.readings WHERE id > 294 and id <= 344+50 and asset_code like '%gyrosc%' ORDER by USER_ts;

###  ######################################################################################################:


DELETE FROM foglamp.configuration WHERE key='OMF_TRANS ';


### Extract ######################################################################################################:

SELECT max(id)  FROM foglamp.readings;

SELECT count(id)  FROM foglamp.readings  WHERE id >= 3632;


SELECT * FROM foglamp.streams;

SELECT *  FROM foglamp.readings WHERE id >= 3632;

SELECT COUNT(*)  FROM foglamp.readings;
# 3203

### Error handling ######################################################################################################:

SELECT * FROM foglamp.statistics;

SELECT * FROM foglamp.streams;
# 10854

SELECT *  FROM foglamp.readings WHERE id >= 3632;

UPDATE foglamp.streams SET last_object=482, ts=now() WHERE id=1;

SELECT *  FROM foglamp.readings;



### Purge ######################################################################################################:


SELECT min(last_object) FROM foglamp.streams WHERE active=true;


#
#
#

SELECT min(last_object) FROM foglamp.streams;

SELECT *  FROM foglamp.readings WHERE id < 294;


SELECT last_object FROM foglamp.streams WHERE id=1;

SELECT *  FROM foglamp.readings WHERE id > 294;


SELECT * FROM foglamp.streams;

SELECT * FROM foglamp.streams WHERE id=1;

SELECT MAX(last_object) FROM foglamp.streams;

SELECT *  FROM foglamp.readings WHERE id > 294;


SELECT *  FROM foglamp.readings WHERE id > 1;


DELETE FROM foglamp.readings WHERE id < 10;


###  ######################################################################################################:

SELECT MAX(id) INTO max_id   FROM foglamp.readings;

SELECT :max_id;

SELECT MAX(id) FROM foglamp.readings WHERE id >= 1554;

SELECT *  FROM foglamp.readings WHERE id > 4;


### configuration ######################################################################################################:

SELECT * FROM foglamp.configuration;


DELETE FROM foglamp.configuration WHERE key='OMF_TRANS ';

### OMF  ######################################################################################################:

SELECT * FROM foglamp.destinations;

SELECT * FROM foglamp.streams;

### schedules ######################################################################################################:

SELECT * FROM foglamp.scheduled_processes;

SELECT * FROM foglamp.schedules;

DELETE FROM foglamp.scheduled_processes WHERE name='purge';

DELETE FROM foglamp.schedules WHERE process_name='purge';

### statistics ######################################################################################################:

SELECT * FROM foglamp.statistics;

SELECT * FROM foglamp.statistics_history;

###  ######################################################################################################:

UPDATE foglamp.streams SET last_object=23980, ts=now() WHERE id=1;

SELECT * FROM foglamp.streams;

SELECT * FROM foglamp.readings WHERE id > 23980 ORDER by id;

### keys ######################################################################################################:

SELECT DISTINCT asset_code FROM foglamp.readings WHERE id > 19645;


SELECT * FROM foglamp.readings WHERE id > 19645 and asset_code like '%keys%' ORDER by USER_ts;
# 23982

UPDATE foglamp.streams SET last_object=23980, ts=now() WHERE id=1;

SELECT * FROM foglamp.readings WHERE id > 23980 ORDER by id;

# Specific measurement
SELECT * FROM foglamp.readings WHERE id > 23980 and id <= 23980+50 and asset_code like '%keys%' ORDER by USER_ts;


### clock ######################################################################################################:

SELECT DISTINCT asset_code FROM foglamp.readings WHERE id > 19645;

SELECT * FROM foglamp.readings WHERE id > 24002 ORDER by id;

SELECT * FROM foglamp.readings WHERE id > 24002 and asset_code like '%mouse%' ORDER by USER_ts;

SELECT * FROM foglamp.readings WHERE id > 1 and asset_code like '%acc%' ORDER by USER_ts;
# 23982

