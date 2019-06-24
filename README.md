![PassGen logo](https://i.imgur.com/Dc3itmD.jpg)

# PassGen v. 1.0.0 [![Build Status](https://travis-ci.org/scribendo/PassGen.svg?branch=master)](https://travis-ci.org/scribendo/PassGen)

PassGen is a Swift-based library that allows you to create passwords of several types and complexities:
* **DigitPassword** => create numeric passwords
* **LatinPassword** => create passwords containing lower and upper case characters
* **HexadecimalPassword** => create hexadecimal passwords
* **Strong password** => create passwords containing numbers, uppercase letters, lowercase letters and symbols

##  Usage
You can generate passwords with a length ranging from 4 to 64 characters. 
```swift
do {
    let password = PassGen(passwordType: DigitPassword())
    //Digit password of custom minimum length
    print(try password.generate())
} catch {
    print("An error has occurred")
}
```
You can specify the length of the password with the length parameter:
```swift
do {
    let password = PassGen(passwordType: HexadecimalPassword())
    //Digit password of custom minimum length
    print(try password.generate(length: 12))
} catch {
    print("An error has occurred")
}
```
You can update the password type:
```swift
do {
	 //Update password type
	 password.update(passwordType: LatinPassword())
	 //Hexadecimal password
	 print(try password.generate(length: 15))
} catch {
    print("An error has occurred")
}
```
the struct PasswordConfig allows you to set minimum length constraints and maximum password length constraints:
```swift
do {
	var config = PasswordConfig()
	//Minimum length 17
	config.min = 17
	//Maximum length 18
	config.max = 18
	let password = try StrongPassword(config: config)
	//Manage Exception
	print(try password.generate())
	} catch {
	    print("An error has occurred")
    }
}
```
## Tests

In Xcode Press "Command-U" (⌘+U) to run all the tests. Have a look at the Travis builds here: https://travis-ci.org/scribendo/PassGen

## Built With

* [Swift](https://swift.org/)
* [Xcode](https://developer.apple.com/xcode/)

## Contributing

Feel free to contribute to this project. Any improvement or suggestion is well welcomed.

## License

This project is licensed under the GNU GPLv3 - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

* Lead maintainer: [Alessandro Pindinelli](https://github.com/pindinelli)

