# **Higher Order Functions**

In mathematics and computer science, a higher order function is a function that does at least on of the following:

- Takes one or more function as the argument.
- Returns a function as its result.

There are some functionalities which are already there in swift from which we can benifit from and we can avoid them implementing on our own. Higher order functions are great tool to use in our code and we can avoid writing extra lines of code to achieve the same result with that.

## Table of Content

* [Map](#Map)
* [CompactMap](#CompactMap)
* [FlatMap](#FlatMap)
* [Filter](#Filter)
* [Reduce](#Reduce)
* [ForEach](#ForEach)
* [Contains](#Contains)
* [RemoveAll](#RemoveAll)
* [Split](#Split)
* [Sorted](#Sorted)

**_Note:_** [Sample Code](HigherOrderFunctions.playground/Contents.swift)

## Map

This is the most famous higher order function among all. Map Iterates through all the elements in an array and returns an updated array.
The function performs an operatiion on all the elements of the collection and returns a new collection with the results of the operation on the original elements.

```
collection.map(transform: (Element.Type) throws -> T)

collection.map { ((Element.Type) -> T) in
	// code
}
```

**_Note:_** *There is another variation of map for dictionary `mapValues`. This keeps the original keys but modify only values.*


## CompactMap