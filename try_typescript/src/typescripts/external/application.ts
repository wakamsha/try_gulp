import strings = require('./util/strings');

var foo = '     foo';
var bar = 'bar      ';
console.log(strings.trimLeft(foo));
console.log(strings.trimRight(bar));
