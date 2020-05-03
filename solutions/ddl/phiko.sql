CREATE TABLE sensortypen(
sensortypen_pk INTEGER PRIMARY KEY,
sensortyp VARCHAR(100)
);

CREATE TABLE stationen(
station_pk INTEGER PRIMARY KEY,
name VARCHAR(45),
ort VARCHAR(45)
);

CREATE TABLE sensoren(
sensor_pk INTEGER PRIMARY KEY,
station_pk INTEGER,
sensortypenn_pk INTEGER,
FOREIGN KEY(station_pk) REFERENCES stationen(station_pk)
FOREIGN KEY(sensortypenn_pk) REFERENCES sensortypen(sensortypen_pk)
);

CREATE TABLE messwerte(
messwert_pk INTEGER PRIMARY KEY,
sensor_pk INTEGER,
timecode DATETIME,
wert INTEGER
FOREIGN KEY(sensor_pk) REFERENCES sensoren(sensor_pk)
);

CREATE TABLE labels(
label_pk INTEGER PRIMARY KEY,
label_text VARCHAR(200),
datum_start DATETIME,
dauer INTEGER,
sensor_pk INTEGER
FOREIGN KEY(sensor_pk) REFERENCES sensoren(sensor_pk)
);

-- ..................................................
--PS: Sehr cool 黚rigens, dass sie immer wieder einen Weg finden das "pk" mit einzubauen!
-- Daumen hoch daf黵 ;)
