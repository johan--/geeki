Ext.define 'Rwiki.view.tab.Panel',
  extend: 'Ext.tab.Panel'
  alias: 'widget.rwikiTabPanel'

  tbar: Ext.create('Rwiki.view.tab.Toolbar')
  items: []

  findPageTabById: (id) ->
    @items.findBy (tab) ->
      tab.getPage().getId() == id

  hasTabs: ->
    @items.length > 0
