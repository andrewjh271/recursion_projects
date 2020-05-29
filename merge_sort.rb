def merge(arr1, arr2)
  arr = []
  until arr1.empty? || arr2.empty?
    if arr1.first < arr2.first
      arr << arr1.shift
    else
      arr << arr2.shift
    end
  end
  arr << arr1.shift until arr1.empty?
  arr << arr2.shift until arr2.empty?
  arr
end

def merge_sort(arr)
  return arr if arr.length < 2
  left = merge_sort(arr[0...arr.length / 2])
  right = merge_sort(arr[arr.length / 2...arr.length])
  merge(left, right)
end

array = []
40.times { |i| array << rand(100) }

p array
p merge_sort(array)