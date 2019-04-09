ARRAY_ANSWER = %q(
    Create an array:
`array = Array.new`

Create an array with three items:
`array = Array.new(3, "Jason")`

Create an empty array with bracket notation:
`array = []`

Create an array from a string:
```"abc".chars
#=> ["a", "b", "c"]```

Create an array using brackets with three items:
`array = ["milk", "eggs", "bread"]`

Create an array using the %w notation which contains three strings:
`array = %w(milk eggs bread)`

Create an array using the %W notation which contains three strings and one is interpolated:
```item = “milk”
array = %W(#{item} eggs bread)```

Create an array using a range
```a = (1..7).to_a
#=> [1, 2, 3, 4, 5, 6, 7]
b = ("a".."d").to_a
#=> [a, b, c, d]```

How to cycle through arrays - for loop
```numbers = [1, 2, 3, 4, 5]

for number in numbers 
    puts " there are #{number} bottles!"
end
```

Cycle through array - each loop
```groceries = ["bananas", "apples", "bread", "milk"]

groceries.each do |food|
    puts "Get some #{food}"
end
``` 

**Arrays are 0 indexed, starts from 0**

Items can be added to the end of an array by using either push or <<
```arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]```

)

ARRAY2_ANSWER = %q(


**Add items** to the start of the array
`arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]`

Insert at any point
`arr.insert(3, "apple") #=> [0, 1, 2, 'apple', 3, 4, 5, 6]`
Insert mulitple things at once
```arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]```

**Removing Items**
last element with pop
```arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]```

To retrieve and at the same time remove the first item, use shift
```arr.shift #=> 1
arr #=> [2, 3, 4, 5]```

Deletes all the same
```arr = [1, 1, 3, 4]
arr.delete #=> [3, 4]```

To delete at a particular index:
```arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]```

To delete an element anywhere in the array
```arr = [1, 2, 2, 3]
arr.delete(2) #=> 2
arr #=> [1,3]```

Remove duplicate elements - non distructive uniq and distructive uniq!
```arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]```

To replace an item in an array
```arr = ["Dog", "Duck", "Mouse"]
arr[arr.index("Dog")] = "Cat"```

To sort an array - numbers and also alphabetically
`arr.sort`

**Joining Arrays**
Concatenate
`[1, 2, 2, 3] + [2, 2, 3, 4]  #=> [1, 2, 2, 3, 2, 2, 3, 4]`

Set intersection
`[1, 2, 2, 3]  &  [2, 2, 3, 4] #=> [2, 3]`

Combine two arrays without duplication - Set Union
`[1, 2, 3]  |  [2, 3, 4] #=> [1, 2, 3, 4]`


)

ARRAY3_ANSWER = %q(


**Working with an array of hashes**
```#this is your array of hashes only 2 for this example but add as may as you want
list = [
        {key1: "value1", 
        key2: "value2", 
        key3: "value3"}, 
        
        {key1: "value1", 
        key2: "value2", 
        key3: "value3"}
        ]

#function to iterate through a array of hashes and display certain key
def displaylistOfHashes(list) #list will be your array of hashes 
    list.each do |element| #for each elements hashes in list(array of hashes)
        puts "#{element[:key1]} #{element[:key2]} #{element[:key3]}" #print the value of  :key1, :key2 and :key3 for each hash in list(array of hashes)
    end
end

#call the function and pass it your array of hashes 
displaylistOfHashes(list)```

The output of above: 
```value1 value2 value3
value1 value2 value3```
)

CLASS_ANSWER = %q(
   **Classes**

**Define a class** - use PascalCase
```class Calculater
end```

**Initialize on object**
So when we create a new instance, these argumets are assigned
required parameters first
```class Person
    def initialize(name, age=nil)
        @name = name  # name stored in the instance variable @name
        @age = age
end

Person.new("Carlie")```

**Create a new instance**
`my_calc = Calculator.new`

What class is this?
`my_calc.class #=> Calculator`
`my_calc.is_a?(Calculator) #=> true`

**Define the Behaviours**
instance method - call it on a specific instance of the class
```class Calculator
    def add(number, other)
        return number + other
    end
end```

**Calling an Instance Method**
`puts my_calc.add(5, 12)`

**Scope and Getters**
Instance variables of an object are _private_ - scoped to the object. Only available inside a class. 
To access an instance variable from outside the class, we need to create an _accessor_
A method that gets the value of an instance variable is called a _getter_ (or accessor)
```def name
    return @name
end```

**Setters**
```def name=(new_name)
    @name = new_name
end```
By appending the = symbol to the method name, this is a setter. Now can change name outside the class.
```person = Person.new("Carlie")
person.name = "Giselda"
puts person.name```

**Attr_Accessor**
automatically creates the getters and setters
`attr_accessr :name :age`

only a getter
`attr_reader`
)

CLEAR_ANSWER = %q(
To clear the terminal
`puts "\e[2J\e[f"`
)

CONVERT_ANSWER = %q(
    Converting strings, integers and floats etc
```variable_name.to_s # to string
variable_name.to_f # to float
variable_name.to_i # to integer
variable_name.to_yaml # to yaml format
variable_name.to_a # converts to array
```
)

EXCEPTION_ANSWER = %q(
**Exceptions**
```
begin
    # code goes here
rescue
    # code here what happens if there is an error
    puts "You can't do that!"
    exit
end
```

another way using "raise"
```def check_age(age)
    raise ArgumentError, "Enter Positive Number" unless age > 0
end

begin
    check_age(-1)
rescue ArgumentError
    puts "That is an impossible age"
end
```
)

FUNCTION_ANSWER = %q(
    **Function/ Method for ruby**
Note that there is no ":" etc. 

    ```def method_name(parameters, here)
        # things for the function go here
    end
        ```
No need for the brackets if you don't have any parameters. 

To call a method, just use it's name. 
`method_name`

If you have put in parameters, you'll have to pass them in
`method_name(1, "Sally")`

In ruby, the variables within the methods have only local scope. You can't access the variable outside the method. 

)

GETS_ANSWER = %q(
asks for user input. The "chomp" removes an enter key at the end of the input
`gets.chomp`

string on more methods!
`gets.chomp.to_i`
)

HASH_ANSWER = %q(
**HASH / DICTIONARY**

**create a hash**
Some different ways to create a hash
`grades = { "Jane Doe" => 10, "Jim Doe" => 6 }`

`options = { :font_size => 10, :font_family => "Arial" }`

`options = { font_size: 10, font_family: "Arial" }`


Array of Hashes example (list of dictionaries)
```[ { name: “Charles”, birth_year: 1990, fav_colour: “green” },
{ name: “Zoey”, birth_year: 2003, fav_colour: “red” },
{ name: “Frank”, birth_year: 1998, fav_colour: “blue” },
{ name: “Ellen”, birth_year: 1975, fav_colour: “yellow” } ] 
  ```

Hash with an array in it (dictionary with a list within it)
`{ name: “Charles”, friends: [{name: “Zoey”}, {name: “Frank”}, {name: “Ellen}]} `

You can create new key/value pair:
`grades["Dorothy"] = 9`

or
`Person[:fav_colour] = “green”`



**How to access the value:**
Access a value by calling for it's key
`options[:font_size]  #=> 10`


Does it have this key?
`person.has_key?(:name)   #=> returns true of false`

Does it have this value?
`person.has_value?(“Charles”) #=> true or false`

What is the key for this value?
`person.key(“Charles”)   #=> :name`

How many keys?
`person.length`

Return the values as an array
`person.values`
Handy for loops, i.e. `person.values.each`

Return the keys as an array
`person.keys`


**Deleting**

clear the array
`person.clear`

delete a key
`person.delete(:fav_colour)`
)

HASH2_ANSWER = %q(


    **Iteration**
```person.each
person.each_key
person.each_value
```

iterate over both keys and values
```person.each do |k, v|
    puts "key: #{k}, value: #{v}
end```

iterate over keys
```person.each_key do |k|
    puts k
end```

iterate over values
```person.each_value do |v|
    puts v
end```

**Working with an array of hashes**
```#this is your array of hashes only 2 for this example but add as may as you want
list = [
        {key1: "value1", 
        key2: "value2", 
        key3: "value3"}, 
        
        {key1: "value1", 
        key2: "value2", 
        key3: "value3"}
    ]

#function to iterate through a array of hashes and display certain key
def displaylistOfHashes(list) #list will be your array of hashes 
    list.each do |element| #for each elements hashes in list(array of hashes)
        puts "#{element[:key1]} #{element[:key2]} #{element[:key3]}" #print the value of  :key1, :key2 and :key3 for each hash in list(array of hashes)
    end
end

#call the function and pass it your array of hashes 
displaylistOfHashes(list)```

The output of above: 
```value1 value2 value3
value1 value2 value3```
)

IF_ANSWER = %q(
    **if conditionals**. Notice no ":" etc
```if true
    # output here
elsif condition
    # output here
else conditions
    # output here
end```
        
Another way to do if statements:
`puts "you're young" if age < 30`
`puts "wear something warm" if (raining and temperature < 20`)

**Ternary**
If age is bigger than or equal to 30, it'll puts "Old", else puts "Young"
`puts (age >= 30) ? "Old" : "Young"`
Another example:
`raining ? (puts "Bring an umbrella") : (puts "Enjoy the sunshine")`
Note the brackets when text longer than a word...


**'unless'** is confusing and means the opposite of 'if', so it runs if the parameters are false.
```unless variable >= 50 # variable is NOT bigger than or equal to 50
    # output here
end```

**Case**
```fruit = "pear"
case fruit
when "pear"
    # do this
when "apple"
    # do this
else 
    # this ```

Case can have multiple items and also a range. 
Can also do a conditional statement if you put the variable again
```age = 42
case age
when 0...12
    puts "child"
when 13, 14, 15, 16, 17
    puts "teenager"
when age > 50
    puts "you're old"
else
    puts "adult"
end```
)

LENGTH_ANSWER = %q(
Getting the length of a string in ruby: 
    `variable_name.length`
)

LOOP_ANSWER = %q(
**Loops/Conditionals for Ruby**
**next** goes back to the top of the loop
unless means "not"
break ends the loop.
```loop do 
    x += 1
    next unless (x % 2) == 0
    puts x
    break if x >= 10
end
```
So in the above example, the loop skips over the number if it is odd, and puts the number if it is not odd, and breaks if x is bigger than or equal to 10.

Also note:
`redo` causes the current loop iteration to repeat
`retry` causes the whole loop to start again from the begining

**While**
```while y <= 10
    y += 1
    puts y
end```

**Until**
```until a >= 0
    a+= 1
    next unless (a % 2) == 0
    puts a
end
```
**Times do**
```4.times do
    puts "hello"
end```
change the number, does it set amount of times


How to cycle through arrays - for loop
```numbers = [1, 2, 3, 4, 5]

for number in numbers 
    puts " there are #{number} bottles!"
end
```

Cycle through array each 
```groceries = ["bananas", "apples", "bread", "milk"]

groceries.each do |food|
    puts "Get some #{food}"
end
``` 

`animals.each {|animal| puts "animal is #{animal}"}`

cycling through numbers - a range:
```(1..10).each do |i|
    puts "number #{i}"
end

for year in 2000...2015
    puts year
end
    ```
Two dots means it is inclusive of the two numbers
`0..2 #=> 0, 1, 2`

Three dots means it is exclusive of the last number
`0...2 #=> 0, 1`
)

PASSWORD_ANSWER = %q(
**Passwords**

_Dependency_
`require 'io/console'`

_Gets password_
`password_guess = IO::console.getpass`
)

PRINT_ANSWER = %q(
**puts / print**
`puts "Hello World"`

Some things you can do with puts:
    ```
    # puts can print multiple things, each on a new line
    puts(1, 2, "dog", "cat")

    # don't have to use brackets
    puts 1, 2, "dog", "cat"

    # print will join these two strings together on same line
    print("a", "b")

    # also can use without brackets
    print "a", "b"
    
    # 'p' acts like .inspect```

You can put sums inside the string
`puts "Here is a string with math #{3 + 5}"`
 )  

SHEBANG_ANSWER = %q(
To run a file with a shebang, place this at the top of your file:
`#!/usr/bin/env ruby`
and then, run the file in terminal with:
`./filename.rb`
)

STRING_ANSWER = %q(
    **Stuff about strings in ruby**
`variable_name.to_s  # convert to string`

`"string here".length # get the length`

interpolated variable
`"This is a string with a #{variable}"`

and combining strings
`full_name = "#{first_name} #{middle_name} #{last_name}"`

```puts "Vowels: " + full_name.count("aeiou").to_s # counts the number of vowels
puts "Consonants: " + full_name.count("^aeiou").to_s```

```full_name.include?("Justine") # will say either true or false
full_name.index("Justine").to_s # the number index where this text occurs```

Create an array from a string:
```"abc".chars
#=> ["a", "b", "c"]```

`“abc”.capitalize`

`“ABc”.downcase`

`“abc”.upcase`

`"abc".swapcase`

```"abc".empty?
#=> false```

`"abc".start_with?("a")`

`"abc".end_with?("b")`

`"abc".index("c")`
Starts with 0 like arrays

**Whitespace**
Gets rid of whitespace at begining and end (enter, tabs, spaces etc)
`“ abc \n“.strip`

`“abc\n”.chomp`

Strip blank space from either the left or right
```variable.lstrip
variable.rstrip```

all white space
`variable.strip`

**Formatting**
```puts variable_name.rjust(20, ",")
puts variable_name.ljust(20, "*")
puts variable_name.center(20, " ")```
right justified, left justified and center.
In brakets the amount of spaces and what is filled in those spaces



```“abc”.reverse
#=> "cba"```

```“aabc”.delete(“a”)
#=> "bc"```
)

TIME_ANSWER = %q(
gets the time right now
```
    time_now = Time.now 
    Time.now.year # for example, returns 2019
    ```
 reference: http://ruby-doc.org/core-2.2.0/Time.html
)

YAML_ANSWER = %q(
**Yaml Files**

_require yaml file_
`require 'yaml'`

_saving information to yaml_
`File.write('file_name.yml', variable_name.to_yaml)`

_opening yaml file_
`variable_name = YAML.load_file('file_name.yml')`
)