//
//  BuscaFavoritosController.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import RealmSwift
import Realm

class BuscaFavoritosController {

    var filtro: String = ""
    
    func selectDasOutrasTelas() {
        do {
            let favoritos = try Realm().objects(Favorito.self)
            let usuario = try Realm().objects(Usuario.self)
        } catch {
            print("erro")
        }
        
    }
    func quantidadeDeLojasFavorito() -> Int {
        do {
            if filtro == "" {
                return try Realm().objects(Favorito.self).count
            }
            return try Realm().objects(Favorito.self).filter(filtro).count
        } catch {
            return 0
        }
    }
    
    func quantidadeDeLojas(_ index: Int) -> Int {
        do {
            if filtro == "" {
                return try Realm().objects(Favorito.self).count
            }
            return try Realm().objects(Favorito.self).filter(filtro).count
        } catch {
            return 0
        }
    }
    
    func quantidadeDeLojas_Lojas() -> Int {
        do {
            if filtro == "" {
                return try Realm().objects(Loja.self).count
            }
            return try Realm().objects(Loja.self).filter(filtro).count
        } catch {
            return 0
        }
    }
    
    func nomeDaLoja(_ index: Int) -> String {
        do {
            if filtro == "" {
                return try Realm().objects(Favorito.self)[index].nome
            }
            let lojaEspecifica = try Realm().objects(Favorito.self).filter(filtro)[index]
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
    
    func nomeDaLoja_Loja(_ index: Int) -> String {
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
    
}


