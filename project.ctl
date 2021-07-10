load data 
infile 'project.csv' "str '\r\n'"
append
into table JL_TP_STAGE
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( TRAIN_DATE CHAR(26),
             TRIP_ID,
             TRAIN_ID,
             STOP_SEQUENCE,
             ORIGION_NAME CHAR(200),
             ORIGION_ID,
             DESTINATION_NAME CHAR(200),
             DESTINATION_ID,
             SCHEDULE_ID,
             SCHEDULED_TIME DATE,
             ARRIVAL_ID,
             ACTUAL_TIME DATE,
             STATUS_ID,
             DELAY_MIN,
             STATUS CHAR(26),
             LINE_ID,
             LINE_NAME CHAR(200),
             TYPE_NAME CHAR(200),
             TYPE_ID
           )
