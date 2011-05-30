class Array
  # Taken from http://rosettacode.org/wiki/Power_Set#Ruby
  def power_set
    self.inject([[]]) { |set,item|
      set + set.map { |e| e + [item] }
    }
  end
end