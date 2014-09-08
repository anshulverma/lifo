LIFO
==================

[![Build Status](https://travis-ci.org/anshulverma/lifo.svg?branch=master)](https://travis-ci.org/anshulverma/lifo)
[![Dependency Status](https://gemnasium.com/anshulverma/lifo.svg)](https://gemnasium.com/anshulverma/lifo)
[![Coverage Status](https://img.shields.io/coveralls/anshulverma/lifo.svg)](https://coveralls.io/r/anshulverma/lifo?branch=master)
[![NPM version](https://badge.fury.io/js/lifo.svg)](http://badge.fury.io/js/lifo)

[![NPM](https://nodei.co/npm/lifo.png?stars=true&downloads=true)](https://nodei.co/npm/lifo/)

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc/generate-toc again -->
**Table of Contents**

- [LIFO](#lifo)
    - [Summary](#summary)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Building](#building)
    - [Testing](#testing)
    - [Documentation](#documentation)
    - [Build + Test + Document](#build--test--document)
    - [Contributing](#contributing)
    - [Author](#author)
    - [License](#license)

<!-- markdown-toc end -->

## Summary

This is a LIFO (stack) implementation along with all the basic operations that come with
it. Currently these operations are supported on the stack data structure:

+ `size`   : get the count of elements on the stack
+ `isEmpty`: check if the stack is empty or not
+ `push`   : push a element on the stack (returns the size after pushing)
+ `peek`   : peek (without removing) the element that the next `pop` call will return
+ `pop`    : pop and get the last pushed element from the stack

## Installation

``` bash
$ npm install lifo
```

## Usage

Here is a example usage (output are shown in comments):

``` js
var lifo = require('lifo');

lifo.push('some string');
console.log(lifo.peek());  // some string
lifo.push(100);
console.log(lifo.size());  // 2
console.log(lifo.pop());   // 100
```

## Debug

If you want to enable debug output for this module, just set environment
variable `DEBUG` to `"lifo"`. This will print log messages that might
look like this (taken from the test output of this module):

![Sample debug output](https://raw.githubusercontent.com/anshulverma/lifo/master/docs/images/debug-sample.png "Sample of debug output")

## Building

To get the js source generated form coffee script:

``` bash
$ grunt coffee
```

This will put all js files in `lib` folder.

## Testing

To execute tests, make sure
[grunt](https://github.com/gruntjs/grunt-cli) is installed. Then run:

``` bash
$ grunt test
```

Before testing, this task will perform a lint check using
[coffeelint](http://www.coffeelint.org/).  Tests will be executed if and
only if linting succeeds.

The `default` task of `grunt` will run this command as well. So, just
typing `grunt` and pressing RET is also sufficient to run tests.

## Documentation

Documentation is generated using
[docco](https://github.com/jashkenas/docco) and placed in `docs`
folder. To build documentation:

``` bash
$ grunt docs
```

## Build + Test + Document

The `build` task of `grunt` will check linting, test everything,
generate docs and build javascript source. So, to execute:

``` bash
$ grunt build
```

## Contributing

Feel free to make a change and issue a pull request if you have a patch.

If you have a feature request or if you find a bug, please open a issue.

## Author

[Anshul Verma](http://anshulverma.github.io/) ::
[anshulverma](https://github.com/anshulverma) ::
[@anshulverma](http://twitter.com/anshulverma)

## License

The MIT License (MIT)

Copyright (c) 2014 Anshul Verma

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
