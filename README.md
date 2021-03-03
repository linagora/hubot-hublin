![Archived](https://img.shields.io/badge/Current_Status-archived-blue?style=flat)

hubot-hublin
============

Hubot script to interact with Hubl.in.

See [`src/hublin.coffee`](src/hublin.coffee) for full documentation.

Installation
------------

In hubot project repo, run:

`npm install hubot-hublin --save`

Then add **hubot-hublin** to your `external-scripts.json`:

```json
["hubot-hublin"]
```

Configuration
-------------

You can define your own Hubl.in instance by setting the HUBOT_HUBLIN_HOST env variable

```
HUBOT_HUBLIN_HOST=https://hublin.mycompany.com bin/hubot
```

Sample Interaction
------------------

```
user1>> hubot hublin yolo
hubot>> https://hubl.in/yolo
```
