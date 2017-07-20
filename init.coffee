atom.packages.onDidActivatePackage (pack) ->
  if pack.name == 'ex-mode'
    editorElement = atom.views.getView(atom.workspace.getActiveTextEditor())
    Ex = pack.mainModule.provideEx()
    Ex.registerCommand 'R', -> atom.commands.dispatch(editorElement, 'rails-transporter:open-view')
