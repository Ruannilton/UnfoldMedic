//
//  DadosUsuarioTableViewCell.swift
//  UnfoldMedic
//
//  Created by student on 25/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class DadosUsuarioTableViewCell: UITableViewCell {

    @IBOutlet weak var LabelNome: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(LabelNome.text)
    }

}
