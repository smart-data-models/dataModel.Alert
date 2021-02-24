Entité : Anomalie  
=================  
[Licence ouverte](https://github.com/smart-data-models//dataModel.Alert/blob/master/Anomaly/LICENSE.md)  
Description globale : **Cette entité contient une description harmonisée d'une anomalie.**  

## Liste des biens  

- `address`: L'adresse postale  - `alternateName`: Un autre nom pour cet article  - `anomalousProperty`: La propriété contrôlée (de l'appareil) dans laquelle l'anomalie a été détectée  - `areaServed`: La zone géographique où un service ou un article offert est fourni  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `dateDetected`: La date et l'heure auxquelles l'anomalie a été détectée pour la première fois  - `dateModified`: Horodatage de la dernière modification de l'entité. Il est généralement attribué par la plate-forme de stockage.  - `description`: Une description de cet article  - `detectedBy`: L'identification de l'appareil sur lequel l'anomalie a été détectée  - `id`: Identifiant unique de l'entité  - `location`:   - `name`: Le nom de cet article.  - `owner`: Une liste contenant une séquence de caractères codés en JSON faisant référence aux Ids uniques du ou des propriétaires  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur le sujet  - `source`: Une séquence de caractères donnant comme URL la source originale des données de l'entité. Il est recommandé d'utiliser le nom de domaine complet du fournisseur de la source, ou l'URL de l'objet source.  - `thresholdBreach`: Description d'un dépassement de seuil observé qui a contribué à la détection d'une anomalie  - `type`: Type d'entité NGSI-LD. Il doit s'agir d'une anomalie    
Propriétés requises  
- `anomalousProperty`  - `dateDetected`  - `id`  - `type`  ## Modèle de données description des biens  
Classement par ordre alphabétique (cliquez pour plus de détails)  
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
## Exemples de charges utiles  
#### Anomalie Valeurs clés de l'INSG V2 Exemple  
Voici un exemple d'anomalie au format JSON en tant que valeurs clés. Ce format est compatible avec NGSI V2 lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
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
#### Anomalie NGSI V2 normalisée Exemple  
Voici un exemple d'une anomalie au format JSON telle que normalisée. Ce format est compatible avec NGSI V2 lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
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
#### Anomalie Valeurs clés de l'INSG-LD Exemple  
Voici un exemple d'anomalie au format JSON-LD comme valeurs clés. Il est compatible avec le format NGSI-LD lorsqu'il utilise "options=keyValues" et renvoie les données de contexte d'une entité individuelle.  
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
    "https://schema.lab.fiware.org/ld/context"  
  ]  
}  
```  
#### Anomalie NGSI-LD normalisée Exemple  
Voici un exemple d'une anomalie au format JSON-LD telle que normalisée. Ce format est compatible avec JSON-LD lorsqu'il n'utilise pas d'options et renvoie les données de contexte d'une entité individuelle.  
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
        "https://schema.lab.fiware.org/ld/context"  
    ]  
}  
```  
