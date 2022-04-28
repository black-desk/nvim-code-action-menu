local WorkspaceEdit = require(
'code_action_menu.lsp_objects.edits.workspace_edit'
)

local BaseAction = {}

function BaseAction:new(server_data, offset_encoding)
  vim.validate({ ['server data'] = { server_data, 'table' } })
  offset_encoding = offset_encoding or 'utf-16'

  local instance = { server_data = server_data, offset_enc = offset_encoding }
  setmetatable(instance, self)
  self.__index = self
  return instance
end

function BaseAction:get_title()
  return self.server_data.title or 'missing title'
end

function BaseAction:get_kind()
  return 'undefined'
end

function BaseAction:get_name()
  return 'undefined'
end

function BaseAction:get_disabled_reason()
  return 'undefined'
end

function BaseAction:is_preferred()
  return false
end

function BaseAction:is_disabled()
  return false
end

function BaseAction:get_workspace_edit()
  return WorkspaceEdit:new()
end

function BaseAction:execute()
  error(
  'Base actions can not be executed, but derived classes have to implement it!'
  )
end

return BaseAction
