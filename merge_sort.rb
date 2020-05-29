def merge(arr1, arr2)
  i = 0
  j = 0
  k = 0
  arr = []
  while i < arr1.length && j < arr2.length
    if arr1[i] <= arr2[j]
      arr[k] = arr1[i]
      k += 1
      i += 1
    else
      arr[k] = arr2[j]
      k += 1
      j += 1
    end
  end
  while i < arr1.length
    arr[k] = arr1[i]
    k += 1
    i += 1
  end
  while j < arr2.length
    arr[k] = arr2[j]
    k += 1
    j += 1
  end
  arr
end

def merge_sort(arr)
  return arr if arr.length < 2
  left = merge_sort(arr[0...arr.length / 2])
  right = merge_sort(arr[arr.length / 2...arr.length])
  merge(left, right)
end

array = []
100.times { |i| array << rand(100) }

p array
p merge_sort(array)