array = [78679,65765,876876,65765,58787,87685,872944,979723]
a = []
b = []
c = []

  array.each do |x|
    y = x%100
    if y.between?(0,50)
      a.push(x)
    elsif y.between?(51,80)
      b.push(x)
    else
      c.push(x)
    end
  end
 p a
 p b
 p c
