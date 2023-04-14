{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_1_5v1",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_4ADDBEAF","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_4B3F05C0","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_557D6085_1_1_1_1","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_20EE7DA7","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_590C06E6","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_DEB300","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_62D5395B","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_7670B700","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_792CA77F","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_55EFEBBB","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_27369175","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_2F50CAA4","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_5B1217CE","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_48134628","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
    {"name":"inst_438F8A37","path":"rooms/rm_1_5v1/rm_1_5v1.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemy_Bullets","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Bullets","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemies","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2F50CAA4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_RangedEnemy","path":"objects/obj_RangedEnemy/obj_RangedEnemy.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5B1217CE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_MeleeEnemy","path":"objects/obj_MeleeEnemy/obj_MeleeEnemy.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1120.0,"y":576.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_48134628","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_MeleeEnemy","path":"objects/obj_MeleeEnemy/obj_MeleeEnemy.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1184.0,"y":192.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Gun","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Pickups","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Doors","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4ADDBEAF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoom","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_7v1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"side","path":"objects/obj_Door/obj_Door.yy",},"value":"north",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomNum","path":"objects/obj_Door/obj_Door.yy",},"value":"7",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomAlt","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_7v2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomAltTwo","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_7v3",},
          ],"rotation":90.0,"scaleX":1.0,"scaleY":1.0,"x":621.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4B3F05C0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoom","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_3v1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"side","path":"objects/obj_Door/obj_Door.yy",},"value":"south",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomNum","path":"objects/obj_Door/obj_Door.yy",},"value":"3",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomAlt","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_3v2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomAltTwo","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_3v3",},
          ],"rotation":90.0,"scaleX":1.0,"scaleY":1.0,"x":621.0,"y":800.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_557D6085_1_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_RoomController","path":"objects/obj_RoomController/obj_RoomController.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_RoomController","path":"objects/obj_RoomController/obj_RoomController.yy",},"propertyId":{"name":"eDoor","path":"objects/obj_RoomController/obj_RoomController.yy",},"value":"noone",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_RoomController","path":"objects/obj_RoomController/obj_RoomController.yy",},"propertyId":{"name":"roomNumber","path":"objects/obj_RoomController/obj_RoomController.yy",},"value":"5",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_RoomController","path":"objects/obj_RoomController/obj_RoomController.yy",},"propertyId":{"name":"nDoor","path":"objects/obj_RoomController/obj_RoomController.yy",},"value":"inst_4ADDBEAF",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_RoomController","path":"objects/obj_RoomController/obj_RoomController.yy",},"propertyId":{"name":"sDoor","path":"objects/obj_RoomController/obj_RoomController.yy",},"value":"inst_4B3F05C0",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_RoomController","path":"objects/obj_RoomController/obj_RoomController.yy",},"propertyId":{"name":"wDoor","path":"objects/obj_RoomController/obj_RoomController.yy",},"value":"inst_20EE7DA7",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":480.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_20EE7DA7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoom","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_9v1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"side","path":"objects/obj_Door/obj_Door.yy",},"value":"west",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomNum","path":"objects/obj_Door/obj_Door.yy",},"value":"9",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomAlt","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_9v2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Door","path":"objects/obj_Door/obj_Door.yy",},"propertyId":{"name":"targetRoomAltTwo","path":"objects/obj_Door/obj_Door.yy",},"value":"rm_1_9v3",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-32.0,"y":320.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Walls","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_590C06E6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":5.5,"x":-32.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_DEB300","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":5.5,"x":-32.0,"y":448.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_62D5395B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":9.765625,"scaleY":1.0,"x":0.0,"y":736.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7670B700","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":9.828125,"scaleY":1.0,"x":747.0,"y":736.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_792CA77F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":11.5,"x":1334.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_55EFEBBB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":10.0,"scaleY":1.0,"x":748.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_27369175","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":10.0,"scaleY":1.0,"x":-17.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_438F8A37","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_Wall","path":"objects/obj_Wall/obj_Wall.yy",},"properties":[],"rotation":0.0,"scaleX":10.0,"scaleY":1.0,"x":704.0,"y":352.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Floor1",
    "path": "folders/Rooms/Floor1.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 768,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1366,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}