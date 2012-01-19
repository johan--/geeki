Ext.define 'Rwiki.view.tree.ContextMenu',
  extend: 'Ext.menu.Menu'
  alias: 'widget.rwikiTreeContextMenu'

  pageNode: null

  constructor: (options) ->
    @createMenuItem = Ext.create 'Ext.menu.Item',
      id: 'create'
      text: 'Create page'
      iconCls: 'icon-add-page'

    @editMenuItem = Ext.create 'Ext.menu.Item',
      id: 'edit'
      text: 'Edit page'
      iconCls: 'icon-edit'

    @renameMenuItem = Ext.create 'Ext.menu.Item',
      id: 'rename'
      text: 'Rename page'
      iconCls: 'icon-rename-page'

    @deleteMenuItem = Ext.create 'Ext.menu.Item',
      id: 'delete'
      text: 'Delete page'
      iconCls: 'icon-delete-page'

    @items = [
      @createMenuItem,
      '-',
      @editMenuItem,
      @renameMenuItem,
      @deleteMenuItem
    ]

    @callParent([options])

  showFor: (pageNode, xy) ->
    @setPageNode(pageNode)
    @showAt(xy)

  getPageNode: ->
    @pageNode

  setPageNode: (pageNode) ->
    @pageNode = pageNode
