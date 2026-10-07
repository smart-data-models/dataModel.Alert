/* (Beta) Export of data model Alert of the subject dataModel.Alert for a PostgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE Alert_category_type AS ENUM ('traffic', 'naturalDisaster', 'weather', 'environment', 'health', 'security', 'agriculture');
CREATE TYPE Alert_severity_type AS ENUM ('informational', 'low', 'medium', 'high', 'critical');
CREATE TYPE Alert_type AS ENUM ('Alert');
CREATE TABLE Alert (
  "address" JSON,
  "alertSource" JSON,
  "alternateName" TEXT,
  "areaServed" TEXT,
  "category" Alert_category_type,
  "data" JSON,
  "dataProvider" TEXT,
  "dateCreated" TIMESTAMP,
  "dateIssued" TIMESTAMP,
  "dateModified" TIMESTAMP,
  "description" TEXT,
  "id" TEXT PRIMARY KEY,
  "location" JSON,
  "name" TEXT,
  "owner" JSON,
  "seeAlso" JSON,
  "severity" Alert_severity_type,
  "source" TEXT,
  "subCategory" TEXT,
  "type" Alert_type,
  "validFrom" TIMESTAMP,
  "validTo" TIMESTAMP
);