import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It finally works!"
    }

    app.get("hello") { req async -> String in
        "Hello, Olga!"
    }

    try app.register(collection: TodoController())
}
