# Description
#   Hubot script to interact with the free videochat service Hubl.in
#
# Commands:
#   hubot hublin <name> - Creates a new conference with the given <name>
#   hubot hublin - Sends back the hublin base URL
#
# Notes:
#   You can configure the hublin instance to use by setting the HUBOT_HUBLIN_URL env variable.
#
# Author:
#   Christophe Hamerling - @linagora

DEFAULT_HUBLIN_URL = 'https://hubl.in';
HUBLIN_URL = process.env.HUBOT_HUBLIN_URL || DEFAULT_HUBLIN_URL;

module.exports = (robot) ->

  robot.respond /hublin (.*)/i, (msg) ->
    roomname = msg.match[1]
    msg.reply "#{HUBLIN_URL}/#{roomname}"

  robot.respond /hublin$/i, (msg) ->
    msg.reply HUBLIN_URL
