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

    @reloadPageButton = Ext.create 'Ext.Button',
      id: 'reload-page'
      text: 'Reload page'
      disabled: true

    @items = [
      @editPageButton,
      @reloadPageButton,
      @printPageButton,
      '-',
        text: 'Find page',
        iconCls: 'icon-search'
      ,
        text: 'Find text',
        iconCls: 'icon-search'
      '->',
        text: 'About',
        iconCls: 'icon-about'
      ]

    @callParent([options])

  disablePageButtons: (disabled) ->
    @editPageButton.setDisabled(disabled)
    @reloadPageButton.setDisabled(disabled)
    @printPageButton.setDisabled(disabled)

  setPage: (page) ->
    @page = page

    disabled = @page == null
    @disablePageButtons(disabled)

  getPage: ->
    @page
