//
//  TableViewCell.swift
//  MindteckTask
//
//  Created by sonu singh on 09/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    var list: ListData? {
        didSet {
            self.loadData()
        }
    }
    
    @IBOutlet weak var imageVW: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadData() {
        self.imageVW.image = UIImage(named: self.list?.image ?? "pexels-pixabay-60597")
        self.lblTitle.text = self.list?.name ?? "Title"
    }

}
