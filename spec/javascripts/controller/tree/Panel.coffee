describe "Geeki.controller.tree.Panel", ->
  store = null
  controller = null

  beforeEach ->
    controller = Application.getController('tree.Panel')
    store = controller.getStore('PageNodes')

    expect(store).toBeDefined()

    callback = -> !store.isLoading()
    waitsFor callback,
      "load never completed",
      4000

  it "should be loaded", ->
    expect(store.isLoading()).toBeFalsy()
