<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entität: Alert  
==============<!-- /10-Header -->  
<!-- 15-License -->  
[Offene Lizenz](https://github.com/smart-data-models//dataModel.Alert/blob/master/Alert/LICENSE.md)  
[Dokument automatisch generiert](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Globale Beschreibung: **Ein Alarm, der von einem Benutzer oder Gerät an einem bestimmten Ort erzeugt wird**  
Version: 0.0.3  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## Liste der Eigenschaften  

<sup><sub>[*] Wenn es für ein Attribut keinen Typ gibt, liegt das daran, dass es mehrere Typen oder unterschiedliche Formate/Muster haben kann</sub></sup>.  
- `address[object]`: Die Postanschrift  . Model: [https://schema.org/address](https://schema.org/address)- `alertSource[*]`: Quelle der Ausschreibung  . Model: [http://schema.org/URL.](http://schema.org/URL.)- `alternateName[string]`: Ein alternativer Name für diesen Artikel  - `areaServed[string]`: Das geografische Gebiet, in dem eine Dienstleistung oder ein angebotener Artikel erbracht wird  . Model: [https://schema.org/Text](https://schema.org/Text)- `category[string]`: Kategorie der Warnung. Enum:'traffic, naturalDisaster, weather, environment, health, security, agriculture'  - `data[object]`: Nutzdaten, die die abgerufenen Daten enthalten.  - `dataProvider[string]`: Eine Folge von Zeichen zur Identifizierung des Anbieters der harmonisierten Dateneinheit.  - `dateCreated[string]`: Zeitstempel der Entitätserstellung. Dieser wird in der Regel von der Speicherplattform zugewiesen.  - `dateIssued[string]`: Das Datum und die Uhrzeit, zu der der Artikel ausgestellt wurde, im Format ISO8601 UTC.  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `dateModified[string]`: Zeitstempel der letzten Änderung der Entität. Dieser wird in der Regel von der Speicherplattform vergeben.  - `description[string]`: Eine Beschreibung dieses Artikels  - `id[*]`: Eindeutiger Bezeichner der Entität  - `location[*]`: Geojson-Referenz auf das Element. Es kann Punkt, LineString, Polygon, MultiPoint, MultiLineString oder MultiPolygon sein  - `name[string]`: Der Name dieses Artikels.  - `owner[array]`: Eine Liste mit einer JSON-kodierten Zeichenfolge, die auf die eindeutigen Kennungen der Eigentümer verweist  - `seeAlso[*]`: Liste von URLs, die auf zusätzliche Ressourcen zu dem Artikel verweisen  - `severity[string]`: Schwere des Alarms  - `source[string]`: Eine Folge von Zeichen, die die ursprüngliche Quelle der Entitätsdaten als URL angibt. Es wird empfohlen, den voll qualifizierten Domänennamen des Quellanbieters oder die URL des Quellobjekts zu verwenden.  - `subCategory[string]`: Beschreiben Sie die Unterkategorie der Ausschreibung. Enum:'trafficJam, carAccident, carWrongDirection, carStopped, pothole, roadClosed, roadWorks, hazardOnRoad, injuredBiker, pedestrianOnRoad, bikerOnRoad, tramApproaching, flood, Tsunami, Küstenereignis, Erdbeben, Niederschlag, hoheTemperatur, niedrigeTemperatur, Hitzewelle, Kältewelle, Eis, Schnee, Wind, Nebel, Tornado, tropischer Wirbelsturm, Hurrikan, Schnee/Eis, Gewitter, Brandgefahr, Lawinengefahr, Überschwemmungsgefahr, Luftverschmutzung, Wasserverschmutzung, Pollenkonzentration, Asthmaanfall, gestoßener Patient, gestürzter Patient, Herzanfall, verdächtige Handlung, Raub, Überfall, Unruhen, Gebäudebrand, Waldbrand, Unkraut, Schnecke, Insekt, Nagetier, Bakterium, Mikrobe, Pilz, Milbe, Virus, Nematoden, Bewässerung, Düngung  - `type[string]`: NGSI-Entitätstyp. Es muss Alert sein.  - `validFrom[string]`: Beginn des Gültigkeitszeitraums dieser Prognose im ISO8601-Format  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `validTo[string]`: Das Ende des Gültigkeitszeitraums dieser Prognose im ISO8601-Format  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)<!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Erforderliche Eigenschaften  
- `alertSource`  - `category`  - `dateIssued`  - `id`  - `type`  <!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
Diese Entität modelliert eine Warnung und könnte für die Übermittlung von Warnungen im Zusammenhang mit Verkehrsstaus, Unfällen, Wetterbedingungen, hohen Schadstoffwerten usw. verwendet werden. Der Zweck des Modells besteht darin, die Generierung von Benachrichtigungen für einen Benutzer zu unterstützen oder andere Aktionen auf der Grundlage solcher Warnungen auszulösen. Ein Alarm wird durch eine bestimmte Situation ausgelöst. Das Hauptmerkmal eines Alarms ist, dass er nicht vorhersehbar ist und es sich nicht um wiederkehrende Daten handelt. Das bedeutet, dass es sich bei einem Alarm um einen Unfall oder eine hohe Schadstoffmessung handeln könnte, aber auch um den Sturz eines Patienten oder ein Auto, das in die entgegengesetzte Richtung fährt.  Einige Beispiele für Kontextdaten sind: Art des Alarms (Verkehr, Wetter, Sicherheit, Umweltverschmutzung usw.), Schweregrad, Ort usw.  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Datenmodell Beschreibung der Eigenschaften  
Alphabetisch sortiert (für Details anklicken)  
<!-- /50-DataModelHeader -->  
<!-- 60-ModelYaml -->  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Alert:    
  description: 'An alert generated by a user or device in a given location'    
  properties:    
    address:    
      description: 'The mailing address'    
      properties:    
        addressCountry:    
          description: 'Property. The country. For example, Spain. Model:''https://schema.org/addressCountry'''    
          type: string    
        addressLocality:    
          description: 'Property. The locality in which the street address is, and which is in the region. Model:''https://schema.org/addressLocality'''    
          type: string    
        addressRegion:    
          description: 'Property. The region in which the locality is, and which is in the country. Model:''https://schema.org/addressRegion'''    
          type: string    
        postOfficeBoxNumber:    
          description: 'Property. The post office box number for PO box addresses. For example, 03578. Model:''https://schema.org/postOfficeBoxNumber'''    
          type: string    
        postalCode:    
          description: 'Property. The postal code. For example, 24004. Model:''https://schema.org/https://schema.org/postalCode'''    
          type: string    
        streetAddress:    
          description: 'Property. The street address. Model:''https://schema.org/streetAddress'''    
          type: string    
      type: object    
      x-ngsi:    
        model: https://schema.org/address    
        type: Property    
    alertSource:    
      anyOf:    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'Source of the alert'    
      x-ngsi:    
        model: http://schema.org/URL.    
        type: Relationship    
    alternateName:    
      description: 'An alternative name for this item'    
      type: string    
      x-ngsi:    
        type: Property    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
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
      description: 'Payload containing the data retrieved.'    
      type: object    
      x-ngsi:    
        type: Property    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
      type: string    
      x-ngsi:    
        type: Property    
    dateCreated:    
      description: 'Entity creation timestamp. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    dateIssued:    
      description: 'The date and time the item was issued in ISO8601 UTC format.'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    description:    
      description: 'A description of this item'    
      type: string    
      x-ngsi:    
        type: Property    
    id:    
      anyOf: &alert_-_properties_-_owner_-_items_-_anyof    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'Unique identifier of the entity'    
      x-ngsi:    
        type: Property    
    location:    
      description: 'Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon'    
      oneOf:    
        - description: 'Geoproperty. Geojson reference to the item. Point'    
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
          title: 'GeoJSON Point'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. LineString'    
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
          title: 'GeoJSON LineString'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. Polygon'    
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
          title: 'GeoJSON Polygon'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiPoint'    
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
          title: 'GeoJSON MultiPoint'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
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
          title: 'GeoJSON MultiLineString'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
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
          title: 'GeoJSON MultiPolygon'    
          type: object    
      x-ngsi:    
        type: Geoproperty    
    name:    
      description: 'The name of this item.'    
      type: string    
      x-ngsi:    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *alert_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Property    
    seeAlso:    
      description: 'list of uri pointing to additional resources about the item'    
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
      description: 'Severity of the Alarm'    
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
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
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
        - description: 'Property. Weather categories. Enum:'' avalanches,coastalEvent, coldWave, flood, fog, forestFire, heatWave, highTemperature, hurricane, ice, lowTemperature, rainfall, rain_flood, snow, snow_ice, thunderstorms, tornado, tropicalCyclone, tsunami, wind'''    
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
      description: 'Describe the sub category of alert. Enum:''trafficJam, carAccident, carWrongDirection, carStopped, pothole, roadClosed, roadWorks, hazardOnRoad, injuredBiker, pedestrianOnRoad, bikerOnRoad, tramApproaching, flood, tsunami, coastalEvent, earthquake, rainfall, highTemperature, lowTemperature, heatWave, coldWave, ice, snow, wind, fog, tornado, tropicalCyclone, hurricane, snow/ice, thunderstorms, fireRisk, avalancheRisk, floodRisk, airPollution, waterPollution, pollenConcentration, asthmaAttack, bumpedPatient, fallenPatient, heartAttack, suspiciousAction, robbery, assault, civilDisorder, buildingFire, forestFire, noxiousWeed, snail, insect, rodent, bacteria, microbe, fungus,mite, virus, nematodes, irrigation, fertilisation'    
      type: string    
      x-ngsi:    
        type: Property    
    type:    
      description: 'NGSI Entity type. It has to be Alert.'    
      enum:    
        - Alert    
      type: string    
      x-ngsi:    
        type: Property    
    validFrom:    
      description: 'The start of the validity period for this forecast as a ISO8601 format'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    validTo:    
      description: 'The end of the validity period for this forecast as a ISO8601 format'    
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
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2021 Contributors to Smart Data Models Program'    
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
## Beispiel-Nutzlasten  
#### Alert NGSI-v2 key-values Beispiel  
Hier ist ein Beispiel für einen Alert im JSON-LD-Format als Key-Values. Dies ist mit NGSI-v2 kompatibel, wenn `options=keyValues` verwendet wird und liefert die Kontextdaten einer einzelnen Entität.  
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
    "coordinates": [-3.712247222222222, 40.423852777777775]  
  },  
  "dateIssued": "2017-01-02T09:25:55.00Z",  
  "validFrom": "2017-01-02T09:25:55.00Z",  
  "validTo": "2017-01-02T10:25:55.00Z",  
  "description": "The road is completely blocked for 3kms",  
  "alertSource": "https://account.lab.fiware.org/users/8"  
}  
```  
</details>  
#### Alert NGSI-v2 normalisiert Beispiel  
Hier ist ein Beispiel für einen Alert im JSON-LD-Format in normalisierter Form. Dies ist kompatibel mit NGSI-v2, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
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
    "value": "traffic"  
  },  
  "subCategory": {  
    "value": "trafficJam"  
  },  
  "validTo": {  
    "type": "DateTime",  
    "value": "2017-01-02T10:25:55.00Z"  
  },  
  "description": {  
    "value": "The road is completely blocked for 3kms"  
  },  
  "location": {  
    "type": "geo:json",  
    "value": {  
      "type": "Point",  
      "coordinates": [-3.712247222222222, 40.423852777777775]  
    }  
  },  
  "dateIssued": {  
    "type": "DateTime",  
    "value": "2017-01-02T09:25:55.00Z"  
  },  
  "alertSource": {  
    "value": "https://account.lab.fiware.org/users/8"  
  },  
  "validFrom": {  
    "type": "DateTime",  
    "value": "2017-01-02T09:25:55.00Z"  
  },  
  "severity": {  
    "value": "high"  
  }  
}  
```  
</details>  
#### Alert NGSI-LD key-values Beispiel  
Hier ist ein Beispiel für einen Alert im JSON-LD-Format als Key-Values. Dies ist mit NGSI-LD kompatibel, wenn `options=keyValues` verwendet wird und liefert die Kontextdaten einer einzelnen Entität.  
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
</details>  
#### Alert NGSI-LD normalisiert Beispiel  
Hier ist ein Beispiel für einen Alert im JSON-LD-Format in normalisierter Form. Dies ist mit NGSI-LD kompatibel, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:Alert:Alert:1",  
    "type": "Alert",  
    "alertSource": "https://account.lab.fiware.org/users/8",  
    "category": "traffic",  
    "createdAt": "2019-06-06T12:06:06",  
    "dateIssued": {  
        "@type": "DateTime",  
        "@value": "2017-01-02T09:25:55.00Z"  
    },  
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
    "validFrom": {  
        "@type": "DateTime",  
        "@value": "2017-01-02T09:25:55.00Z"  
    },  
    "validTo": {  
        "@type": "DateTime",  
        "@value": "2017-01-02T10:25:55.00Z"  
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
Siehe [FAQ 10] (https://smartdatamodels.org/index.php/faqs/), um eine Antwort auf die Frage zu erhalten, wie man mit Größeneinheiten umgeht  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
