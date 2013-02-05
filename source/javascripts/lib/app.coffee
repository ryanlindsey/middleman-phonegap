root = exports ? this

root.init = ->
  document.addEventListener('deviceready', onDeviceReady, false)

root.onDeviceReady = ->
  console.log 'Phonegap -> device ready'

init()

$ ->
  console.log 'DOM ready'