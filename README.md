![PassGen logo](https://i.imgur.com/Dc3itmD.jpg)

# PassGen v. 1.0.0
Random password generator to create strong passwords
PassGen it 'a useful library for random password generation.
You can create various types of passwords:
* **DigitPassword** allows you to generate numeric passwords;
* **LatinPassword** allows you to create passwords containing lower and upper case characters;
* **HexadecimalPassword** creates hexadecimal passwords;
* **Strong password** generates passwords containing numbers, uppercase and lowercase letters, and symbols.

##  Usage
You can generate password of length beetween 4 to 64. 
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
## Run the test - ⌘ U

In Xcode Press "Command-U" to run all the tests



