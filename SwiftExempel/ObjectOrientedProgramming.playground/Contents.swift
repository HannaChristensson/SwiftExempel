import Foundation    // LEKTION NR 8

/*
 OBJECT ORIENTED PROGRAMMING:
 
 During the life of the app, we create and destroy objects.
 Create = Initialize an object (init) = Allocate (adding to memory)
 Destroy = Deinitialize an object (deinit) = Deallocate (removing from memory)
 
 Automatic Reference Counting (ARC)
 A live count of the number of objects in memory
 Create 1 object, count goes up by 1
 Create 2 objects, count goes up by 2
 Destroy 1 object, count goes down by 1
 
 The more objects in memory, the slower the app performs.
 We want to keep the ARC count as low as possible
 We want to create objects only when we need them
 and destroy them as soon as we no longer need them
 
 For example: If an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it (ie. when the user clicks a button to segue to screen 2. When we get to screen 2, we may want to deallocate screen 1.
 
 There are 2 types of memory
 Stack & Heap
 Only objects in the Heap are counted towards ARC.
 
 Objects in the STACK:
 String, Bool, Int, most basic types, Structs, Enums, Array
 
 Objects in the HEAP:
 Functions, Class, Actors
 
 iPhone is a "multi-threaded environment"
 There are multiple "threads" or "engines" running simultaneously
 Each thread has a Stack
 But there is only 1 Heap for all threads
 
 Therefor:
 Stack is faster, lower memory footprint, is preferable
 Heap is slower, higher memory footprint, risk of threading issues.
 
 Value vs Reference types
 
 Objects in the Stack are "Value" types
 When you edit a "Value" type, you create a copy of it with new data.
 
 Objects in the Heap are "Reference" types.
 When you edit a "Reference" type, you edit the object that you are referencing.
 This "reference" is actually called "pointer" because it "points" to an object in the Heap (in memory).
 
 
 */

// Data type: struct. Value type. In the Stack.
struct MyFirstObject {
    let title: String = "Hello struct"
}

// Data type: class. Reference type. In the Heap.
class MySecondObject {
    let title: String = "Hello class"
}

// Class vs struc explained to a 5-year old

// Imagine a school. In the school there are classroms.
// Within each class, there are quizzes.
// During the day, the teacher will hand out many different quizzes to differens classes. The students will answer the quizzes and return them back to the teacher.
// School = App
// classroom = Class
// quiz = Struct

// In this example, we have a classroom and there are many actions that occur inside the classrom.
// In code, we create a class and can perform actions within the class.
// In this example, there are many different types of quizzes. The teacher hands out the quizzes and the students take the quizzes and return them to the teacher.
// In code, we create many structs and pass them around our app with ease.

// This metaphor is not perfect. Technically a quiz can be a class, etc.

// We want to use a class for things like:
// Manager, DataService, Service, Factory, ViewModel
// Objects that we create and want to perform actions inside.

// We want to use a struct for things like:
// Data models
// Objects that we create and pass around our app.
