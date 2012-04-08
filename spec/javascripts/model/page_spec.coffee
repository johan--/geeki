describe "Geeki.model.Page", ->
  Page = Geeki.model.Page

  describe ".load(id)", ->
    id = 1
    page = null

    beforeEach ->
      Page.load id,
        success: (loadedPage) ->
          page = loadedPage

      callback = -> page != null
      waitsFor callback,
        "load never completed", 4000

    it "should load the page", ->
      expect(page).toBeDefined()
      expect(page.getId()).toEqual(id)
      expect(page.get('text')).toEqual('Page #1')
