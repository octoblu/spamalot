_ = require 'lodash'
meshblu = require 'meshblu'

class Spam
  run: =>
    _.times 1000, (i) =>
      conn = meshblu.createConnection server: 'localhost', port: 3000
      conn.on 'ready', => console.log 'ready', i
      conn.on 'notReady', => console.error 'notReady', i


(new Spam()).run()
