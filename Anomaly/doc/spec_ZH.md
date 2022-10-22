<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
实体。异常点  
======<!-- /10-Header -->  
<!-- 15-License -->  
[开放许可](https://github.com/smart-data-models//dataModel.Alert/blob/master/Anomaly/LICENSE.md)  
[文件自动生成](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
全局描述。**该实体包含对异常情况的统一描述。  
版本：0.0.2  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

##属性列表  

<sup><sub>[*] 如果一个属性中没有一个类型，是因为它可能有几种类型或不同的格式/模式</sub></sup>。  
- `address[object]`: 邮寄地址  . Model: [https://schema.org/address](https://schema.org/address)- `alternateName[string]`: 这个项目的一个替代名称  - `anomalousProperty[string]`: 检测到异常情况的（设备的）受控属性。  . Model: [http://schema.org/Text](http://schema.org/Text)- `areaServed[string]`: 提供服务或提供项目的地理区域  . Model: [https://schema.org/Text](https://schema.org/Text)- `dataProvider[string]`: 一串识别统一数据实体提供者的字符。  - `dateCreated[string]`: 实体创建时间戳。这通常会由存储平台分配。  - `dateDetected[string]`: 首次发现异常情况的日期和时间  . Model: [http://schema.org/DateTime](http://schema.org/DateTime)- `dateModified[string]`: 实体最后一次修改的时间戳。这通常会由存储平台分配。  - `description[string]`: 对这个项目的描述  - `detectedBy[string]`: 检测到异常情况的设备的ID  - `id[*]`: 实体的唯一标识符  - `location[*]`: 对该项目的Geojson引用。它可以是点、线字符串、多边形、多点、多线字符串或多多边形。  - `name[string]`: 这个项目的名称。  - `owner[array]`: 一个包含JSON编码的字符序列的列表，引用所有者的唯一Ids。  - `seeAlso[*]`: 指向有关该项目的其他资源的URI列表  - `source[string]`: 一系列的字符，以URL的形式给出实体数据的原始来源。建议为源提供者的完全合格域名，或源对象的URL。  - `thresholdBreach[array]`: 描述观察到的有助于检测到异常情况的阈值违反情况  . Model: [https://schema.org/Text](https://schema.org/Text)- `type[string]`: NGSI-LD实体类型。它必须是反常的  <!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
所需属性  
- `anomalousProperty`  - `dateDetected`  - `id`  - `type`  <!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## 数据模型的属性描述  
按字母顺序排列（点击查看详情）。  
<!-- /50-DataModelHeader -->  
<!-- 60-ModelYaml -->  
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
      type: object    
      x-ngsi:    
        model: https://schema.org/address    
        type: Property    
    alternateName:    
      description: 'An alternative name for this item'    
      type: string    
      x-ngsi:    
        type: Property    
    anomalousProperty:    
      description: 'The controlledProperty (of the device) in which the anomaly was detected'    
      type: string    
      x-ngsi:    
        model: http://schema.org/Text    
        type: Property    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
      type: string    
      x-ngsi:    
        model: https://schema.org/Text    
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
    dateDetected:    
      description: 'The date and time at which the anomaly was first detected'    
      type: string    
      x-ngsi:    
        model: http://schema.org/DateTime    
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
    detectedBy:    
      description: 'The ID of the device at which the anomaly was detected'    
      format: uri    
      type: string    
      x-ngsi:    
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
        anyOf: *anomaly_-_properties_-_owner_-_items_-_anyof    
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
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: string    
      x-ngsi:    
        type: Property    
    thresholdBreach:    
      description: 'Description of an observed threshold breach that contributed to detection of an anomaly'    
      items:    
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
        type: object    
      type: array    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    type:    
      description: 'NGSI-LD Entity Type. It has to be Anomaly'    
      enum:    
        - Anomaly    
      type: string    
      x-ngsi:    
        type: Property    
  required:    
    - id    
    - type    
    - anomalousProperty    
    - dateDetected    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2021 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.Alert/blob/master/Anomaly/LICENSE.md    
  x-model-schema: https://smart-data-models.github.io/incubated/Anomaly/schema.json    
  x-model-tags: ""    
  x-version: 0.0.2    
```  
</details>    
<!-- /60-ModelYaml -->  
<!-- 70-MiddleNotes -->  
<!-- /70-MiddleNotes -->  
<!-- 80-Examples -->  
## ＃＃＃＃有效载荷的例子  
#### 异常的NGSI-v2关键值示例  
这里是一个以JSON-LD格式作为key-values的Anomaly的例子。当使用`options=keyValues`时，这与NGSI-v2兼容，并返回单个实体的上下文数据。  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "urn:ngsi-ld:1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "detectedBy": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20",  
  "anomalousProperty": "Pressure",  
  "dateDetected": "2021-01-14T15:45:00Z",  
  "thresholdBreach": [  
    {  
      "dateObserved": "2021-01-14T15:30:00Z",  
      "measuredValue": 18.91,  
      "thresholdType": "LOWER",  
      "thresholdValue": 20  
    },  
    {  
      "dateObserved": "2021-01-14T15:45:00Z",  
      "measuredValue": 18.91,  
      "thresholdType": "LOWER",  
      "thresholdValue": 20  
    }  
  ]  
}  
```  
</details>  
#### 异常现象 NGSI-v2归一化实例  
下面是一个规范化的JSON-LD格式的Anomaly的例子。当不使用选项时，这与NGSI-v2兼容，并返回单个实体的上下文数据。  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "urn:ngsi-ld:1863179e-3768-4480-9167-ff21f870dd19",  
  "type": "Anomaly",  
  "detectedBy": {  
    "type": "Relationship",  
    "value": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20"  
  },  
  "anomalousProperty": {  
    "type": "Text",  
    "value": "Pressure"  
  },  
  "dateDetected": {  
    "type": "DateTime",  
    "value": "2021-01-14T15:45:00Z"  
  },  
  "thresholdBreach": {  
    "type": "StructuredValue",  
    "value": [  
      {  
        "dateObserved": "2021-01-14T15:30:00Z",  
        "measuredValue": 18.91,  
        "thresholdType": "LOWER",  
        "thresholdValue": 20  
      },  
      {  
        "dateObserved": "2021-01-14T15:45:00Z",  
        "measuredValue": 18.91,  
        "thresholdType": "LOWER",  
        "thresholdValue": 20  
      }  
    ]  
  }  
}  
```  
</details>  
#### 异常的NGSI-LD关键值示例  
这里是一个以JSON-LD格式作为key-values的Anomaly的例子。当使用`options=keyValues`时，这与NGSI-LD兼容，并返回单个实体的上下文数据。  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:Anomaly:1863179e-3768-4480-9167-ff21f870dd19",  
    "type": "Anomaly",  
    "anomalousProperty": "Pressure",  
    "createdAt": "2021-01-14T15:45:00Z",  
    "dateDetected": "2021-01-14T15:45:00Z",  
    "detectedBy": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20",  
    "modifiedAt": "2021-01-14T15:45:00Z",  
    "thresholdBreach": [  
        {  
            "dateObserved": "2021-01-14T15:30:00Z",  
            "measuredValue": 18.91,  
            "thresholdType": "LOWER",  
            "thresholdValue": 20  
        },  
        {  
            "dateObserved": "2021-01-14T15:45:00Z",  
            "measuredValue": 18.91,  
            "thresholdType": "LOWER",  
            "thresholdValue": 20  
        }  
    ],  
    "@context": [  
        "https://smart-data-models.github.io/dataModel.Alert/context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.Alert/master/context.jsonld"  
    ]  
}  
```  
</details>  
#### 异常情况NGSI-LD正常化的例子  
这里是一个以JSON-LD格式规范化的Anomaly的例子。当不使用选项时，这与NGSI-LD兼容，并返回单个实体的上下文数据。  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:1863179e-3768-4480-9167-ff21f870dd19",  
    "type": "Anomaly",  
    "anomalousProperty": {  
        "type": "Property",  
        "value": "Pressure"  
    },  
    "dateDetected": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2021-01-14T15:45:00Z"  
        }  
    },  
    "detectedBy": {  
        "type": "Relationship",  
        "object": "urn:ngsi-ld:Device:1863179e-3868-4480-3496-jf21f090dd20"  
    },  
    "thresholdBreach": {  
        "type": "Property",  
        "value": [  
            {  
                "dateObserved": "2021-01-14T15:30:00Z",  
                "measuredValue": 18.91,  
                "thresholdType": "LOWER",  
                "thresholdValue": 20  
            },  
            {  
                "dateObserved": "2021-01-14T15:45:00Z",  
                "measuredValue": 18.91,  
                "thresholdType": "LOWER",  
                "thresholdValue": 20  
            }  
        ]  
    },  
    "@context": [  
        "https://smart-data-models.github.io/dataModel.Alert/context.jsonld",  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.Alert/master/context.jsonld"  
    ]  
}  
```  
</details><!-- /80-Examples -->  
<!-- 90-FooterNotes -->  
<!-- /90-FooterNotes -->  
<!-- 95-Units -->  
参见[常见问题10](https://smartdatamodels.org/index.php/faqs/)，以获得关于如何处理量级单位的答案。  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
