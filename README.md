# middleman-phonegap

**middleman-phonegap** is a [Middleman 3.0.x](http://middlemanapp.com) project
template for [PhoneGap](http://phonegap.com) with [Haml](http://haml.info),
[Sass](http://sass-lang.com) and [CoffeeScript](http://coffeescript.org).

Using [Bundler](http://gembundler.com) and [RVM](https://rvm.io) or
[rbenv](http://rbenv.org) is **highly** recommended.

### Includes
* [Apache Cordova](http://cordova.apache.org) (v2.7.0)
* [FastClick](https://github.com/ftlabs/fastclick) (v0.6.7)
* [jQuery](http://jquery.com) (v2.0.1)

### Requires
* [PhoneGap](http://phonegap.com)
* [ios-sim](https://github.com/phonegap/ios-sim)

  If you're on OS X, [Homebrew](http://brew.sh) is the simples way to install
  [ios-sim](https://github.com/phonegap/ios-sim):
  ```bash
  $ brew install ios-sim
  ```

**Only supports iOS (for now).**

## Installation

1. Clone **middleman-phonegap** into `~/.middleman`. You will need to create
   this directory if it doesn't exist.
   ```bash
   $ git clone git://github.com/pixelsonly/middleman-phonegap.git ~/.middleman/middleman-phonegap
   ```

2. Download and install [PhoneGap](http://phonegap.com/download/) if you haven't
   already.

3. Create a PhoneGap project by running the *create* command,
   [see docs for help](http://docs.phonegap.com/en/2.7.0/guide_command-line_index.md.html#Command-Line%20Usage_ios):
   ```bash
   $ ./path/to/cordova-ios/bin/create /path/to/new_phonegap_project com.example.cordova_project_name PhonegapProjectName
   ```

4. Initialize Middleman with the template on the PhoneGap project you just
   created:
   ```bash
   $ middleman init existing_phonegap_project --template=middleman-phonegap
   ```

For more help follow [Middleman's project template instructions](http://middlemanapp.com/getting-started/) or feel free to hit me up on
[Twitter](http://twitter.com/pixelsonly).

## Usage

**middleman-phonegap** hooks into the Middleman build process, merges the
compiled assets with the PhoneGap structure, compiles the iOS application and
launches the iOS Simulator with a single command.

Run
```bash
$ middleman build
```
from project root.

## LICENSE

Copyright (c) 2013 Ryan Lindsey

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
