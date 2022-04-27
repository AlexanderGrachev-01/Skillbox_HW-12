import Foundation
import Alamofire

class CreaturesLoader {
    
    var uerl = "https://rickandmortyapi.com/api/character"
    
    func loadedCreatures(completion: @escaping ([Creature]) -> Void) {
        AF.request("https://rickandmortyapi.com/api/character").responseJSON { response in
            if let objects = response.result,
                let jsonDict = objects as? NSDictionary {
                 print(objects)
                 var creatures: [Creature] = []
                 for (_, data) in jsonDict {
                     if let creature = Creature(data: data as! NSDictionary) {
                         creatures.append(creature)
                     }
                 }
                 DispatchQueue.main.async {
                     completion(creatures)
                }
            }
        }
    }
}
        
//        let url = URL(string: "https://rickandmortyapi.com/api/character")!
//        var request = URLRequest(url: url)
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            if let data = data,
//               let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments),
//               let jsonDict = json as? NSDictionary {
//                print(json)
//                var creatures: [Creature] = []
//                for (_, data) in jsonDict {
//                    if let creature = Creature(data: data as! NSDictionary) {
//                        creatures.append(creature)
//                    }
//                }
//                DispatchQueue.main.async {
//                    completion(creatures)
//                }
//            }
//
//        }
//        task.resume()
//    }
//}

