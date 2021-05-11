Entität: Anomalie  
=================  
[Offene Lizenz](https://github.com/smart-data-models//dataModel.Alert/blob/master/Anomaly/LICENSE.md)  
Globale Beschreibung: **Diese Entität enthält eine harmonisierte Beschreibung einer Anomalie.**  

## Liste der Eigenschaften  

- `address`: Die Postanschrift  - `alternateName`: Ein alternativer Name für diesen Artikel  - `anomalousProperty`: Die controlledProperty (des Geräts), in der die Anomalie erkannt wurde  - `areaServed`: Das geografische Gebiet, in dem eine Dienstleistung oder ein angebotener Artikel erbracht wird  - `dataProvider`: Eine Folge von Zeichen, die den Anbieter der harmonisierten Dateneinheit identifiziert.  - `dateCreated`: Zeitstempel der Entitätserstellung. Dieser wird normalerweise von der Speicherplattform zugewiesen.  - `dateDetected`: Das Datum und die Uhrzeit, zu der die Anomalie erstmals erkannt wurde  - `dateModified`: Zeitstempel der letzten Änderung der Entität. Dieser wird in der Regel von der Speicherplattform vergeben.  - `description`: Eine Beschreibung dieses Artikels  - `detectedBy`: Die ID des Geräts, bei dem die Anomalie erkannt wurde  - `id`: Eindeutiger Bezeichner der Entität  - `location`:   - `name`: Der Name dieses Elements.  - `owner`: Eine Liste mit einer JSON-kodierten Zeichenfolge, die auf die eindeutigen Ids der Eigentümer verweist  - `seeAlso`: Liste von uri, die auf zusätzliche Ressourcen über das Element verweist  - `source`: Eine Folge von Zeichen, die die ursprüngliche Quelle der Entitätsdaten als URL angibt. Empfohlen wird der voll qualifizierte Domänenname des Quellanbieters oder die URL zum Quellobjekt.  - `thresholdBreach`: Beschreibung einer beobachteten Schwellenwertverletzung, die zur Erkennung einer Anomalie beigetragen hat  - `type`: NGSI-LD-Entitätstyp. Es muss Anomalie sein    
Erforderliche Eigenschaften  
- `anomalousProperty`  - `dateDetected`  - `id`  - `type`  ## Datenmodell Beschreibung der Eigenschaften  
Alphabetisch sortiert (für Details anklicken)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Anomaly:    
  description: 'This entity contains a harmonised description of an anomaly.'    
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
        areaServed:    
          description: 'Property. The geographic area where a service or offered item is provided. Model:''https://schema.org/areaServed'''    
          type: string    
        postOfficeBoxNumber:    
          description: 'Property. The post office box number for PO box addresses. For example, Spain. Model:''https://schema.org/postOfficeBoxNumber'''    
          type: string    
        postalCode:    
          description: 'Property. The postal code. For example, Spain. Model:''https://schema.org/https://schema.org/postalCode'''    
          type: string    
        streetAddress:    
          description: 'Property. The street address. Model:''https://schema.org/streetAddress'''    
          type: string    
      type: Property    
      x-ngsi:    
        model: https://schema.org/adddress    
    alternateName:    
      description: 'An alternative name for this item'    
      type: Property    
    anomalousProperty:    
      description: 'The controlledProperty (of the device) in which the anomaly was detected'    
      type: Property    
      x-ngsi:    
        model: http://schema.org/Text    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Text    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
      type: Property    
    dateCreated:    
      description: 'Entity creation timestamp. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    dateDetected:    
      description: 'The date and time at which the anomaly was first detected'    
      type: Property    
      x-ngsi:    
        model: http://schema.org/DateTime    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: Property    
    description:    
      description: 'A description of this item'    
      type: Property    
    detectedBy:    
      description: 'The ID of the device at which the anomaly was detected'    
      format: uri    
      type: Relationship    
    id:    
      anyOf: &anomaly_-_properties_-_owner_-_items_-_anyof    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'Unique identifier of the entity'    
      type: Property    
    location:    
      $id: https://geojson.org/schema/Geometry.json    
      $schema: "http://json-schema.org/draft-07/schema#"    
      oneOf:    
        - properties:    
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
        - properties:    
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
        - properties:    
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
        - properties:    
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
        - properties:    
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
        - properties:    
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
      title: 'GeoJSON Geometry'    
    name:    
      description: 'The name of this item.'    
      type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *anomaly_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: Property    
    seeAlso:    
      description: 'list of uri pointing to additional resources about the item'    
      oneOf:    
        - items:    
            - format: uri    
              type: string    
          minItems: 1    
          type: array    
        - format: uri    
          type: string    
      type: Property    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: Property    
    thresholdBreach:    
      description: 'Description of an observed threshold breach that contributed to detection of an anomaly'    
      properties:    
        dateObserved:    
          description: 'Property. Model:''http://schema.org/DateTime''. A sub-property of the Property ''thresholdBreach''. The date and time at which the threshold breach was observed'    
          type: string    
        measuredValue:    
          description: 'Property. Model:''http://schema.org/Number''. A sub-property of the Property ''thresholdBreach''. The value measured for the corresponding device and controlled property'    
          type: number    
        thresholdType:    
          description: 'Property. Model:''https://schema.org/Text''. A sub-property of the Property ''thresholdBreach''. The type of the threshold that was breached'    
          enum:    
            - UPPER    
            - LOWER    
          type: string    
        thresholdValue:    
          description: 'Property. Model:''https://schema.org/Number''. A sub-property of the Property ''thresholdBreach''. The value of the threshold that was breached'    
          type: number    
      type: Property    
      x-ngsi:    
        model: https://schema.org/Text    
    type:    
      description: 'NGSI-LD Entity Type. It has to be Anomaly'    
      enum:    
        - Anomaly    
      type: Property    
  required:    
    - id    
    - type    
    - anomalousProperty    
    - dateDetected    
  type: object    
```  
</details>    
## Beispiel-Nutzlasten  
#### Anomalie NGSI-v2 Schlüssel-Werte Beispiel  
Hier ist ein Beispiel für eine Anomalie im JSON-LD-Format als Key-Values. Dies ist kompatibel mit NGSI-v2 bei Verwendung von `options=keyValues` und liefert die Kontextdaten einer einzelnen Entität.  
```json  
{  
  "id": "1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "detectedBy": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20",  
  "anomalousProperty": "Pressure",  
  "dateDetected": "2021-01-14T15:45:00Z",  
  "thresholdBreach": [  
    {  
      "dateObserved": "2021-01-14T15:30:00Z",  
      "measuredValue": "18.91",  
      "thresholdType": "LOWER",  
      "thresholdValue": "20"  
    },  
    {  
      "value": "2021-01-14T15:45:00Z",  
      "measuredValue": "18.91",  
      "thresholdType": "LOWER",  
      "thresholdValue": "20"  
    }  
  ]  
}  
```  
#### Anomalie NGSI-v2 normalisiert Beispiel  
Hier ist ein Beispiel für eine Anomalie im JSON-LD-Format wie normalisiert. Dies ist kompatibel mit NGSI-v2, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
```json  
{  
    "id": "1863179e-3768-4480-9167-ff21f870dd19",  
    "type": "Anomaly",  
    "detectedBy": {  
        "type": "Relationship",  
        "object": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20"  
    },  
    "anomalousProperty": {  
        "value": "Pressure"  
    },  
    "dateDetected": {  
        "value": "2021-01-14T15:45:00Z"  
    },  
    "thresholdBreach": [  
        {  
            "datasetId": "Breach1",  
            "value": {  
                "dateObserved": {  
                    "value": "2021-01-14T15:30:00Z"  
                },  
                "measuredValue": {  
                    "value": "18.91",  
                    "unitCode": "MTR"  
                },  
                "thresholdType": {  
                    "value": "LOWER"  
                },  
                "thresholdValue": {  
                    "value": "20",  
                    "unitCode": "MTR"  
                }  
            }          
        },  
        {  
            "datasetId": "Breach2",  
            "value": {  
                "dateObserved": {  
                    "value": "2021-01-14T15:45:00Z"  
                },  
                "measuredValue": {  
                    "value": "18.91",  
                    "unitCode": "MTR"  
                },  
                "thresholdType": {  
                    "value": "LOWER"  
                },  
                "thresholdValue": {  
                    "value": "20",  
                    "unitCode": "MTR"  
                }  
            }          
        }  
    ]  
}  
```  
#### Anomalie NGSI-LD-Schlüsselwerte Beispiel  
Hier ist ein Beispiel für eine Anomalie im JSON-LD-Format als Key-Values. Dies ist kompatibel mit NGSI-LD bei Verwendung von `options=keyValues` und liefert die Kontextdaten einer einzelnen Entität.  
```json  
{  
  "id": "urn:ngsi-ld:Anomaly:1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "createdAt": "2021-01-14T15:45:00Z",  
  "modifiedAt": "2021-01-14T15:45:00Z",  
  "detectedBy": {  
    "type": "Relationship",  
    "object": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20"  
  },  
  "anomalousProperty": {  
    "type": "Property",  
    "value": "Pressure"  
  },  
  "dateDetected": {  
    "type": "Property",  
    "value": "2021-01-14T15:45:00Z"  
  },  
  "thresholdBreach": [  
    {  
      "datasetId": "urn:ngsi-ld:Dataset:Breach1",  
      "value": {  
        "dateObserved": {  
          "type": "Property",  
          "value": "2021-01-14T15:30:00Z"  
        },  
        "measuredValue": {  
          "type": "Property",  
          "value": "18.91",  
          "unitCode": "MTR"  
        },  
        "thresholdType": {  
          "type": "Property",  
          "value": "LOWER"  
        },  
        "thresholdValue": {  
          "type": "Property",  
          "value": "20",  
          "unitCode": "MTR"  
        }  
      }  
    },  
    {  
      "datasetId": "urn:ngsi-ld:Dataset:Breach2",  
      "value": {  
        "dateObserved": {  
          "type": "Property",  
          "value": "2021-01-14T15:45:00Z"  
        },  
        "measuredValue": {  
          "type": "Property",  
          "value": "18.91",  
          "unitCode": "MTR"  
        },  
        "thresholdType": {  
          "type": "Property",  
          "value": "LOWER"  
        },  
        "thresholdValue": {  
          "type": "Property",  
          "value": "20",  
          "unitCode": "MTR"  
        }  
      }  
    }  
  ],  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
#### Anomalie NGSI-LD normalisiert Beispiel  
Hier ist ein Beispiel für eine Anomalie im JSON-LD-Format wie normalisiert. Dies ist kompatibel mit NGSI-LD, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
```json  
{  
  "id": "1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "detectedBy": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20",  
  "anomalousProperty": "Pressure",  
  "dateDetected": "2021-01-14T15:45:00Z",  
  "thresholdBreach": [  
    {  
      "dateObserved": "2021-01-14T15:30:00Z",  
      "measuredValue": "18.91",  
      "thresholdType": "LOWER",  
      "thresholdValue": "20"  
    },  
    {  
      "value": "2021-01-14T15:45:00Z",  
      "measuredValue": "18.91",  
      "thresholdType": "LOWER",  
      "thresholdValue": "20"  
    }  
  ],  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
