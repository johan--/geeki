Ext.define 'Rwiki.view.tab.Toolbar',
  extend: 'Ext.toolbar.Toolbar'
  alias: 'widget.rwikiToolbar'

  page: null

  constructor: (options) ->
    @editPageButton = Ext.create 'Ext.Button',
      id: 'edit-page'
      text: 'Edit page'
      iconCls: 'icon-edit'
      disabled: true

    @printPageButton = Ext.create 'Ext.Button',
      id: 'print-page'
      text: 'Print page'
      iconCls: 'icon-print'
      disabled: true

    @items = [
      @editPageButton,
      @printPageButton,
      '-', {
        text: 'Find page',
        iconCls: 'icon-search'
      }, {
        text: 'Find text',
        iconCls: 'icon-search'
      }, '->', {
        text: 'About',
        iconCls: 'icon-about'
      }]

    @callParent([options])

  enablePageButtons: (enabled) ->
    @editPageButton.enable(enabled)
    @printPageButton.enable(enabled)

  setPage: (page) ->
    @page = page

    enabled = @page != null
    @enablePageButtons(enabled)

  getPage: ->
    @page
