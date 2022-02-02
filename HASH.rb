class Hash

  def [](key)
    value = (fetch key, nil) || (fetch key.to_s, nil) || (fetch key.to_sym, nil)
  end

  def []=(key,val)
    if (key.is_a? String) || (key.is_a? Symbol) #clear if setting str/sym
        self.delete key.to_sym
        self.delete key.to_s
    end
    merge!({key => val})
  end
end

  newhash = Hash.new
  newhash = {a: 1,b: 2}

  p newhash["a"]
  p newhash[:a]
