Ext.define 'Geeki.view.tab.Panel',
  extend: 'Ext.tab.Panel'
  alias: 'widget.geekiTabPanel'

  tbar: Ext.create('Geeki.view.tab.Toolbar')
  items: []

  findPageTabById: (id) ->
    @items.findBy (tab) ->
      tab.getPage().getId() == id

  createTabFor: (page) ->
    tab = Ext.create('Geeki.view.tab.PageTab', page: page)
    @add(tab)
    @setActiveTab(tab)

  hasTabs: ->
    @items.length > 0
