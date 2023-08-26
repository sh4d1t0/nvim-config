return function ()
  local todoComments = require("todo-comments")

  if not todoComments then
    print("ToDo Comments not found")
    return
  end

  todoComments.setup({})
end
