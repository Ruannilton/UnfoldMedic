//
//  Usuario.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Usuario{
    
    let _id: String
    let _rev: String
    
    var Nome: String
    let DataNasc: Date
    let TipoSanguineo: String
    var TipoConta: String
    var Login: String
    var Senha: String
    var Sexo: String
    let Cpf: String
    var Cidade:String
    var Estado: String
    
    var ListaDados = [Dados]()
    
    init(Nome: String, DataNasc: Date, TipoSanguineo: String, TipoConta: String, Login: String, Senha: String, Sexo: String, Cpf: String, Cidade: String, Estado: String, _id: String, _rev: String) {
        self.Nome = Nome
        self.DataNasc = DataNasc
        self.TipoSanguineo = TipoSanguineo
        self.TipoConta = TipoConta
        self.Login = Login
        self.Senha = Senha
        self.Sexo = Sexo
        self.Cpf = Cpf
        self.Cidade = Cidade
        self.Estado = Estado
        self._id = _id
        self._rev = _rev
    }
    
}
