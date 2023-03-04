import CryptoPoops from 0x01
import NonFungibleToken from 0x02

pub fun main(address: Address): &NonFungibleToken.NFT {
  let publicCollection = getAccount(address).getCapability(/public/MyCollection2)
              .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
              ?? panic("The address does not have a Collection.")
  
  let NFTId = publicCollection.getIDs()
  return publicCollection.borrowAuthNFT(id: NFTId[0])
}