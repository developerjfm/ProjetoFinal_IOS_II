//
//  LoginController.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import RealmSwift

class LoginController {
    
    
    let realm:Realm = try! Realm()
    
    func login(email:String, senha: String)-> Bool{
        
        let predicate = NSPredicate(format: "email = %@ AND senha = %@", email, senha)
        let user1 = realm.objects(Usuario.self).filter(predicate)
        print(user1)
        if user1.count == 1 {
            return true
        } else {
            return false
        }
    }
    
        func obterUsuario(email:String, senha: String)-> Usuario{
    
            let predicate = NSPredicate(format: "email = %@ AND senha = %@", email, senha)
            let user1 = Usuario(value: realm.objects(Usuario.self).filter(predicate))
            return user1
        }
}
