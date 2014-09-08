debug = require('debug') 'lifo'
{checkDefined, checkState} = require 'conditional'

class Stack
  constructor: ->
    @stack = []

  size: ->
    @stack.length

  isEmpty: ->
    do @size is 0

  peek: ->
    @stack[@stack.length - 1]

  pop: ->
    checkState not do @isEmpty, 'stack is empty'
    element = do @peek
    @stack = @stack.slice 0, @stack.length - 1
    debug "poped: #{element}"
    element

  push: (element) ->
    checkDefined element, 'cannot put undefined values in stack'
    @stack.push element
    debug "pushed: #{element}"
    do @size

module.exports = -> new Stack
