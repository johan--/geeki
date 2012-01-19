Ext.define('Rwiki.view.tab.TabPanel', {
  extend: 'Ext.tab.Panel',
  alias: 'widget.rwikiTabPanel',

  tbar: Ext.create('Rwiki.view.tab.Toolbar'),
  items: [],

  findPageTabById: function(id) {
    return this.items.findBy(function(tab) {
      return tab.getPage().getId() === id;
    });
  },

  hasTabs: function() {
    return this.items.length > 0;
  }
});
