(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var strings = require('./util/strings');
var foo = '     foo';
var bar = 'bar      ';
console.log(strings.trimLeft(foo));
console.log(strings.trimRight(bar));

},{"./util/strings":2}],2:[function(require,module,exports){
function trimLeft(str) {
    return str.replace(/^\s+/, '');
}
exports.trimLeft = trimLeft;
function trimRight(str) {
    return str.replace(/\s+$/, '');
}
exports.trimRight = trimRight;

},{}]},{},[1]);
