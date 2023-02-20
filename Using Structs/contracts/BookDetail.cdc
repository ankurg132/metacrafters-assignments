pub contract BookDetail {

    pub var books: [Book]

    pub struct Book {
        pub let name: String
        pub let author_name: String
        pub let publisher: String
        pub let id: Address

        // You have to pass in 4 arguments when creating this Struct.
        init(_name: String, _author_name: String, _publisher: String, _id: Address) {
            self.name = _name
            self.author_name = _author_name
            self.publisher = _publisher
            self.id = _id
        }
    }
    pub fun addBooks(name: String, author_name: String, publisher: String, id: Address) {
        let newBook = Book(_name: name, _author_name: author_name, _publisher: publisher, _id: id)
        self.books.append(newBook)
    }

    init() {
        self.books = []
    }
}