import std/[sequtils, algorithm, sugar, strutils]

# A seq in Nim is a dynamic array w/ more functionality, notation w/ @ #


var
  x: seq[int] = @[5, 4, 3, 2, 1] 
  y: seq[string] = @["abc", "def", "ghi", "lmn", "opq"]

# iteration #
for num in x:
  stdout.write(num)
echo ""

# iteration w/ interpolation #
for i, num in x:
  echo "index: ", $i, ", value: ", $num

# append #
x.add(10)
echo x[x.high]
x.delete(10)
echo x[x.high]

# check contains? #
if "abc" in y:
  echo "true"

if "CAT" notin y:
  echo "true"


# advanced functions

var
  foo = toSeq(1..20).map(x => x * 2).filter(x => x mod 3 == 0) # create a seq with numbers 1-20 and multiplying each number by 3, then keeping the numbers that are also divisible by 3 #
  bar = toSeq(1..20).mapIt(it * 2).filterIt(it mod 3 == 0) # same thing as above

echo foo
echo bar

echo foo.any(x => x > 17) # are there any numbers of foo that are larger than 17? (true)
echo foo.foldl(a+b) # sum





# join  w/ strutils #
var vowels = @"aeiou"
echo vowels
echo (vowels is seq[char])

var str = "nim is the best language"
str = str.filterIt(it notin vowels).join
echo str

apply(y, proc(x: string): string = x & "_hi!")
echo y

# all methods from /array.nim/ work with seq as well
