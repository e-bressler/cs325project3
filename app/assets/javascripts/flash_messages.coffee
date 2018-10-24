$ ->
  flashCallback = ->
    $(".alert").fadeOut(2000)
  $(".alert").bind 'click', (ev) =>
    $(".alert").fadeOut(200)
  setTimeout flashCallback, 1000