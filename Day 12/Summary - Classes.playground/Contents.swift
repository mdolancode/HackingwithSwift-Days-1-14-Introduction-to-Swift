import Cocoa

// Summary: Classes
// * Classes have lots of things in common with structs. Properties, methoads, and more.
// 1. Classes can inherit from other classes, so they get access to the properties and methods of their parent. You can optionally override references in child classes and also mark them as being final to stop other classes from inheriting from them.
// 2. Swift doesn't generate a memberwise initializer for classes. It is just not possible, so you have to do it yourself. If a sub class has it's own initializer it must always call the parent initializer at some point.
// 3. Copies of a class instance point to the same instance. If you change one they will ALL change.
// 4. Classes run deinitializers when the last copy of an instance is destroyed.
// 5. You can change the variable properties inside constant class instances. It doesn't matter if the instance of the class is a variable or a constant. All that matter is if the property is a variable or constant.
