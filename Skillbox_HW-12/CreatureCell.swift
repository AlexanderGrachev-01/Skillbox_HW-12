import UIKit

class CreatureCell: UITableViewCell {

    @IBOutlet weak var CreatureImageView: UIImageView!
    @IBOutlet weak var CreatureNameLabel: UILabel!
    @IBOutlet weak var creatureStatusLabel: UILabel!
    @IBOutlet weak var creatureInfoLabel: UILabel!
    @IBOutlet weak var creatureLocationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
