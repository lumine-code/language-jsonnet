; Local function declarations take precedence over plain local bindings.
(bind function: (id) @name) @definition.function
(bind . (id) @name . "=") @definition.variable

; Named fields and object methods, without indexing references or arguments.
(field function: (fieldname [(id) (string)] @name
  (#set! symbol.strip "^['\"]|['\"]$"))) @definition.method
(field . (fieldname [(id) (string)] @name
  (#set! symbol.strip "^['\"]|['\"]$")) . ":") @definition.property
(field . (fieldname [(id) (string)] @name
  (#set! symbol.strip "^['\"]|['\"]$")) . "::") @definition.property
(field . (fieldname [(id) (string)] @name
  (#set! symbol.strip "^['\"]|['\"]$")) . ":::") @definition.property
