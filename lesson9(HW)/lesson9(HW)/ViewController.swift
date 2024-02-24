//
//  ViewController.swift
//  lesson9(HW)
//
//  Created by Maxim Fedoseenko on 24.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelName2: UILabel!
    @IBOutlet weak var labelName3: UILabel!
    @IBOutlet weak var labelName4: UILabel!
    @IBOutlet weak var labelName5: UILabel!
    @IBOutlet weak var labelName6: UILabel!
    
    @IBOutlet weak var btnLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "Welcome, user Ilya"
        labelName.font = .systemFont(ofSize: 35)
        labelName2.text = "Appartment control page"
        
        labelName3.textColor = .red
        labelName3.text = "Lights"
        
        labelName4.textColor = .yellow
        labelName4.text = "Door"
        
        labelName5.textColor = .green
        labelName5.text = "A/C"
        
        labelName6.text = "Temperature"
        
        btnLabel.setTitle("Alarm", for: .normal)
        
        
        
    }


}

