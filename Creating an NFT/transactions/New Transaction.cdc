import CryptoPoops from 0x01
import NonFungibleToken from 0x02

transaction() {
  prepare(signer: AuthAccount) {
    // Store a `CryptoPoops.Collection` in our account storage.
    signer.save(<- CryptoPoops.createEmptyCollection(), to: /storage/MyCollection2)
    signer.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>(/public/MyCollection2, target: /storage/MyCollection2)
  }
}
