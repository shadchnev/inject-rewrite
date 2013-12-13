class Array

  def shoot &block
    result = self.first
    for i in 1..self.length-1
      result = yield result, self[i]
    end
    result
  end

end
