Ext.define 'Rwiki.view.tree.Panel',
  extend: 'Ext.tree.Panel'
  alias: 'widget.rwikiTreePanel'

  title: 'Rwiki Pages'
  width: 300
  collapsible: true
  resizable: true
  store: Ext.create('Rwiki.store.PageNodes')

  findPageNodeById: (id) ->
    @store.getNodeById(id)

  selectNodeById: (id) ->
    node = @findPageNodeById(id)
    @getSelectionModel().select(node) if node

  unselectNode: ->
    @getSelectionModel().deselectAll()
