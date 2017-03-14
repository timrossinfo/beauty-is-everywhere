# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  popDelay = 10000
  popTime = 2000

  $('.critter-background').each ->
    $critter = $(this)

    rand = (baseTime) ->
      Math.round(Math.random() * (baseTime - 500)) + 500

    popOut = ->
      $critter.animate(left: 0)
      setTimeout popIn, rand(popTime)

    popIn = ->
      $critter.animate(left: -100)
      setTimeout popOut, rand(popDelay)

    setTimeout popOut, rand(popDelay)
