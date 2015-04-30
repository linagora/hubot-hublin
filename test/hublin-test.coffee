chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hublin', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/hublin')(@robot)

  it 'registers 2 respond listener', ->
    expect(@robot.respond).to.have.been.calledTwice;

  it 'registers /hublin/ respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/hublin$/i);
    expect(@robot.respond).to.have.been.calledWith(/hublin (.*)/i);
