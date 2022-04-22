import Foundation
import Alamofire

protocol CreaturesLoderDelegate {
    func loaded(creatures: [Creature])
}

class CreaturesLoader {
    
    var delegate: CreaturesLoderDelegate?
    
    func loadedCreatures(completion: @escaping ([Creature]) -> Void) {
     //   AF.request("https://rickandmortyapi.com/api/character").responseJSON
        

    }
}

