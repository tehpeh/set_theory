Set Theory
==========

Extends Object with nice names for set operations.

Installing
----------

    gem install set_theory

_For the whole library_

    require 'set_theory'

_Or choose the parts you want_

    require 'set_theory/member_of'
    require 'set_theory/union'

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