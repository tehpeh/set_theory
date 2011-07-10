class Object
  def member_of?(ary)
    if ary.respond_to? :include?
      ary.include? self
    else
      self == ary
    end
  end
end