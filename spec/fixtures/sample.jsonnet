// Assertions live in the comments: `<- scope` checks the marker's own column
// on the previous non-comment line, `^ scope` checks the caret's. Scopes
// match by prefix, so the trailing `.jsonnet` segment is left off.

{
// <- punctuation.definition.object.begin.bracket.curly

  name: "demo",
//    ^ punctuation.separator.key-value
//      ^ string
//            ^ punctuation.separator.comma

  hidden:: 1,
//      ^ punctuation.separator.key-value.visibility
//         ^ constant.numeric

}
// <- punctuation.definition.object.end.bracket.curly
