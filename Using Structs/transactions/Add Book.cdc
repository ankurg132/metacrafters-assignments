// View Tasks Transaction
import BookDetail from 0x01

transaction(name: String, author_name: String, publisher: String, id: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        BookDetail.addBooks(name: name, author_name: author_name, publisher: publisher, id: id);
        log("We're done.")
    }
}