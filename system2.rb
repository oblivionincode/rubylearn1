array = [78679,65765,876876,65765,58787,87685,872944,979723]
def subarray(array)
a = []
b = []
c = []
  array.each do |x|
    y = rand(1..100)
    if y.between?(0,50)
      a.push(x)
    elsif y.between?(51,80)
      b.push(x)
    else
      c.push(x)
    end
  end
hash = {"50%" => a, "30%" => b, "20%" => c}
return hash
end

p subarray(array)
