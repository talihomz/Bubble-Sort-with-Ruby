def bubble_sort(array)
  bubble_sort_by(array) { |a, b| a <=> b }
end

def bubble_sort_by(array)
  stop = false

  until stop do
    stop = true
    for a in (0...array.length - 1)

      res = yield(array[a], array[a + 1])
      if res == 1
        array[a], array[a + 1] = array[a + 1], array[a]
        stop = false
      end
    end
  end

  return array
end

p bubble_sort([4,3,78,2,0,2])

p bubble_sort_by(["hi","hello","hey"]) { |a, b| a.length <=> b.length }
