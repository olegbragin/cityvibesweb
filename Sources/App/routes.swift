import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
       html([
        body([
            h1(["Type-safe Vapor HTML"]),
            p([
                """
                This is a Vapor plugin that allows you to write type-safe, \
                transformable, composable HTML views in a Vapor app!
                """
            ])
            ])
        ])
    }

    app.get("hello") { req async -> String in
        "Hello, Olga!"
    }

    try app.register(collection: TodoController())
}
