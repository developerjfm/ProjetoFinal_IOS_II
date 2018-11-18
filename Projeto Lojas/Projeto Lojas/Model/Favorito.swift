//
//  Favorito.swift
//  ProjetoFinalIOS_II
//
//  Created by Josimar  Fiuza Melo on 17/11/18.
//  Copyright © 2018 Josimar Fiuza Melo. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class Favorito: Object {
    @objc dynamic var nome: String = ""
    let lojas = List<Loja>()
    
    override static func primaryKey() -> String? {
        return "nome"
    }
    
    convenience init(nome: String, lojas: List<Loja> = List<Loja>()) {
        self.init()
        self.nome = nome
        self.lojas.append(objectsIn: lojas)
    }
}
