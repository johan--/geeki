Ext.define 'Geeki.view.tab.Toolbar',
  extend: 'Ext.toolbar.Toolbar'
  alias: 'widget.geekiToolbar'

  page: null

  constructor: (options = {}) ->
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
      iconCls: 'icon-reload'
      disabled: true

    options.items = [
      @editPageButton,
      @reloadPageButton,
      @printPageButton,
      '-',
        id: 'find-page'
        text: 'Find page',
        iconCls: 'icon-search'
      ,
        id: 'find-text'
        text: 'Find text',
        iconCls: 'icon-search'
      '->',
        id: 'about'
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
