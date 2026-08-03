exports.activate = function () {};

exports.consumeHyperlinkInjection = (hyperlink) => {
  hyperlink.addInjectionPoint("source.jsonnet", {
    types: ["comment"],
  });
};

exports.consumeTodoInjection = (todo) => {
  todo.addInjectionPoint("source.jsonnet", {
    types: ["comment"],
  });
};
