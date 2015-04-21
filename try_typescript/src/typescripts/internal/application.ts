/// <reference path="util/strings.ts" />

(function() {
  var foo = '     foo';
  var bar = 'bar      ';
  console.log(app.util.strings.trimLeft(foo));
  console.log(app.util.strings.trimRight(bar));
})();
