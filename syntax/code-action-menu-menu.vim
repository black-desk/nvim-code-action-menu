syntax match CodeActionMenuMenuIndex '^\s\[\d\+\]'
syntax match CodeActionMenuMenuKind '(\w\+)'

highlight default link CodeActionMenuMenuIndex  Special
highlight default link CodeActionMenuMenuKind   Type
highlight default link CodeActionMenuSelection  QuickFixLine