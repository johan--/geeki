(function() {

  describe("Basic Assumptions", function() {
    it("has ExtJS4 loaded", function() {
      expect(Ext).toBeDefined();
      expect(Ext.getVersion()).toBeTruthy();
      return expect(Ext.getVersion().major).toEqual(4);
    });
    return it("has loaded AM code", function() {
      return expect(Geeki).toBeDefined();
    });
  });

}).call(this);
