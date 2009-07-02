class Array
  def rand(size = 1)
    return nil if size < 1
    
    if size == 1
      return self[Kernel.rand(self.length)]
    else
      random_candidates = self.collect
      size = self.length if size > self.length
      
      (0..(size - 1)).to_a.collect do
        random_candidates.delete_at(Kernel.rand(random_candidates.length))
      end
    end
  end
end
