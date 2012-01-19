Ext.define 'Rwiki.controller.tree.TreePanel',
  extend: 'Ext.app.Controller'

  views: [
    'tree.TreePanel'
  ]

  stores: [
    'PageNodes',
    'Pages'
  ]

  refs: [
      selector: 'rwikiTreePanel',
      ref: 'treePanel'
    ,
      selector: 'rwikiTabPanel',
      ref: 'tabPanel'
  ]

  init: ->
    console.log('TreePanel#init', arguments);

    @control
      rwikiTreePanel:
        select: @_onNodeSelect,
        itemcontextmenu: @_onNodeContextMenu

  _onNodeSelect: (rowModel, record, index, opts) ->
    self = @
    console.log('TreePanel#_onNodeSelect', arguments)

    id = record.getId()
    Rwiki.model.Page.load id,
      success: (page) ->
        console.log('Page#load', arguments)
        self.application.fireEvent('rwiki:pageLoaded', page)

        Rwiki.model.Page.setCurrentPage(page)

        panel = self.getTabPanel()
        tab = panel.findPageTabById(id)
        if (tab == null)
          tab = Ext.create 'Rwiki.view.tab.PageTab', page: page
          panel.add(tab)
        panel.setActiveTab(tab)

  _onNodeContextMenu: (view, pageNode, item, index, event) ->
    console.log('TreePanel#_onNodeContextMenu', arguments)

    # display the context menu
    menu = this._getContextMenu()
    menu.showFor(pageNode, event.getXY())

    event.stopEvent()

  _getContextMenu: ->
    @_contextMenu ||= Ext.create('Rwiki.view.tree.TreeNodeMenu')