import Fluent
import Vapor
import VaporAdmin

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index", ["title": "Hello Vapor!"])
    }

    app.get("admin") { req async -> String in
        VaporAdmin.banner()
    }

    try app.register(collection: TodoController())
}
