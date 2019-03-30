LENGTH_ANSWER = %q(
Getting the length of a string in ruby: 
    `variableName.length`
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

TIME_ANSWER = %q(
gets the time right now
```
    time_now = Time.now 
    Time.now.year # for example, returns 2019
    ```
 reference: http://ruby-doc.org/core-2.2.0/Time.html
)