// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7
let dave = "Dave"
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals
var optionalFloat: Float?
var requiredFloat: Float
var implicitlyUnwrappedOptionalFloat: Float!

optionalFloat = 5.0
requiredFloat = 5.0

print("optional float = \(optionalFloat)")
print("required float = \(requiredFloat)")




// Optionals with forced unwrapping

print("optional float = \(optionalFloat!)")

let name = "Loki"
let number = "7"
var optionalThatIsNil: Int? = Int(name)
var requiredThatIsNotNil: Int = Int(number)!

optionalThatIsNil
requiredThatIsNotNil





// Part 2.
import UIKit
// Views in a Playground + Optional Chaining
let b = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100 ))
b.backgroundColor = UIColor.red

b.setTitle("Press Me", for: UIControl.State.normal)

print(b.titleLabel)
print(b.titleLabel?.text) // Optional Chaining
print(b.titleLabel!.text) // Forced Unwrapping






// Optional Binding

if let myText = b.titleLabel?.text{
    print("There is text and the value is \(myText)")
}else{
    print("There is no text on the label")
}



// Implicitly Unwrapped Optionals

let myImplicitlyUnwrappedOptionalLabel: UILabel! = b.titleLabel
print(myImplicitlyUnwrappedOptionalLabel.text)
print(myImplicitlyUnwrappedOptionalLabel.text!)
