class Array
  def symmetric_difference(ary)
    (self | ary) - (self & ary)
  end
end