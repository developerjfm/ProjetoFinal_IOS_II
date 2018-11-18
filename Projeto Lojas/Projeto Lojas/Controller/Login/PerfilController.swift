//
//  PerfilController.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Realm
import RealmSwift

class PerfilController {
    
    var filtro: String = ""
    
    func quantidadeDeLojas() -> Int {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self).count
            }
            return try Realm().objects(Loja.self).filter(filtro).count
        } catch {
            return 0
        }
    }
    
    func buscarLojas(comNome searchText: String) {
        if searchText == "" {
            filtro = ""
            return
        }
        filtro = "nome CONTAINS[cd] '" + searchText + "'"
    }
    
    
}

