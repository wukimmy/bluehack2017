//
//  chatCell.swift
//  BlueHack2017
//
//  Created by Carlos Doki on 25/03/17.
//  Copyright © 2017 Carlos Doki. All rights reserved.
//

import UIKit

class chatCell: UITableViewCell {
    
    @IBOutlet weak var chatLbl: UILabel!
    @IBOutlet weak var faceImg: UIImageView!
    
    var chat: chat!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(chat: String, face: String, usuario: Bool) {
        self.chatLbl.text = chat
        if usuario != true {
            self.chatLbl.textAlignment = .right
            self.faceImg.image = nil
            self.chatLbl.textColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.5)
        } else {
            self.chatLbl.textAlignment = .left
            self.faceImg.image = UIImage(named: face)
            self.chatLbl.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        }
    }
}
