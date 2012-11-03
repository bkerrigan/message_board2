class MessageBoard2.Views.PostForm extends Backbone.View
  el: '#post_form'
  template: JST['posts/post_form']

  initialize: (options) ->
    @data = if options isnt undefined then options.data else {}

  render: ->
    $(@$el).html(@template())
    $("##{key}").val("#{value}") for key, value of @data

  get_post_data: () ->
    $inputs = $(".post_input")
    $.each $inputs, _.bind((i, input) ->
      @data["#{input.id}"] = input.value
    , @)

    @data
