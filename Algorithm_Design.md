# Algorithm Design

Source: <https://github.com/makersacademy/skills-workshops/tree/master/week-10-apprs/writing-algorithms>

> ***Algorithm**: a sequence of steps to get from a given input to a desired output*

TDD: ideal for developing an algorithm that gives the correct output is produced. It can get you to the solution but it may be necessary to refactor in order to get an optimal solution.

*How would we solve it naturally?  
How could an algorithm could solve it?*

## Process

1. Describe the problem
2. Create test cases:

    |Input     | Output   |
    | ----     | -------  |
    |  ['a', 'b', 'c', 'd'], 4  | [a], [b], [c], [d] |
    | ['a'], 0 | `not specified`
    | [], 0    |          |
    |          |          |
    |  ...     |  ...     |

    Consider the signature:

    `def make_groups(cohort, number_of_groups)`

    cohort: Array (of Strings)  
    number_of_groups:  Integer

3. How would this be done with cards, paper, etc

4. Write down each step

5. Translate into code, step by step. Comment followed by line of code

6. Run test cases

7. Fail? Paper debug

## Exercise

Return duplicates:

    Input: [0, 1, 0, 3, 7, 4, 3, 3]
    Output: [0, 3]

1. Given a list, return any elements that are not unique: i.e. they appear more than once..

2. Test cases:

> INPUT          | OUTPUT
> ---------------|-------
> []             | []
> [0]            | []
> [0,1]          | []
> [1,1]          | [1]
> [1,2,3]        | []
> [1,2,3,4,2,3]  | [2,3]
> ["one",2,3,2]  | [2]
> ["two",2,"two"]| ["two"]
> [3,1,"b",3,"b"]| [3,"b"]

3. (and 4.) In real life:

> 0. Set up: Have a "seen" pile to track what has already been seen.
> 1. Look at the first item in the list
> 2. Check the "seen" pile and...
>> - 2a. if the item is the same as seen previously, add the item to the "duplicates" pile if it is not already in there
>> - 2b. otherwise just add it to the "seen" pile
> 3. Repeat 1 and 2 until all items in the list have be examined
> 4. The "duplicates" pile shows the elements have duplicates

5. (6. n/a) As code:

              def duplicates(input)
          (0)   seen = []
      ____(2)   duplicates = []
     |    (1)   input.each do |item|
     |    (2)     if seen.includes?(item)
(3)__|    (2a)      duplicates.push(item) unless duplicates.include?(item)
     |            else
     |    (2b)      seen.push(item)
     |____        end
                end
          (4)   duplicates
              end

7. Run Testcases

Input: [3,1,"b",3,"b"]

Running the code (walkthrough):

1. 