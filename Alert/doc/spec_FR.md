<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entité : Alerte  
===============<!-- /10-Header -->  
<!-- 15-License -->  
[Licence ouverte] (https://github.com/smart-data-models//dataModel.Alert/blob/master/Alert/LICENSE.md)  
[document généré automatiquement] (https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Description globale : **Une alerte générée par un utilisateur ou un dispositif dans un lieu donné**.  
version : 0.0.3  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## Liste des propriétés  

<sup><sub>[*] S'il n'y a pas de type dans un attribut, c'est parce qu'il pourrait avoir plusieurs types ou différents formats/modèles</sub></sup>.  
- `address[object]`: L'adresse postale  . Model: [https://schema.org/address](https://schema.org/address)- `alertSource[*]`: Source de l'alerte  . Model: [http://schema.org/URL.](http://schema.org/URL.)- `alternateName[string]`: Un nom alternatif pour cet élément  - `areaServed[string]`: La zone géographique où un service ou un article offert est fourni  . Model: [https://schema.org/Text](https://schema.org/Text)- `category[string]`: Catégorie de l'alerte. Enum : 'traffic, naturalDisaster, weather, environment, health, security, agriculture' (trafic, catastrophe naturelle, météo, environnement, santé, sécurité, agriculture)  - `data[object]`: Charge utile contenant les données récupérées.  - `dataProvider[string]`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated[string]`: Horodatage de la création de l'entité. Celui-ci sera généralement attribué par la plateforme de stockage.  - `dateIssued[string]`: La date et l'heure d'émission de l'article au format ISO8601 UTC.  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `dateModified[string]`: Horodatage de la dernière modification de l'entité. Il sera généralement attribué par la plateforme de stockage.  - `description[string]`: Une description de cet article  - `id[*]`: Identifiant unique de l'entité  - `location[*]`: Référence Geojson à l'élément. Il peut s'agir d'un point, d'une ligne, d'un polygone, d'un point multiple, d'une ligne multiple ou d'un polygone multiple.  - `name[string]`: Le nom de cet élément.  - `owner[array]`: Une liste contenant une séquence de caractères codée en JSON référençant les identifiants uniques du ou des propriétaires.  - `seeAlso[*]`: liste d'uri pointant vers des ressources supplémentaires sur l'élément  - `severity[string]`: Gravité de l'alarme  - `source[string]`: Une séquence de caractères donnant la source originale des données de l'entité sous forme d'URL. Il est recommandé d'utiliser le nom de domaine entièrement qualifié du fournisseur source ou l'URL de l'objet source.  - `subCategory[string]`: Décrit la sous-catégorie d'alerte. Enum :'embouteillage, accident de voiture, mauvaise direction, voiture arrêtée, nid de poule, route fermée, travaux, danger sur la route, cycliste blessé, piéton sur la route, cycliste sur la route, tramway en approche, inondation, tsunami, événement côtier, tremblement de terre, pluie, hauteTempérature, basseTempérature, vague de chaleur, vague de froid, glace, neige, vent, brouillard, tornade, cyclone tropical, ouragan, neige/glace, orages, risque d'incendie, risque d'avalanche, risque d'inondation, pollution de l'air, pollution de l'eau, concentration de pollen, crise d'asthme, patient heurté, patient tombé, crise cardiaque, action suspecte, vol, agression, troubles civils, incendie de bâtiment, incendie de forêt, herbe nuisible, escargot, insecte, rongeur, bactérie, microbe, champignon, acarien, virus, nématodes, irrigation, fertilisation, etc.  - `type[string]`: Type d'entité NGSI. Il doit s'agir d'une alerte.  - `validFrom[string]`: Le début de la période de validité de cette prévision au format ISO8601.  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)- `validTo[string]`: La fin de la période de validité de cette prévision au format ISO8601.  . Model: [https://schema.org/DateTime](https://schema.org/DateTime)<!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Propriétés requises  
- `alertSource`  - `category`  - `dateIssued`  - `id`  - `type`  <!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
Cette entité modélise une alerte et peut être utilisée pour envoyer des alertes liées à des embouteillages, des accidents, des conditions météorologiques, un niveau élevé de polluants, etc. L'objectif de ce modèle est de prendre en charge la génération de notifications pour un utilisateur ou de déclencher d'autres actions, sur la base de telles alertes. Une alerte est générée par une situation spécifique. Les principales caractéristiques d'une alerte sont qu'elle n'est pas prévisible et qu'il ne s'agit pas d'une donnée récurrente. Cela signifie qu'une alerte peut être un accident ou une mesure de niveau élevé de polluants, mais aussi la chute d'un patient ou une voiture roulant dans la direction opposée.  Voici quelques exemples de données contextuelles : type d'alerte (trafic, météo, sécurité, pollution, etc.), gravité, emplacement, etc.  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Description des propriétés du modèle de données  
Classés par ordre alphabétique (cliquez pour plus de détails)  
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
## Exemples de charges utiles  
#### Alert NGSI-v2 key-values Exemple  
Voici un exemple d'alerte au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-v2 en utilisant `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
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
#### Alerte NGSI-v2 normalisée Exemple  
Voici un exemple d'un Alert au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-v2 lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
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
#### Alert NGSI-LD key-values Exemple  
Voici un exemple d'alerte au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-LD quand on utilise `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
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
#### Alerte NGSI-LD normalisée Exemple  
Voici un exemple d'un Alert au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
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
Voir [FAQ 10](https://smartdatamodels.org/index.php/faqs/) pour obtenir une réponse sur la façon de traiter les unités de magnitude.  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
