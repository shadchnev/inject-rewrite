class Array

  def shoot args=nil, &block
    result = args.nil? ? self.first : args
    for i in 1..self.length-1
      result = yield result, self[i]
    end
    result
  end

end
