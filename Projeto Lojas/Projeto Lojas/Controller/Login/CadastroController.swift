//
//  CadastroController.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Realm
import RealmSwift

class CadastroController{
    
    let realm = try! Realm()
    
    func gravarUsuario(usuario: Usuario)->Bool{
        do {
            try! realm.write {
                realm.add(usuario)
            }
            return true
        }catch{
            return false
        }
    }
}
