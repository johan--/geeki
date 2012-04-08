(function() {

  describe("Geeki.model.Page", function() {
    var Page;
    Page = Geeki.model.Page;
    return describe(".load(id)", function() {
      var id, page;
      id = 1;
      page = null;
      beforeEach(function() {
        var callback;
        Page.load(id, {
          success: function(loadedPage) {
            return page = loadedPage;
          }
        });
        callback = function() {
          return page !== null;
        };
        return waitsFor(callback, "load never completed", 4000);
      });
      return it("should load the page", function() {
        expect(page).toBeDefined();
        expect(page.getId()).toEqual(id);
        return expect(page.get('text')).toEqual('Page #1');
      });
    });
  });

}).call(this);
