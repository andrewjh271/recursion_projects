def fibs(n)
  arr = [0, 1]
  return arr[0...n] if n <= 2
  arr if (2...n).each { |i| arr << arr[i-1] + arr[i-2] }
end

p fibs(0) #=> []
p fibs(1) #=> [0]
p fibs(8) #=> [0, 1, 1, 2, 3, 5, 8, 13]
p fibs(16) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]

def fibs_rec(n)
  return [0, 1][0...n] if n <= 2
  array = fibs_rec(n - 1)
  array << array[-1] + array[-2]
end

p fibs_rec(0) #=> []
p fibs_rec(1) #=> [0]
p fibs_rec(8) #=> [0, 1, 1, 2, 3, 5, 8, 13]
p fibs_rec(16) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]