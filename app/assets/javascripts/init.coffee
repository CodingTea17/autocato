window.Autocato ||= {}

Autocato.init = ->
  @navDrawer = new Autocato.NavDrawer('#nav_drawer', 'nav .fa-navicon', -> true)
  new Autocato.Dismissable('.flash-message button')

$(document).ready ->
  Autocato.init()

$(document).on 'turbolinks:load', ->
  new Autocato.Dismissable('.flash-message button')

  if Autocato.navDrawer.isStale()
    Autocato.navDrawer = new Autocato.NavDrawer('#nav_drawer', 'nav .fa-navicon', -> true)
