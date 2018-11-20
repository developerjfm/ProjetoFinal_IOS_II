//
//  BuscaLojasController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 20/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//
import RealmSwift
import Realm

class BuscaLojasController {
    
    var filtro: String = ""
    
    func selectDasOutrasTelas() {
        do {
            let favoritos = try Realm().objects(Favorito.self)
            print(favoritos[0].lojas)
            print(favoritos[0].lojas[0].nome)
            let usuario = try Realm().objects(Usuario.self)
            print(usuario[0].email)
            print(usuario[0].senha)
        } catch {
            print("erro")
        }
        
    }
    
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
    
    func buscarLoja() {
        
        do {
            let loja =  try Realm().objects(Loja.self)
                        print(loja[0].nome)
            let produto = try Realm().objects(Produto.self)
                        print(produto[0].titulo)
        } catch {
            print("erro")
        }
    }
    
    
    func nomeDaLoja(_ index: Int) -> String {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self)[index].nome
            }
            let lojaEspecifica = try Realm().objects(Loja.self).filter(filtro)[index]
            return lojaEspecifica.nome
        } catch {
            return ""
        }
    }
    
    func nomeLogoLoja(_ index: Int) -> String {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self)[index].iconePequeno
            }
            let lojaEspecifica = try Realm().objects(Loja.self).filter(filtro)[index]
            return lojaEspecifica.iconePequeno
        } catch {
            return "exit"
        }
    }
    
    func isLojaFavorita(_ index: Int) -> Bool {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self)[index].favorita
            }
            let lojaEspecifica = try Realm().objects(Loja.self).filter(filtro)[index]
            return lojaEspecifica.favorita
        } catch {
            return false
        }
    }
    
    func vendeJogos(_ index: Int) -> Bool {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self)[index].vendeJogos
            }
            let lojaEspecifica = try Realm().objects(Loja.self).filter(filtro)[index]
            return lojaEspecifica.vendeJogos
        } catch {
            return false
        }
    }
    
    func vendeComputadores(_ index: Int) -> Bool {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self)[index].vendeComputador
            }
            let lojaEspecifica = try Realm().objects(Loja.self).filter(filtro)[index]
            return lojaEspecifica.vendeComputador
        } catch {
            return false
        }
    }
    
    func produto(_ index: Int) -> Bool {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self)[index].vendeComputador
            }
            let lojaEspecifica = try Realm().objects(Loja.self).filter(filtro)[index]
            return lojaEspecifica.vendeComputador
        } catch {
            return false
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

