<!-- 10-Header -->    
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)    
Entity: Alert    
=============<!-- /10-Header -->    
<!-- 15-License -->    
[Open License](https://github.com/smart-data-models//dataModel.Alert/blob/master/Alert/LICENSE.md)    
[document generated automatically](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)    
<!-- /15-License -->    
<!-- 20-Description -->    
Global description: **An alert generated by a user or device in a given location**    
version: 0.0.3    
<!-- /20-Description -->    
<!-- 30-PropertiesList -->    
## List of properties    
<sup><sub>[*] If there is not a type in an attribute is because it could have several types or different formats/patterns</sub></sup>    
- `address[object]`: The mailing address  . Model: [https://schema.org/address](https://schema.org/address)	- `addressCountry[string]`: The country. For example, Spain  . Model: [https://schema.org/addressCountry](https://schema.org/addressCountry)    
	- `addressLocality[string]`: The locality in which the street address is, and which is in the region  . Model: [https://schema.org/addressLocality](https://schema.org/addressLocality)    
	- `addressRegion[string]`: The region in which the locality is, and which is in the country  . Model: [https://schema.org/addressRegion](https://schema.org/addressRegion)    
	- `district[string]`: A district is a type of administrative division that, in some countries, is managed by the local government      
	- `postOfficeBoxNumber[string]`: The post office box number for PO box addresses. For example, 03578  . Model: [https://schema.org/postOfficeBoxNumber](https://schema.org/postOfficeBoxNumber)    
	- `postalCode[string]`: The postal code. For example, 24004  . Model: [https://schema.org/https://schema.org/postalCode](https://schema.org/https://schema.org/postalCode)    
	- `streetAddress[string]`: The street address  . Model: [https://schema.org/streetAddress](https://schema.org/streetAddress)    
- `alertSource[*]`: Source of the alert  . Model: [http://schema.org/URL](http://schema.org/URL)- `alternateName[string]`: An alternative name for this item  - `areaServed[string]`: The geographic area where a service or offered item is provided  . Model: [https://schema.org/Text](https://schema.org/Text)- `category[string]`: Category of the Alert. Enum:'traffic, naturalDisaster, weather, environment, health, security, agriculture'  - `data[object]`: Payload containing the data retrieved  - `dataProvider[string]`: A sequence of characters identifying the provider of the harmonised data entity  - `dateCreated[date-time]`: Entity creation timestamp. This will usually be allocated by the storage platform  - `dateIssued[date-time]`: The date and time the item was issued in ISO8601 UTC format  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `dateModified[date-time]`: Timestamp of the last modification of the entity. This will usually be allocated by the storage platform  - `description[string]`: A description of this item  - `id[*]`: Unique identifier of the entity  - `location[*]`: Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon  - `name[string]`: The name of this item  - `owner[array]`: A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)  - `seeAlso[*]`: list of uri pointing to additional resources about the item  - `severity[string]`: Severity of the Alarm  - `source[string]`: A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object  - `subCategory[string]`: Describe the sub category of alert. Enum:'trafficJam, carAccident, carWrongDirection, carStopped, pothole, roadClosed, roadWorks, hazardOnRoad, injuredBiker, pedestrianOnRoad, bikerOnRoad, tramApproaching, flood, tsunami, coastalEvent, earthquake, rainfall, highTemperature, lowTemperature, heatWave, coldWave, ice, snow, wind, fog, tornado, tropicalCyclone, hurricane, snow/ice, thunderstorms, fireRisk, avalancheRisk, floodRisk, airPollution, waterPollution, pollenConcentration, asthmaAttack, bumpedPatient, fallenPatient, heartAttack, suspiciousAction, robbery, assault, civilDisorder, buildingFire, forestFire, noxiousWeed, snail, insect, rodent, bacteria, microbe, fungus,mite, virus, nematodes, irrigation, fertilisation  - `type[string]`: NGSI Entity type. It has to be Alert  - `validFrom[date-time]`: The start of the validity period for this forecast as a ISO8601 format  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `validTo[date-time]`: The end of the validity period for this forecast as a ISO8601 format  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)<!-- /30-PropertiesList -->    
<!-- 35-RequiredProperties -->    
Required properties    
- `alertSource`  - `category`  - `dateIssued`  - `id`  - `type`  <!-- /35-RequiredProperties -->    
<!-- 40-RequiredProperties -->    
This entity models an alert and could be used to send alerts related to traffic jam, accidents, weather conditions, high level of pollutants and so on. The purpose of the model is to support the generation of notifications for a user or trigger other actions, based on such alerts. An alert is generated by a specific situation. The main features of an alert is that it is not predictable and it is not a recurrent data. That means that an alert could be an accident or a high level of pollutants measure, additionally it could be the fall down of a patient or a car driving in the opposite direction.  Some examples of context data are; type of alert (traffic, weather, security, and pollution, etc.), severity, location and so on.    
<!-- /40-RequiredProperties -->    
<!-- 50-DataModelHeader -->    
## Data Model description of properties    
Sorted alphabetically (click for details)    
<!-- /50-DataModelHeader -->    
<!-- 60-ModelYaml -->    
<details><summary><strong>full yaml details</strong></summary>      
```yaml    
Alert:      
  description: An alert generated by a user or device in a given location      
  properties:      
    address:      
      description: The mailing address      
      properties:      
        addressCountry:      
          description: 'The country. For example, Spain'      
          type: string      
          x-ngsi:      
            model: https://schema.org/addressCountry      
            type: Property      
        addressLocality:      
          description: 'The locality in which the street address is, and which is in the region'      
          type: string      
          x-ngsi:      
            model: https://schema.org/addressLocality      
            type: Property      
        addressRegion:      
          description: 'The region in which the locality is, and which is in the country'      
          type: string      
          x-ngsi:      
            model: https://schema.org/addressRegion      
            type: Property      
        district:      
          description: 'A district is a type of administrative division that, in some countries, is managed by the local government'      
          type: string      
          x-ngsi:      
            type: Property      
        postOfficeBoxNumber:      
          description: 'The post office box number for PO box addresses. For example, 03578'      
          type: string      
          x-ngsi:      
            model: https://schema.org/postOfficeBoxNumber      
            type: Property      
        postalCode:      
          description: 'The postal code. For example, 24004'      
          type: string      
          x-ngsi:      
            model: https://schema.org/https://schema.org/postalCode      
            type: Property      
        streetAddress:      
          description: The street address      
          type: string      
          x-ngsi:      
            model: https://schema.org/streetAddress      
            type: Property      
        streetNr:      
          description: Number identifying a specific property on a public street      
          type: string      
          x-ngsi:      
            type: Property      
      type: object      
      x-ngsi:      
        model: https://schema.org/address      
        type: Property      
    alertSource:      
      anyOf:      
        - description: Identifier format of any NGSI entity      
          maxLength: 256      
          minLength: 1      
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$      
          type: string      
          x-ngsi:      
            type: Property      
        - description: Identifier format of any NGSI entity      
          format: uri      
          type: string      
          x-ngsi:      
            type: Property      
      description: Source of the alert      
      x-ngsi:      
        model: http://schema.org/URL      
        type: Relationship      
    alternateName:      
      description: An alternative name for this item      
      type: string      
      x-ngsi:      
        type: Property      
    areaServed:      
      description: The geographic area where a service or offered item is provided      
      type: string      
      x-ngsi:      
        model: https://schema.org/Text      
        type: Property      
    category:      
      description: 'Category of the Alert. Enum:''traffic, naturalDisaster, weather, environment, health, security, agriculture'''      
      enum:      
        - traffic      
        - naturalDisaster      
        - weather      
        - environment      
        - health      
        - security      
        - agriculture      
      type: string      
      x-ngsi:      
        type: Property      
    data:      
      description: Payload containing the data retrieved      
      type: object      
      x-ngsi:      
        type: Property      
    dataProvider:      
      description: A sequence of characters identifying the provider of the harmonised data entity      
      type: string      
      x-ngsi:      
        type: Property      
    dateCreated:      
      description: Entity creation timestamp. This will usually be allocated by the storage platform      
      format: date-time      
      type: string      
      x-ngsi:      
        type: Property      
    dateIssued:      
      description: The date and time the item was issued in ISO8601 UTC format      
      format: date-time      
      type: string      
      x-ngsi:      
        model: https://schema.org/DateTime      
        type: Property      
    dateModified:      
      description: Timestamp of the last modification of the entity. This will usually be allocated by the storage platform      
      format: date-time      
      type: string      
      x-ngsi:      
        type: Property      
    description:      
      description: A description of this item      
      type: string      
      x-ngsi:      
        type: Property      
    id:      
      anyOf:      
        - description: Identifier format of any NGSI entity      
          maxLength: 256      
          minLength: 1      
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$      
          type: string      
          x-ngsi:      
            type: Property      
        - description: Identifier format of any NGSI entity      
          format: uri      
          type: string      
          x-ngsi:      
            type: Property      
      description: Unique identifier of the entity      
      x-ngsi:      
        type: Property      
    location:      
      description: 'Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon'      
      oneOf:      
        - description: Geojson reference to the item. Point      
          properties:      
            bbox:      
              items:      
                type: number      
              minItems: 4      
              type: array      
            coordinates:      
              items:      
                type: number      
              minItems: 2      
              type: array      
            type:      
              enum:      
                - Point      
              type: string      
          required:      
            - type      
            - coordinates      
          title: GeoJSON Point      
          type: object      
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. LineString      
          properties:      
            bbox:      
              items:      
                type: number      
              minItems: 4      
              type: array      
            coordinates:      
              items:      
                items:      
                  type: number      
                minItems: 2      
                type: array      
              minItems: 2      
              type: array      
            type:      
              enum:      
                - LineString      
              type: string      
          required:      
            - type      
            - coordinates      
          title: GeoJSON LineString      
          type: object      
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. Polygon      
          properties:      
            bbox:      
              items:      
                type: number      
              minItems: 4      
              type: array      
            coordinates:      
              items:      
                items:      
                  items:      
                    type: number      
                  minItems: 2      
                  type: array      
                minItems: 4      
                type: array      
              type: array      
            type:      
              enum:      
                - Polygon      
              type: string      
          required:      
            - type      
            - coordinates      
          title: GeoJSON Polygon      
          type: object      
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. MultiPoint      
          properties:      
            bbox:      
              items:      
                type: number      
              minItems: 4      
              type: array      
            coordinates:      
              items:      
                items:      
                  type: number      
                minItems: 2      
                type: array      
              type: array      
            type:      
              enum:      
                - MultiPoint      
              type: string      
          required:      
            - type      
            - coordinates      
          title: GeoJSON MultiPoint      
          type: object      
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. MultiLineString      
          properties:      
            bbox:      
              items:      
                type: number      
              minItems: 4      
              type: array      
            coordinates:      
              items:      
                items:      
                  items:      
                    type: number      
                  minItems: 2      
                  type: array      
                minItems: 2      
                type: array      
              type: array      
            type:      
              enum:      
                - MultiLineString      
              type: string      
          required:      
            - type      
            - coordinates      
          title: GeoJSON MultiLineString      
          type: object      
          x-ngsi:      
            type: GeoProperty      
        - description: Geojson reference to the item. MultiLineString      
          properties:      
            bbox:      
              items:      
                type: number      
              minItems: 4      
              type: array      
            coordinates:      
              items:      
                items:      
                  items:      
                    items:      
                      type: number      
                    minItems: 2      
                    type: array      
                  minItems: 4      
                  type: array      
                type: array      
              type: array      
            type:      
              enum:      
                - MultiPolygon      
              type: string      
          required:      
            - type      
            - coordinates      
          title: GeoJSON MultiPolygon      
          type: object      
          x-ngsi:      
            type: GeoProperty      
      x-ngsi:      
        type: GeoProperty      
    name:      
      description: The name of this item      
      type: string      
      x-ngsi:      
        type: Property      
    owner:      
      description: A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)      
      items:      
        anyOf:      
          - description: Identifier format of any NGSI entity      
            maxLength: 256      
            minLength: 1      
            pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$      
            type: string      
            x-ngsi:      
              type: Property      
          - description: Identifier format of any NGSI entity      
            format: uri      
            type: string      
            x-ngsi:      
              type: Property      
        description: Unique identifier of the entity      
        x-ngsi:      
          type: Property      
      type: array      
      x-ngsi:      
        type: Property      
    seeAlso:      
      description: list of uri pointing to additional resources about the item      
      oneOf:      
        - items:      
            format: uri      
            type: string      
          minItems: 1      
          type: array      
        - format: uri      
          type: string      
      x-ngsi:      
        type: Property      
    severity:      
      description: Severity of the Alarm      
      enum:      
        - informational      
        - low      
        - medium      
        - high      
        - critical      
      type: string      
      x-ngsi:      
        type: Property      
    source:      
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object'      
      type: string      
      x-ngsi:      
        type: Property      
    subCategory:      
      anyOf:      
        - enum:      
            - airPollution      
            - assault      
            - asthmaAttack      
            - avalancheRisk      
            - bacteria      
            - badSeaState      
            - bikerOnRoad      
            - buildingFire      
            - bumpedPatient      
            - carAccident      
            - carStopped      
            - carWrongDirection      
            - coastalEvent      
            - civilDisorder      
            - coldWave      
            - crowdRisk      
            - earthquake      
            - fallenPatient      
            - fertilisation      
            - fireRisk      
            - flood      
            - floodRisk      
            - fog      
            - forestFire      
            - fungus      
            - hazardOnRoad      
            - heartAttack      
            - heatWave      
            - highAtmosphericPressure      
            - highHumidity      
            - highTemperature      
            - hurricane      
            - ice      
            - injuredBiker      
            - insect      
            - irrigation      
            - lowAtmosphericPressure      
            - lowHumidity      
            - lowTemperature      
            - microbe      
            - mite      
            - nematodes      
            - noxiousWeed      
            - pedestrianOnRoad      
            - pollenConcentration      
            - pothole      
            - rainfall      
            - roadClosed      
            - roadWorks      
            - robbery      
            - rodent      
            - snail      
            - snow      
            - snow/ice      
            - suspiciousAction      
            - thunderstorms      
            - tornado      
            - trafficJam      
            - tramApproaching      
            - tropicalCyclone      
            - tsunami      
            - virus      
            - waterPollution      
            - wind      
        - description: 'Weather categories. Enum:'' avalanches,coastalEvent, coldWave, flood, fog, forestFire, heatWave, highTemperature, hurricane, ice, lowTemperature, rainfall, rain_flood, snow, snow_ice, thunderstorms, tornado, tropicalCyclone, tsunami, wind'''      
          enum:      
            - avalanches      
            - coastalEvent      
            - coldWave      
            - flood      
            - fog      
            - forestFire      
            - heatWave      
            - highTemperature      
            - hurricane      
            - ice      
            - lowTemperature      
            - rainfall      
            - rain_flood      
            - snow      
            - snow_ice      
            - thunderstorms      
            - tornado      
            - tropicalCyclone      
            - tsunami      
            - wind      
          type: string      
          x-ngsi:      
            type: Property      
      description: 'Describe the sub category of alert. Enum:''trafficJam, carAccident, carWrongDirection, carStopped, pothole, roadClosed, roadWorks, hazardOnRoad, injuredBiker, pedestrianOnRoad, bikerOnRoad, tramApproaching, flood, tsunami, coastalEvent, earthquake, rainfall, highTemperature, lowTemperature, heatWave, coldWave, ice, snow, wind, fog, tornado, tropicalCyclone, hurricane, snow/ice, thunderstorms, fireRisk, avalancheRisk, floodRisk, airPollution, waterPollution, pollenConcentration, asthmaAttack, bumpedPatient, fallenPatient, heartAttack, suspiciousAction, robbery, assault, civilDisorder, buildingFire, forestFire, noxiousWeed, snail, insect, rodent, bacteria, microbe, fungus,mite, virus, nematodes, irrigation, fertilisation'      
      type: string      
      x-ngsi:      
        type: Property      
    type:      
      description: NGSI Entity type. It has to be Alert      
      enum:      
        - Alert      
      type: string      
      x-ngsi:      
        type: Property      
    validFrom:      
      description: The start of the validity period for this forecast as a ISO8601 format      
      format: date-time      
      type: string      
      x-ngsi:      
        model: https://schema.org/DateTime      
        type: Property      
    validTo:      
      description: The end of the validity period for this forecast as a ISO8601 format      
      format: date-time      
      type: string      
      x-ngsi:      
        model: https://schema.org/DateTime      
        type: Property      
  required:      
    - id      
    - type      
    - alertSource      
    - category      
    - dateIssued      
  type: object      
  x-derived-from: ""      
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2022 Contributors to Smart Data Models Program'      
  x-license-url: https://github.com/smart-data-models/dataModel.Alert/blob/master/Alert/LICENSE.md      
  x-model-schema: https://smart-data-models.github.io/dataModel.Alert/alert/schema.json      
  x-model-tags: ""      
  x-version: 0.0.3      
```    
</details>      
<!-- /60-ModelYaml -->    
<!-- 70-MiddleNotes -->    
<!-- /70-MiddleNotes -->    
<!-- 80-Examples -->    
## Example payloads      
#### Alert NGSI-v2 key-values Example      
Here is an example of a Alert in JSON-LD format as key-values. This is compatible with NGSI-v2 when  using `options=keyValues` and returns the context data of an individual entity.    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
  "id": "Alert:1",  
  "type": "Alert",  
  "category": "traffic",  
  "subCategory": "trafficJam",  
  "severity": "high",  
  "location": {  
    "type": "Point",  
    "coordinates": [  
      -3.712247222222222,  
      40.423852777777775  
    ]  
  },  
  "dateIssued": "2017-01-02T09:25:55.00Z",  
  "validFrom": "2017-01-02T09:25:55.00Z",  
  "validTo": "2017-01-02T10:25:55.00Z",  
  "description": "The road is completely blocked for 3kms",  
  "alertSource": "https://account.lab.fiware.org/users/8"  
}  
```  
</details>    
#### Alert NGSI-v2 normalized Example      
Here is an example of a Alert in JSON-LD format as normalized. This is compatible with NGSI-v2 when not using options and returns the context data of an individual entity.    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
  "id": "Alert:1",  
  "type": "Alert",  
  "dateCreated": {  
    "type": "DateTime",  
    "value": "2019-06-06T12:06:06"  
  },  
  "dateModified": {  
    "type": "DateTime",  
    "value": "2019-06-07T12:07:06"  
  },  
  "category": {  
    "type": "Text",  
    "value": "traffic"  
  },  
  "subCategory": {  
    "type": "Text",  
    "value": "trafficJam"  
  },  
  "validTo": {  
    "type": "DateTime",  
    "value": "2017-01-02T10:25:55.00Z"  
  },  
  "description": {  
    "type": "Text",  
    "value": "The road is completely blocked for 3kms"  
  },  
  "location": {  
    "type": "geo:json",  
    "value": {  
      "type": "Point",  
      "coordinates": [  
        -3.712247222222222,  
        40.423852777777775  
      ]  
    }  
  },  
  "dateIssued": {  
    "type": "DateTime",  
    "value": "2017-01-02T09:25:55.00Z"  
  },  
  "alertSource": {  
    "type": "Text",  
    "value": "https://account.lab.fiware.org/users/8"  
  },  
  "validFrom": {  
    "type": "DateTime",  
    "value": "2017-01-02T09:25:55.00Z"  
  },  
  "severity": {  
    "type": "Text",  
    "value": "high"  
  }  
}  
```  
</details>    
#### Alert NGSI-LD key-values Example      
Here is an example of a Alert in JSON-LD format as key-values. This is compatible with NGSI-LD when  using `options=keyValues` and returns the context data of an individual entity.    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
  "id": "urn:ngsi-ld:Alert:Alert:1",  
  "type": "Alert",  
  "alertSource": "https://account.lab.fiware.org/users/8",  
  "category": "traffic",  
  "createdAt": "2019-06-06T12:06:06",  
  "dateIssued": "2017-01-02T09:25:55.00Z",  
  "description": "The road is completely blocked for 3kms",  
  "location": {  
    "coordinates": [  
      -3.712247222222222,  
      40.423852777777775  
    ],  
    "type": "Point"  
  },  
  "modifiedAt": "2019-06-07T12:07:06",  
  "severity": "high",  
  "subCategory": "trafficJam",  
  "validFrom": "2017-01-02T09:25:55.00Z",  
  "validTo": "2017-01-02T10:25:55.00Z",  
  "@context": [  
    "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
    "https://raw.githubusercontent.com/smart-data-models/dataModel.Alert/master/context.jsonld"  
  ]  
}  
```  
</details>    
#### Alert NGSI-LD normalized Example      
Here is an example of a Alert in JSON-LD format as normalized. This is compatible with NGSI-LD when not using options and returns the context data of an individual entity.    
<details><summary><strong>show/hide example</strong></summary>      
```json  
{  
    "id": "urn:ngsi-ld:Alert:Alert:1",  
    "type": "Alert",  
    "alertSource": {  
        "type": "Property",  
        "value": "https://account.lab.fiware.org/users/8"  
    },  
    "category": {  
        "type": "Property",  
        "value": "traffic"  
    },  
    "createdAt": "2019-06-06T12:06:06",  
    "dateIssued": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2017-01-02T09:25:55.00Z"  
        }  
    },  
    "description": {  
        "type": "Property",  
        "value": "The road is completely blocked for 3kms"  
    },  
    "location": {  
        "type": "GeoProperty",  
        "value": {  
            "type": "Point",  
            "coordinates": [  
                -3.712247222222222,  
                40.423852777777775  
            ]  
        }  
    },  
    "modifiedAt": "2019-06-07T12:07:06",  
    "severity": {  
        "type": "Property",  
        "value": "high"  
    },  
    "subCategory": {  
        "type": "Property",  
        "value": "trafficJam"  
    },  
    "validFrom": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2017-01-02T09:25:55.00Z"  
        }  
    },  
    "validTo": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2017-01-02T10:25:55.00Z"  
        }  
    },  
    "@context": [  
        "https://uri.etsi.org/ngsi-ld/v1/ngsi-ld-core-context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.Alert/master/context.jsonld"  
    ]  
}  
```  
</details><!-- /80-Examples -->    
<!-- 90-FooterNotes -->    
<!-- /90-FooterNotes -->    
<!-- 95-Units -->    
See [FAQ 10](https://smartdatamodels.org/index.php/faqs/) to get an answer on how to deal with magnitude units    
<!-- /95-Units -->    
<!-- 97-LastFooter -->    
---    
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->    
