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
    require 'set_theory/difference'
    require 'set_theory/intersection'
    require 'set_theory/power_set'
    require 'set_theory/symmetric_difference'
    require 'set_theory/union'

Usage
-----

#### Membership (Object#member_of?)

Returns true if the receiving object is found within an array.

    1.member_of? [1, 2, 3]     #=> true

#### Difference (Array#difference)

Returns an array with the objects of the receiving array that are not in the passed array.

    [1, 2, 3].difference [2, 3, 4]    #=> [1]
    [2, 3, 4].difference [1, 2, 3]    #=> [4]

#### Intersection (Array#intersection)

Returns an array containing only the objects that are members of both the receiving and passed array.

    [1, 2, 3].intersection [2, 3, 4]    #=> [2, 3]

#### Power set (Array#power_set)

Returns an array with all possible subsets of the receiving array.

    [1, 2, 3].power_set    #=> [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

#### Symmetric difference (Array#symmetric_difference)

Returns an array containing only the objects that are in one of the receiving or passed arrays, but not both.

    [1, 2, 3].symmetric_difference [2, 3, 4]    #=> [1, 4]

#### Union (Array#union)

Returns an array containing all members the receiving and passed arrays.

    [1, 2, 3].union [2, 3, 4]    #=> [1, 2, 3, 4]

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

    bundle exec rake

Rationale
---------
Yes, I know about [this patch](https://github.com/rails/rails/pull/265), but I prefer `Object#member_of?` and `!Object#member_of?`.

References
----------
[http://en.wikipedia.org/wiki/Set_theory](http://en.wikipedia.org/wiki/Set_theory)

[http://rosettacode.org/wiki/Power_Set#Ruby](http://rosettacode.org/wiki/Power_Set#Ruby)

Copyright
---------
See LICENSE for details.

_Hosted at [RubyGems](http://rubygems.org/gems/set_theory)_