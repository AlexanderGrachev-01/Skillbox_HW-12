import Foundation

class Creature {
    let name: String
    let status: String
    let type: String
    let location: String
    let imageURL: String
    
    init?(data: NSDictionary) {
        guard let name = data["name"] as? String,
              let status = data["status"] as? String,
              let type = data["type"] as? String,
              let location = data["location"] as? String,
              let imageURL = data["imageURL"] as? String
        else { return nil }
        
        self.name = name
        self.status = status
        self.type = type
        self.location = location
        self.imageURL = imageURL
    }
}
