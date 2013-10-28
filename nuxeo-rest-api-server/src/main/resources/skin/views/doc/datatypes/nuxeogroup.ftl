"NuxeoGroup" : {
  "id": "NuxeoGroup",
  "uniqueItems": false,
  "properties": {
    "entity-type": {
      "uniqueItems": false,
      "type": "string",
      "required": true
    },
    "groupname": {
      "uniqueItems": false,
      "type": "string",
      "required": true
    },
    "grouplabel": {
      "uniqueItems": false,
      "type": "string",
      "required":"false"
    },
    "memberUsers": {
        "type": "array",
        "items" : {
          "type":"string"
        },
        "required": false
    },
    "memberGroups": {
        "type": "array",
        "items" : {
          "type":"string"
        },
        "required": false
    },
  }
},
"NuxeoGroupList" : {
  "id": "NuxeoGroupList",
  "uniqueItems": false,
  "properties": {
    "entity-type": {
      "uniqueItems": false,
      "type": "string",
      "required": true
    },
    "entries": {
      "uniqueItems": false,
      "type": "array",
      "items": {
        "$ref":"NuxeoGroup"
      },
      "required": true
    }

  }
}

