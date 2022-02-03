array = [78679,65765,876876,65765,58787,87685,872944,979723]
def subarray(array)
a = []
b = []
c = []

count = 0
  array.each do |x|
    y = count%10

    if y == 6 || y == 9
      c.push(x)
    elsif y == 3 || y == 5 || y == 8
      b.push(x)
    else
      a.push(x)
    end
    count +=1
  end
hash = {"50%" => a, "30%" => b, "20%" => c}
return hash
end

p subarray(array)
