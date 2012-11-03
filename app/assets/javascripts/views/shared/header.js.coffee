class MessageBoard2.Views.Header extends Backbone.View
  el: '#header'
  template: JST['shared/header']

  render: ->
    $(@el).html(@template())

