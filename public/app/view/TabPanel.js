Ext.define('Rwiki.view.TabPanel', {
  extend: 'Ext.tab.Panel',
  alias: 'widget.rwikiTabPanel',

  requires: [
    'Rwiki.view.Toolbar'
  ],

  tbar: Ext.create('Rwiki.view.Toolbar'),
  items: [],

  findPageTabById: function(id) {
    return this.items.findBy(function(tab) {
      return tab.getPageRecord().getId() === id;
    });
  },

  hasTabs: function() {
    return this.items.length > 0;
  }
});
