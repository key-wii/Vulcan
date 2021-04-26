{
  "spriteId": {
    "name": "spr_enemy_s_boss",
    "path": "sprites/spr_enemy_s_boss/spr_enemy_s_boss.yy",
  },
  "solid": true,
  "visible": false,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_enemy_move_parent",
    "path": "objects/obj_enemy_move_parent/obj_enemy_move_parent.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":0.0,"y":0.0,},
    {"x":32.0,"y":0.0,},
    {"x":32.0,"y":32.0,},
    {"x":0.0,"y":32.0,},
  ],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":1,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_tank_move","path":"objects/obj_tank_move/obj_tank_move.yy",},"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_tank_move_flame","path":"objects/obj_tank_move_flame/obj_tank_move_flame.yy",},"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_enemy_move_parent","path":"objects/obj_enemy_move_parent/obj_enemy_move_parent.yy",},"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":6,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_enemy_controller_parent","path":"objects/obj_enemy_controller_parent/obj_enemy_controller_parent.yy",},"parent":{"name":"obj_miniboss_move2","path":"objects/obj_miniboss_move2/obj_miniboss_move2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [],
  "parent": {
    "name": "move wheels",
    "path": "folders/Objects/enemy tanks/move wheels.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_miniboss_move2",
  "tags": [],
  "resourceType": "GMObject",
}