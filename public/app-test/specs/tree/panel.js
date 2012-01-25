describe("Users", function () {
  var store = null, controller = null;

  beforeEach(function () {
    if (!controller) {
      controller = Application.getController('tree.Panel');
    }

    if (!store) {
      store = controller.getStore('PageNodes');
    }

    expect(store).toBeDefined();

    waitsFor(
      function () {
        return !store.isLoading();
      },
      "load never completed",
      4000
    );
  });

  it("should be loaded", function() {
    expect(store.isLoading()).toBeFalsy();
  });

  describe("onTreeNodeClick()", function() {
    it("should do something", function() {
      var node = store.getRootNode();
      controller.onTreeNodeClick(null, node);
    });
  });

});
