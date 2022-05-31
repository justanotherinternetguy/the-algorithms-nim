import std/algorithm

type
  integerArray = array[5, int] # size 5
  stringArray = array[5, string]


var
  ia: integerArray
  sa: stringArray

ia = [5, 4, 3, 2, 1]
sa = ["abc", "def", "ghi", "lmn", "opq"]

echo ia
echo sa
echo "------------------------------------------------------------"

# element access #
echo ia[2]
echo sa[4]

echo "------------------------------------------------------------"

# length #
echo ia.len # len(ia)
echo sa.len # len(sa)

echo "------------------------------------------------------------"

# head + tail
# These are the lowest valid INDEX, not value at the index
echo ia.low # low(ia)
echo sa.high # high(sa)

echo "------------------------------------------------------------"

ia.sort()
echo ia