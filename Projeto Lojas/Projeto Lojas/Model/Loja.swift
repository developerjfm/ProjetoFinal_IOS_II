//
//  Loja.swift
//  ProjetoFinalIOS_II
//
//  Created by Josimar  Fiuza Melo on 17/11/18.
//  Copyright © 2018 Josimar Fiuza Melo. All rights reserved.
//

import RealmSwift

class Loja: Object {
    @objc dynamic var nome = ""
    @objc dynamic var iconePequeno = ""
    @objc dynamic var iconeGrande = ""
    @objc dynamic var vendeComputador = false
    @objc dynamic var vendeJogos = false
    @objc dynamic var favorita = false
    let produtos = List<Produto>()
    
    override static func primaryKey() -> String? {
        return "nome"
    }
    
    convenience init(_ nome: String,
                     iconePequeno: String,
                     iconeGrande: String,
                     vendeComputador: Bool,
                     vendeJogos: Bool,
                     favorita: Bool,
                     produtos: List<Produto> = List<Produto>()) {
        self.init()
        self.nome = nome
        self.iconePequeno = iconePequeno
        self.iconeGrande = iconeGrande
        self.vendeComputador = vendeComputador
        self.vendeJogos = vendeJogos
        self.favorita = favorita
        self.produtos.append(objectsIn: produtos)
    }
}
