//
//  TelaPerfilViewController.swift
//  UnfoldMedic
//
//  Created by student on 22/03/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TelaPerfilViewController: UIViewController {
    @IBOutlet weak var label_idade: UILabel!

   
    @IBOutlet weak var lable_name: UILabel!
    
    @IBOutlet weak var label_estado: UILabel!
    
    @IBOutlet weak var label_cidade: UILabel!
   
    @IBOutlet weak var label_numero: UILabel!
    
    @IBOutlet weak var Label_tipoSanguino: UILabel!
    
    @IBOutlet weak var InfoImportante_textBOx: UITextView!
   
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        lable_name.text = Database.dados.Nome
        label_idade.text = String(describing: Database.dados.DataNasc)
        label_estado.text = Database.dados.Estado
        label_cidade.text = Database.dados.Cidade
        InfoImportante_textBOx.text = Database.dados.InfoImportantes
        Label_tipoSanguino.text = Database.dados.TipoSanguineo
        if(Database.dados.Nome.contains("jafe") || Database.dados.Nome.contains("Jafe")){
            ImageView.image = #imageLiteral(resourceName: "fotoDeJafe.jpg")
        }

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
