Ext.define('Rwiki.view.TabPanel', {
  extend: 'Ext.tab.Panel',
  requires: ['Rwiki.view.Toolbar'],
  alias: 'widget.rwikiTabPanel',

  title: 'Rwiki TabPanel',
  items: [],
  tbar: Ext.create('Rwiki.view.Toolbar'),

  findPageTabById: function(id) {
    return this.items.findBy(function(tab) {
      return tab.getPageRecord().getId() === id;
    });
  }
});
