#This program show how an array based list would be created using
#C++ classes. The list of integers is a type that can be used to
#create objects. The operations are:
#1 append an element 2 remove first element
#3 sort the list 4 find element in the list
#5 list comparison 6 length of the list
#7 display the list

class IntList  #must be capitalized
  #private
=begin
  theList
  currentSize
  maxSize
Public:
    intList() /constructor
    ~intList() /deconstructor
    append(value)
    removeFirst()
    sort()
    find(value)
    operator==(intList & rhs)??
    length()
    display()
=end
  def initialize()
    @theList = Array.new(10)
    @maxSize = 10
    @currentSize = 0
  end
    class << self
      attr_accessor :currentSize
      attr_accessor :maxSize
      attr_accessor :theList



  end

  def append(value)
    if @currentSize == @maxSize
      @maxSize *= 2
      newList = new int[@maxSize]

      #copy old list to new list
      for i in @currentSize
        newList[i] = @theList[i]
      end
      @theList = newList
    end

    @currentSize = @currentSize + 1
    @theList[@currentSize - 1] = value
  end

  def removefirst()
    first = @theList[0]
    #shift all valure to the left by 1
    for i in 1..@currentSize
      @theList[i-1] = @theList[i]
    end

    @currentSize = @currentSize - 1
    return first
  end

  def length()
    return @currentSize
  end

  def find(value)
    i = 0

    while i < @currentSize do
      if @theList[i] == value
        return true
      end
      i = i + 1
    end
    return false
  end

  def display()
    i = 0

    while i < @currentSize
      puts "#{i} : #{@theList[i]}"
      i = i + 1
    end
  end

  ##operator==(const intList& rhs)

  def sort()
    for i in 0..(@currentSize-1)
      for j in 1..(@currentSize-1)
        if @theList[i] > @theList[j]
          temp = @theList[i]
          @theList[i] = @theList[j]
          @theList[j] = temp
        end
        j = j +1
      end
      i = i + 1
    end
  end
end

list1 = IntList.new

list1.append(9)
list1.append(2)
list1.append(5)
list1.append(1)

puts "list1 has the following contents: "
list1.display()

puts "Sort the list1"

list1.sort()

list1.display()

puts "remove first from list1"
puts "removed: #{list1.removefirst()}"

list1.display()

list2 = IntList.new

list2.append(2)
list2.append(5)
list2.append(9)

puts "the contents of list2: "
list2.display()

puts "compare list1 and list2"
result = (list1 == list2) ? "the same" : "different" #FIX THIS FOR RUBY

puts result

puts "now delete one from list2 and compare to list1"
puts "removed:  #{list2.removefirst()}"
result = (list1 == list2) ? "the same " : "different" ##FIX THIS FOR RUBY
puts result

puts "list1 is length: #{list1.length()}"
puts "list2 is length: #{list2.length()}"
