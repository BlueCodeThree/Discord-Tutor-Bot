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

Items can be added to the end of an array by using either push or <<
```arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]```
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
    ```def functionName(stuff, here)
        # things for the function go here
    end
        ```
No need for the brackets if you don't have any parameters. 
)

GETS_ANSWER = %q(
    asks for user input. The "chomp" removes an enter key at the end of the input
    `gets.chomp`

    string on more methods!
    `gets.chomp.to_i`
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
`puts "wear something warm" if (raining and temperature < 20)

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

cycling through numbers - a range:
```(1..10).each do |i|
    puts "number #{i}"
end

for year in 2000...2015
    puts year
end
    ```
Two dots means it is inclusive of the two numbers
`0..2` # 0, 1, 2

Three dots means it is exclusive of the last number
`0...2` # 0, 1
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

```"abc".empty?
#=> false```

`"abc".start_with?("a")`

`"abc".end_with?("b")`

`"abc".index("c")`
Starts with 0 like arrays

Gets rid of whitespace at begining and end (enter, tabs, spaces etc)
`“ abc \n“.strip`
`“abc\n”.chomp`

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