Set Theory
==========

Extends Object and Array with nice names for set operations.

See the [Set](http://www.ruby-doc.org/stdlib/libdoc/set/rdoc/index.html) class for a library that doesn't pollute your Objects and Arrays.

Installing
----------

    gem install set_theory

_For the whole library_

    require 'set_theory'

_Or choose the parts you want_

    require 'set_theory/member_of'
    require 'set_theory/union'
    require 'set_theory/intersection'
    require 'set_theory/difference'
    require 'set_theory/symmetric_difference'

Usage
-----

Development and Testing
-----------------------

#### Requirements

* rake
* bundler
* gem-release
* rspec

_Install dependencies_

    bundle install

_Then run the specs_

    rake

TODO
----

* Possibly deal with type errors on parameter to member_of?
* Add aliases for other set operations.
* Add methods for missing set operations.

Rationale
---------
Yes, I know about [this patch](https://github.com/rails/rails/pull/265), but I prefer `Object#member_of?` and `!Object#member_of?`.

Copyright
---------
See LICENSE for details.

_Hosted at [RubyGems](http://rubygems.org/gems/set_theory)_