CREATE TABLE sensoren
(
sensor INT PRYMARY KEY
stationen.station INT PRYMARY KEY
sensortypen.sensortypen INT PRYMARY KEY
)
FOREIGN KEY (stationen.station)
REFERENCES stationen(station)
FOREIGN KEY (sensortypen.sensortypen)
REFERENCES sensortypen(sensortypen)
CREATE TABLE stationen
(
station INT PRYMARY KEY
name VARCHAR(45)
ort VARCHAR(45)
)
CREATE TABLE sensortypen
(
sensortypen INT PRYMARY KEY
sensortyp VARCHAR(100)
)
CREATE TABLE messwerte
(
messwert INT PRYMARY KEY
sensoren.sensor INT PRYMARY KEY
timecode DATETIME
wert INT
)
FOREIGN KEY (sensoren.sensor)
REFERENCES sensoren(sensor)
CREATE TABLE labels
(
label INT PRYMARY KEY
label_text VARCHAR(200)
datum_start DATETIME
dauer INT
sensoren.sensor INT PRYMARY KEY
)
FOREIGN KEY (sensoren.sensor)
REFERENCES sensoren(sensor)
