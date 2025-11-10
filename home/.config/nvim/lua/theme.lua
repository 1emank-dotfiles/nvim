local new = {
    ['@lsp.type.class         '] = '@type', -- Identifiers that declare or reference a class type
    ['@lsp.type.comment       '] = '', -- Tokens that represent a comment
    ['@lsp.type.decorator     '] = '@function', -- Identifiers that declare or reference decorators and annotations
    ['@lsp.type.enum          '] = '', -- Identifiers that declare or reference an enumeration type
    ['@lsp.type.enumMember    '] = '', -- Identifiers that declare or reference an enumeration property, constant, or member
    ['@lsp.type.event         '] = '', -- Identifiers that declare an event property
    ['@lsp.type.function      '] = '', -- Identifiers that declare a function
    ['@lsp.type.interface     '] = '', -- Identifiers that declare or reference an interface type
    ['@lsp.type.keyword       '] = '', -- Tokens that represent a language keyword
    ['@lsp.type.macro         '] = '', -- Identifiers that declare a macro
    ['@lsp.type.method        '] = '', -- Identifiers that declare a member function or method
    ['@lsp.type.modifier      '] = '', -- Tokens that represent a modifier
    ['@lsp.type.namespace     '] = '', -- Identifiers that declare or reference a namespace, module, or package
    ['@lsp.type.number        '] = '', -- Tokens that represent a number literal
    ['@lsp.type.operator      '] = '', -- Tokens that represent an operator
    ['@lsp.type.parameter     '] = '', -- Identifiers that declare or reference a function or method parameters
    ['@lsp.type.property      '] = '', -- Identifiers that declare or reference a member property, member field, or member variable
    ['@lsp.type.regexp        '] = '', -- Tokens that represent a regular expression literal
    ['@lsp.type.string        '] = '', -- Tokens that represent a string literal
    ['@lsp.type.struct        '] = '', -- Identifiers that declare or reference a struct type
    ['@lsp.type.type          '] = '', -- Identifiers that declare or reference a type that is not covered above
    ['@lsp.type.typeParameter '] = '', -- Identifiers that declare or reference a type parameter
    ['@lsp.type.variable      '] = '', -- Identifiers that declare or reference a local or global variable
    ['@lsp.mod.abstract       '] = '', -- Types and member functions that are abstract
    ['@lsp.mod.async          '] = '', -- Functions that are marked async
    ['@lsp.mod.declaration    '] = '', -- Declarations of symbols
    ['@lsp.mod.defaultLibrary '] = '', -- Symbols that are part of the standard library
    ['@lsp.mod.definition     '] = '', -- Definitions of symbols, for example, in header files
    ['@lsp.mod.deprecated     '] = '', -- Symbols that should no longer be used
    ['@lsp.mod.documentation  '] = '', -- Occurrences of symbols in documentation
    ['@lsp.mod.modification   '] = '', -- Variable references where the variable is assigned to
    ['@lsp.mod.readonly       '] = '', -- Readonly variables and member fields (constants)
    ['@lsp.mod.static         '] = '', -- Class members (static members)
}

local links = {
  ["@lsp.type.class"] = "@type",
  ["@lsp.type.struct"] = "@type",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.type"] = "@type",
  ["@lsp.type.interface"] = "@type",
  ["@lsp.type.function"] = "@function",
  ["@lsp.type.method"] = "@function.call",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.parameter"] = "@parameter",
  ["@lsp.type.variable"] = "@variable",
  ["@lsp.type.namespace"] = "@namespace",
  ["@lsp.type.enumMember"] = "@constant",
}

for newgroup, oldgroup in pairs(links) do
  vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
end

vim.api.nvim_set_hl(0, "@function", { fg = "#ffff00", bold = true })
vim.api.nvim_set_hl(0, "@type", { fg = "#00ff00", italic = true, bold = true })
-- vim.api.nvim_set_hl(0, "@variable", { fg = "#e5e9f0" })
vim.api.nvim_set_hl(0, "@constant", { italic = true })

return {}


-- Identifiers that declare or reference a class type
-- Tokens that represent a comment
-- Identifiers that declare or reference decorators and annotations
-- Identifiers that declare or reference an enumeration type
-- Identifiers that declare or reference an enumeration property, constant, or member
-- Identifiers that declare an event property
-- Identifiers that declare a function
-- Identifiers that declare or reference an interface type
-- Tokens that represent a language keyword
-- Identifiers that declare a macro
-- Identifiers that declare a member function or method
-- Tokens that represent a modifier
-- Identifiers that declare or reference a namespace, module, or package
-- Tokens that represent a number literal
-- Tokens that represent an operator
-- Identifiers that declare or reference a function or method parameters
-- Identifiers that declare or reference a member property, member field, or member variable
-- Tokens that represent a regular expression literal
-- Tokens that represent a string literal
-- Identifiers that declare or reference a struct type
-- Identifiers that declare or reference a type that is not covered above
-- Identifiers that declare or reference a type parameter
-- Identifiers that declare or reference a local or global variable
-- Types and member functions that are abstract
-- Functions that are marked async
-- Declarations of symbols
-- Symbols that are part of the standard library
-- Definitions of symbols, for example, in header files
-- Symbols that should no longer be used
-- Occurrences of symbols in documentation
-- Variable references where the variable is assigned to
-- Readonly variables and member fields (constants)
-- Class members (static members)
