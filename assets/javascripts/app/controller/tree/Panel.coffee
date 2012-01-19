Ext.define 'Rwiki.controller.tree.Panel',
  extend: 'Ext.app.Controller'

  views: [
    'tree.Panel'
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

  _onNodeSelect: (rowModel, pageNode, index, opts) ->
    console.log('TreePanel#_onNodeSelect', arguments)

    pageId = pageNode.getId()
    panel = @getTabPanel()
    tab = panel.findPageTabById(pageId)
    unless tab
      Rwiki.model.Page.load pageId,
        success: (page) =>
          console.log('Page#load', arguments)
          @application.fireEvent('rwiki:pageLoaded', page)

          tab = Ext.create('Rwiki.view.tab.PageTab', page: page)
          panel.add(tab)

    panel.setActiveTab(tab)

  _onNodeContextMenu: (view, pageNode, item, index, event) ->
    console.log('TreePanel#_onNodeContextMenu', arguments)

    # display the context menu
    menu = @_getContextMenu()
    menu.showFor(pageNode, event.getXY())

    event.stopEvent()

  _getContextMenu: ->
    @_contextMenu ||= Ext.create('Rwiki.view.tree.ContextMenu')
