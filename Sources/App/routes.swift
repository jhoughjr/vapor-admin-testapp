import Fluent
import Vapor
import VaporAdmin

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index", ["title": "Hello Vapor!"])
    }

  
    try VaporAdmin.adminRoutes(for: app)
    try app.register(collection: TodoController())
}
