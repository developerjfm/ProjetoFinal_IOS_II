//
//  Database.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 03/10/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import RealmSwift

class Database {
    
    static func preencheDadosIniciais() {
        
        if let pathComponent = Realm.Configuration.defaultConfiguration.fileURL {
            if FileManager.default.fileExists(atPath: pathComponent.path) {
                print("Realm já existe")
            } else {
                print("Realm não foi criado, vamos copiar...")
                if let caminhoRealmPreenchido = Bundle.main.url(forResource: "lojas", withExtension: "realm") {
                    do {
                        try FileManager.default.copyItem(at: caminhoRealmPreenchido, to: pathComponent)
                        print("Realm preenchido com sucesso")
                    } catch let error {
                        print(error)
                        print("Erro ao copiar o Realm já preenchido")
                    }
                } else {
                    print("Realm não foi encontrado")
                }
            }
        } else {
            print("Erro ao preencher dados iniciais")
        }
    }
}
