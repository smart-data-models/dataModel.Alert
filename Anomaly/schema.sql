/* (Beta) Export of data model Anomaly of the subject dataModel.Alert for a PostgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE Anomaly_type AS ENUM ('Anomaly');
CREATE TABLE Anomaly (address JSON, alternateName TEXT, anomalousProperty TEXT, areaServed TEXT, dataProvider TEXT, dateCreated TIMESTAMP, dateDetected TEXT, dateModified TIMESTAMP, description TEXT, detectedBy TEXT, id TEXT PRIMARY KEY, location JSON, name TEXT, owner JSON, seeAlso JSON, source TEXT, thresholdBreach JSON, type Anomaly_type);