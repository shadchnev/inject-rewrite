class Array

  def shoot args=nil, &block
    result = args || first
    start = args.nil? ? 1 : 0
    for i in start..self.length-1
      result = yield result, self[i]
    end
    result
  end

end
