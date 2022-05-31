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
# 2 <-> 3 <-> 5 <-> 8 
