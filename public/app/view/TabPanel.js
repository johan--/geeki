Ext.define('Rwiki.view.TabPanel', {
  extend: 'Ext.tab.Panel',
  alias: 'widget.rwikiTabPanel',

  title: 'Rwiki TabPanel',
  items: [],

  findPageTabById: function(id) {
    return this.items.findBy(function(tab) {
      return tab.getPageRecord().getId() === id;
    });
  }
});
