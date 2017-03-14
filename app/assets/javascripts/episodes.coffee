# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  popTime = 5000

  $('.critter-background').each ->
    $critter = $(this)

    rand = ->
      Math.round(Math.random() * (popTime - 500)) + 500

    popOut = ->
      $critter.animate(left: 0)
      setTimeout popIn, rand()

    popIn = ->
      $critter.animate(left: -100)
      setTimeout popOut, rand()

    setTimeout popOut, rand()
