//Create a program to check petrol quantity. If desired quantity for petrol is not available, throw exception
enum BikeError : Error {
    case insufficientPetorQuantity (neededPetrolQuantity: Int)
}

struct Bike {
    func startPicnic(petrolQuantity: Int) throws -> String {
        if petrolQuantity < 4 {
            throw BikeError.insufficientPetorQuantity(neededPetrolQuantity: 4)
        }
        return "Let the picnic begin"
    }
}

let objBike = Bike()
do {
    try objBike.startPicnic(petrolQuantity: 2)
} catch BikeError.insufficientPetorQuantity (let neededPetrolQuantity) {
    print("not sufficient petrol quantity, needed petrol quantity is, \(neededPetrolQuantity)")
}

//Create a program for shopping cart. If desired quantity for an item is not available, throw exception
enum CartError: Error {
    case insufficientCartItems (neededItem: Int)
}

struct Cart {
    func addCart(cartQuantity: Int) throws -> String {
        if cartQuantity < 2 {
            throw CartError.insufficientCartItems(neededItem: 2)
        }
        return "Proceed for payment"
    }
}

let cart = Cart()
do {
    try cart.addCart(cartQuantity: 1)
} catch CartError.insufficientCartItems(let neededItem) {
    print("not sufficient cart items, needed cart quantity is, \(neededItem)")
}

//Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.
enum PasswordException : Error {
    case passwordTooShortException(currentLength: Int)
    case emptyPasswordException
}

func getPassword(password: String) throws -> Bool {
    if password.isEmpty {
        throw PasswordException.emptyPasswordException
    } else if password.count < 8 {
        throw PasswordException.passwordTooShortException(currentLength : password.count)
    }
    return true
}

let password = "Dhyana"
do {
    try getPassword(password: password)
} catch PasswordException.emptyPasswordException {
    print("Password must be filled")
} catch PasswordException.passwordTooShortException(let currentLength) {
    print("Password must be greater than 8 and entered password length is of \(currentLength) characters")
} catch {
    print("error occured ")
}

//optional chaining
func albumReleased(year: Int) -> String? {
    switch year {
        case 2006: return "Taylor Swift"
        case 2008: return "Fearless"
        default: return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
print("The album is: \(album)")
