CONVERT_ANSWER = %q(
    Converting strings, integers and floats etc
```variable_name.to_s # to string
variable_name.to_f # to float
variable_name.to_i # to integer
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

If age is bigger than or equal to 30, it'll puts "Old", else puts "Young"
`puts (age >= 30) ? "Old" : "Young"`

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
)

LENGTH_ANSWER = %q(
Getting the length of a string in ruby: 
    `variable_name.length`
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
)

TIME_ANSWER = %q(
gets the time right now
```
    time_now = Time.now 
    Time.now.year # for example, returns 2019
    ```
 reference: http://ruby-doc.org/core-2.2.0/Time.html
)