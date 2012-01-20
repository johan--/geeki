Ext.define 'Geeki.controller.tree.Panel',
  extend: 'Ext.app.Controller'

  views: [
    'tree.Panel'
  ]

  stores: [
    'PageNodes',
    'Pages'
  ]

  refs: [
      selector: 'geekiTreePanel',
      ref: 'treePanel'
    ,
      selector: 'geekiTabPanel',
      ref: 'tabPanel'
  ]

  init: ->
    console.log('TreePanel#init', arguments)

    @application.on GeekiEvent.lastPageClosed, =>
      @getTreePanel().unselectNode()

    @control
      geekiTreePanel:
        itemclick: @_onNodeClick,
        itemcontextmenu: @_onNodeContextMenu

  _onNodeClick: (view, pageNode) ->
    console.log('TreePanel#_onNodeSelect', arguments)

    pageId = pageNode.getId()
    tabPanel = @getTabPanel()
    tab = tabPanel.findPageTabById(pageId)

    unless tab
      Geeki.model.Page.load pageId,
        success: (page) =>
          console.log('Page#load', arguments)
          @application.fireEvent('geeki:pageLoaded', page)

          tab = Ext.create('Geeki.view.tab.PageTab', page: page)
          tabPanel.add(tab)
          tabPanel.setActiveTab(tab)
    else
      tabPanel.setActiveTab(tab)

  _onNodeContextMenu: (view, pageNode, item, index, event) ->
    console.log('TreePanel#_onNodeContextMenu', arguments)

    # display the context menu
    menu = @_getContextMenu()
    menu.showFor(pageNode, event.getXY())

    event.stopEvent()

  _getContextMenu: ->
    @_contextMenu ||= Ext.create('Geeki.view.tree.ContextMenu')
