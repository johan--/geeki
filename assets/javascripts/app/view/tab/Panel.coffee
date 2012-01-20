Ext.define 'Geeki.view.tab.Panel',
  extend: 'Ext.tab.Panel'
  alias: 'widget.geekiTabPanel'

  tbar: Ext.create('Geeki.view.tab.Toolbar')
  items: []

  findPageTabById: (id) ->
    @items.findBy (tab) ->
      tab.getPage().getId() == id

  hasTabs: ->
    @items.length > 0
