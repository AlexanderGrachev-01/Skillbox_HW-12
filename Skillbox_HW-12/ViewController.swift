import UIKit
import Alamofire

class ViewController: UIViewController {

    var creaturesArray: [Creature] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return creaturesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CreatureCell") as! CreatureCell
        cell.CreatureNameLabel.text = creaturesArray[indexPath.row].name
        cell.creatureStatusLabel.text = creaturesArray[indexPath.row].status
        cell.creatureInfoLabel.text = creaturesArray[indexPath.row].type
        cell.creatureLocationLabel.text = creaturesArray[indexPath.row].location
        
        return cell
    }
}
