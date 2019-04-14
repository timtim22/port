ready = ->
  Typed.new '.element',
    strings: [
      'Hi, Its Taimoor'
      "Ruby on Rails Developer<br> & Former Baby :>"
    ]
    typeSpeed: 50
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready