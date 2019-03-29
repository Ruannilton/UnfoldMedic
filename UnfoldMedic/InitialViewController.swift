//
//  InitialViewController.swift
//  UnfoldMedic
//
//  Created by student on 28/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var buttonCadastro: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "cadastroIdentifier" {
            
            let stroryboard = UIStoryboard(name: "cadastro", bundle: nil)
            let nextViewController = storyboard?.instantiateViewController(withIdentifier: "nextViewController") as! CadastroViewController
            self.present(nextViewController, animated: true, completion: nil)
            
            
            
        } 
        
        
        
    }
    
    
    
    @IBAction func cadastro(_ sender: Any) {
       
        
        
        
    }

}
