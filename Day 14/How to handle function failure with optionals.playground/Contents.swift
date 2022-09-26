import Cocoa

// How to handle function failure with optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

// try? won't let you know what the error is and we don't care in this case. If you want to know what the error is use regular try. try! can be used, but if nothing is there your app will crash.
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)


// try? is mainly used in 3 places.
    // 1. In combination with guard let to exit the current function or scope if the cureent try? is nil.
    // 2. With nil coalescing to provide a default value if there is a failing in getting something (data).
    // 3. When calling any throwing function without a return value. When you genuinely just don't care if it worked or not. Maybe writing to a Log file or sending analytics to a server or whatever.
