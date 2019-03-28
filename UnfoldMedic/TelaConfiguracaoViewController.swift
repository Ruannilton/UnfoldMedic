//
//  TelaConfiguracaoViewController.swift
//  UnfoldMedic
//
//  Created by student on 27/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TelaConfiguracaoViewController: UIViewController {

    @IBAction func toggle_name(_ sender: UISwitch) {
    Database.mostraNome = sender.isOn
        
    }
    
    @IBAction func toggle_data(_ sender: UISwitch) {
    Database.mostraData = sender.isOn
         print(Database.mostraData)
         print(Database.mostraInfo)

    }
   
    @IBAction func toggle_estado(_ sender: UISwitch) {
    Database.mostraEstado = sender.isOn
    }
    
    @IBAction func toggle_cidade(_ sender: UISwitch) {
    Database.mostraCidade = sender.isOn
    }
    
    @IBAction func toggle_info(_ sender: UISwitch) {
    Database.mostraInfo = sender.isOn
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
