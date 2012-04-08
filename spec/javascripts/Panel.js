(function() {

  describe("Geeki.controller.tree.Panel", function() {
    var controller, store;
    store = null;
    controller = null;
    beforeEach(function() {
      var callback;
      controller = Application.getController('tree.Panel');
      store = controller.getStore('PageNodes');
      expect(store).toBeDefined();
      callback = function() {
        return !store.isLoading();
      };
      return waitsFor(callback, "load never completed", 4000);
    });
    it("should be loaded", function() {
      return expect(store.isLoading()).toBeFalsy();
    });
    return describe(".onTreeNodeClick", function() {
      return controller.onTreeNodeClick(null, pageNode);
    });
  });

}).call(this);
