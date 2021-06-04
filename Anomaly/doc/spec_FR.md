Entité : Anomaly  
================  
[Licence ouverte] (https://github.com/smart-data-models//dataModel.Alert/blob/master/Anomaly/LICENSE.md)  
[document généré automatiquement] (https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Description globale : **Cette entité contient une description harmonisée d'une anomalie.**  

## Liste des propriétés  

- `address`: L'adresse postale  - `alternateName`: Un nom alternatif pour cet élément  - `anomalousProperty`: La propriété contrôlée (du dispositif) dans laquelle l'anomalie a été détectée.  - `areaServed`: La zone géographique où un service ou un article offert est fourni  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Celui-ci sera généralement attribué par la plateforme de stockage.  - `dateDetected`: La date et l'heure à laquelle l'anomalie a été détectée pour la première fois.  - `dateModified`: Horodatage de la dernière modification de l'entité. Il sera généralement attribué par la plateforme de stockage.  - `description`: Une description de cet article  - `detectedBy`: L'ID du dispositif sur lequel l'anomalie a été détectée.  - `id`: Identifiant unique de l'entité  - `location`: Référence Geojson à l'élément. Il peut s'agir d'un point, d'une ligne, d'un polygone, d'un point multiple, d'une ligne multiple ou d'un polygone multiple.  - `name`: Le nom de cet élément.  - `owner`: Une liste contenant une séquence de caractères codée en JSON référençant les identifiants uniques du ou des propriétaires.  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur l'élément  - `source`: Une séquence de caractères donnant la source originale des données de l'entité sous forme d'URL. Il est recommandé d'utiliser le nom de domaine entièrement qualifié du fournisseur source ou l'URL de l'objet source.  - `thresholdBreach`: Description d'un dépassement de seuil observé qui a contribué à la détection d'une anomalie  - `type`: Type d'entité NGSI-LD. Il doit s'agir d'une Anomalie    
Propriétés requises  
- `anomalousProperty`  - `dateDetected`  - `id`  - `type`  ## Description des propriétés du modèle de données  
Classés par ordre alphabétique (cliquez pour plus de détails)  
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
        postOfficeBoxNumber:    
          description: 'Property. The post office box number for PO box addresses. For example, 03578. Model:''https://schema.org/postOfficeBoxNumber'''    
          type: string    
        postalCode:    
          description: 'Property. The postal code. For example, 24004. Model:''https://schema.org/https://schema.org/postalCode'''    
          type: string    
        streetAddress:    
          description: 'Property. The street address. Model:''https://schema.org/streetAddress'''    
          type: string    
      type: Property    
      x-ngsi:    
        model: https://schema.org/address    
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
      type: Geoproperty    
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
            format: uri    
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
#### Anomalie Valeurs-clés NGSI-v2 Exemple  
Voici un exemple d'anomalie au format JSON-LD sous forme de valeurs-clés. Ceci est compatible avec NGSI-v2 en utilisant `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
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
      "measuredValue": 18.91,  
      "thresholdType": "LOWER",  
      "thresholdValue": "20"  
    },  
    {  
      "value": "2021-01-14T15:45:00Z",  
      "measuredValue": 18.91,  
      "thresholdType": "LOWER",  
      "thresholdValue": "20"  
    }  
  ]  
}  
```  
#### Anomalie NGSI-v2 normalisée Exemple  
Voici un exemple d'anomalie au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-v2 lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "detectedBy": {  
    "type": "Relationship",  
    "object": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20"  
  },  
  "anomalousProperty": {  
    "type": "Text",  
    "value": "Pressure"  
  },  
  "dateDetected": {  
    "type": "DateTime",  
    "value": "2021-01-14T15:45:00Z"  
  },  
  "thresholdBreach": [  
    {  
      "type": "StructuredValue",  
      "value": {  
        "dateObserved": {  
          "type": "DateTime",  
          "value": "2021-01-14T15:30:00Z"  
        },  
        "measuredValue": {  
          "type": "Number",  
          "value": 18.91  
        },  
        "thresholdType": {  
          "type": "Text",  
          "value": "LOWER"  
        },  
        "thresholdValue": {  
          "type": "Number",  
          "value": 20  
        }  
      }  
    },  
    {  
      "type": "StructuredValue",  
      "value": {  
        "dateObserved": {  
          "type": "DateTime",  
          "value": "2021-01-14T15:45:00Z"  
        },  
        "measuredValue": {  
          "type": "Number",  
          "value": 18.91  
        },  
        "thresholdType": {  
          "type": "Text",  
          "value": "LOWER"  
        },  
        "thresholdValue": {  
          "type": "Number",  
          "value": 20  
        }  
      }  
    }  
  ]  
}  
```  
#### Anomalie Valeurs-clés NGSI-LD Exemple  
Voici un exemple d'anomalie au format JSON-LD sous forme de valeurs-clés. Ceci est compatible avec NGSI-LD quand on utilise `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:Anomaly:1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "createdAt": "2021-01-14T15:45:00Z",  
  "modifiedAt": "2021-01-14T15:45:00Z",  
  "detectedBy": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20",  
  "anomalousProperty": "Pressure",  
  "dateDetected": "2021-01-14T15:45:00Z",  
  "thresholdBreach": [  
    {  
      "dateObserved": "2021-01-14T15:30:00Z",  
      "measuredValue": "18.91",  
      "thresholdType": "LOWER",  
      "thresholdValue": 20  
    },  
    {  
      "dateObserved": "2021-01-14T15:45:00Z",  
      "measuredValue": "18.91",  
      "thresholdType": "LOWER",  
      "thresholdValue": 20  
    }  
  ],  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
#### Anomalie NGSI-LD normalisée Exemple  
Voici un exemple d'anomalie au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "detectedBy": {  
    "type": "Property",  
    "value": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20"  
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
      "type": "Property",  
      "value": {  
        "dateObserved": "2021-01-14T15:30:00Z",  
        "measuredValue": "18.91",  
        "thresholdType": "LOWER",  
        "thresholdValue": "20"  
      }  
    },  
    {  
      "type": "Property",  
      "value": {  
        "dateObserved": "2021-01-14T15:45:00Z",  
        "measuredValue": "18.91",  
        "thresholdType": "LOWER",  
        "thresholdValue": "20"  
      }  
    }  
  ],  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
