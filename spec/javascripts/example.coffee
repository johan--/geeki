describe "Basic Assumptions", ->
  it "has ExtJS4 loaded", ->
    expect(Ext).toBeDefined()
    expect(Ext.getVersion()).toBeTruthy()
    expect(Ext.getVersion().major).toEqual(4)

  it "has loaded AM code", ->
    expect(Geeki).toBeDefined()
