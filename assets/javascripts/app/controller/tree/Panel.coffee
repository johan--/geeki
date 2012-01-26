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
        itemclick: @onTreeNodeClick,
        itemcontextmenu: @onTreeNodeContextMenu

  onTreeNodeClick: (view, pageNode) ->
    console.log('TreePanel#onTreeNodeClick', arguments)

    pageId = pageNode.getId()
    tabPanel = @getTabPanel()
    tab = tabPanel.findPageTabById(pageId)

    unless tab
      mask = new Ext.LoadMask(Ext.getBody(), msg: "Loading page: '#{pageNode.get('text')}'")
      mask.show()
      sb = Ext.getCmp('geeki-status-bar')
      sb.showBusy()

      Geeki.model.Page.load pageId,
        success: (page) =>
          console.log('Page#load', arguments)
          @application.fireEvent('geeki:pageLoaded', page)

          tabPanel.createTabFor(page)
          mask.hide()
          sb.clearStatus(useDefaults: true)
    else
      tabPanel.setActiveTab(tab)

  onTreeNodeContextMenu: (view, pageNode, item, index, event) ->
    console.log('TreePanel#onTreeNodeContextMenu', arguments)

    # display the context menu
    menu = @getContextMenu()
    menu.showFor(pageNode, event.getXY())

    event.stopEvent()

  getContextMenu: ->
    @contextMenu ||= Ext.create('Geeki.view.tree.ContextMenu')
