import std/[sequtils, algorithm, sugar, strutils]
import std/[sharedlist, lists] # LL implement #

# SINGLY LINKED #

#[
  2 -> 3 -> 5 -> 8
]#

var single = initSinglyLinkedList[int]()

let
  s_a = newSinglyLinkedNode[int](3)
  s_b = newSinglyLinkedNode[int](5)
  s_c = newSinglyLinkedNode[int](8)
  s_d = newSinglyLinkedNode[int](2)

single.add(s_a)
single.add(s_b)
single.add(s_c)
single.prepend(s_d) # add to head #

echo single
echo s_a.next == s_b
echo s_d.next.next == s_a
# no <>.prev in a singly linked list



echo "------------------------------------------------------------------------------"


# DOUBLY LINKED #
#[
  3 <-> 6 <-> 7
]#


var doubly = initDoublyLinkedList[int]()

let
  d_a = newDoublyLinkedNode[int](3)
  d_b = newDoublyLinkedNode[int](6)
  d_c = newDoublyLinkedNode[int](7)


doubly.add(d_a)
doubly.add(d_b)
doubly.prepend(d_c)

echo doubly
echo d_c.next == d_a
echo d_c.prev == nil

echo "------------------------------------------------------------------------------"

# RINGED / CIRCULAR SINGLY LINKED #
#[
  1 -> 3 -> 5 -> 7 -> head(1)
]#

var ring_single = initSinglyLinkedRing[int]()
let
  rs_a = newSinglyLinkedNode[int](1)
  rs_b = newSinglyLinkedNode[int](3)
  rs_c = newSinglyLinkedNode[int](5)
  rs_d = newSinglyLinkedNode[int](7)

ring_single.add(rs_b)
ring_single.add(rs_c)
ring_single.add(rs_d)
ring_single.prepend(rs_a)

echo ring_single
echo rs_d.next == rs_a # points back to head #
