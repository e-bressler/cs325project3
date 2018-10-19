$ ->
  flashCallback = ->
    $(".alert").fadeOut(1500)
  $(".alert").bind 'click', (ev) =>
    $(".alert").fadeOut(200)
  setTimeout flashCallback, 1000