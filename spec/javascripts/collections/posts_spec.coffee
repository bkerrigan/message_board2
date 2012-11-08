describe "Posts Collection", ->
  it "should exist", ->
    expect(MessageBoard2.Collections.Posts).toBeDefined()

  describe "handling models", ->
    beforeEach ->
      @model_id = 1
      @collection = new MessageBoard2.Collections.Posts
      @model = new MessageBoard2.Models.Post
        id: @model_id
        title: "Test title"
        name: "Timmy Tester"
        message: "Testing posts collection"

    it "should add a model", ->
      @collection.add [@model]
      expect(@collection.length).toEqual(1)

    it "should find a model by id", ->
      @collection.add [@model]
      post = @collection.get(@model_id)
      expect(post.get("id")).toEqual(@model_id)

    it "should remove a model", ->
      @collection.add [@model]
      @collection.remove [@model]
      expect(@collection.length).toEqual(0)
