describe 'stack test', ->
  it 'basic stack operations', ->
    stack = do lifo
    assert.equal 0, do stack.size
    assert.ok do stack.isEmpty
    wrapper = -> do stack.pop
    assert.throws wrapper, 'stack is empty'
    assert.equal 1, stack.push 10
    assert.equal 1, do stack.size
    assert.notOk do stack.isEmpty
    assert.equal 10, do stack.peek
    assert.equal 2, stack.push 50
    assert.equal 50, do stack.peek
    assert.equal 50, do stack.pop
    assert.equal 10, do stack.pop
    assert.equal 0, do stack.size
    assert.ok do stack.isEmpty

  it 'mixed data in stack', ->
    stack = do lifo
    assert.equal 1, stack.push 'a'
    assert.equal 2, stack.push name: 'test'
    assert.equal 3, stack.push false
    assert.equal 4, stack.push [4, 5, 6]
    assert.equal 5, stack.push 20
    assert.equal 5, do stack.size
    assert.equal 20, do stack.pop
    assert.deepEqual [4, 5, 6], do stack.pop
    assert.equal false, do stack.pop
    assert.deepEqual {name: 'test'}, do stack.pop
    assert.equal 'a', do stack.pop
    assert.equal 0, do stack.size

  it 'undefined and null values', ->
    stack = do lifo
    assert.equal 1, stack.push null
    assert.equal null, do stack.peek
    assert.equal 1, do stack.size
    assert.equal null, do stack.pop
    wrapper = -> stack.push {}.x
    assert.throws wrapper, 'cannot put undefined values in stack'
