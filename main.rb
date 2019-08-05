def bubble_sort array
  while  true
    swapped=false
    (array.length-1).times do |x|
      if(array[x]> array[x+1])
        tmp=array[x]
        array[x]=array[x+1]
        array[x+1]=tmp
        swapped=true
      end
    end 
    break unless swapped
  end
  array
end

array=[4,3,78,2,0,2]

puts bubble_sort array