//
//  CadastroTableViewController.swift
//  ProjetoFinalIOS_II
//
//  Created by Josimar  Fiuza Melo on 17/11/18.
//  Copyright © 2018 Josimar Fiuza Melo. All rights reserved.
//

import UIKit
import Foundation
import RealmSwift
import Realm


class CadastroTableViewController: UITableViewController {
    
    @IBAction func btCadatro(_ sender: UIButton) {
        
        let cadastro = validaCampos()
        
        
        if cadastro == true {
            
            let listaFavorito = List<Favorito>()
            let listaLoja = List<Loja>()
            
            let usuario = Usuario(email: txtEmail.text!, nome: txtNome.text!, foto: "user-logged", senha: txtSenha.text!, telefone: txtTelefone.text!, idade: Int(txtIdade.text!)!,listasFavoritos:listaFavorito,lojasServidor:listaLoja)
            
            print(usuario)
            let retorno = cadastroController.isAddUsuario(usuario: usuario)
            
            if retorno == true{
                
                let login: LoginTableViewController = self.storyboard?.instantiateViewController(withIdentifier: "Login") as! LoginTableViewController
                login.mensagemSucessoCadastro(titulo: "Atenção", message: "Cadastro realizado")
                self.navigationController?.pushViewController(login, animated: true)
                
            }else{
                alertaValidacaoCampos(titulo:"Atenção",message: "Erro ao gravar Usuario!")
            }
            
        }
    }
    
    
    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    @IBOutlet weak var txtTelefone: UITextField!
    @IBOutlet weak var txtIdade: UITextField!
    
    var cadastroController = CadastroController()
    var favorito = Favorito()
    var loja = Loja()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        
    }
    
    //    @IBAction func fecharCadastro() {
    //        self.dismiss(animated: true, completion: nil)
    //    }
    
    func validaCampos() -> Bool {
        
        if isValidaCampos(campo: txtNome) == false {
            alertaValidacaoCampos(titulo:"Alerta",message: "Campo Invalido")
            return false
        }
        
        if isValidaCampos(campo: txtEmail) == false {
            alertaValidacaoCampos(titulo:"Alerta",message: "Campo Invalido")
            return false
        }
        
        if isValidaCampos(campo: txtIdade) == false {
            alertaValidacaoCampos(titulo:"Alerta",message: "Campo Invalido")
            return false
        }
        
        if isValidaCampos(campo: txtTelefone) == false {
            alertaValidacaoCampos(titulo:"Alerta",message: "Campo Invalido")
            return false
        }
        
        if isValidaCampos(campo: txtSenha) == false {
            alertaValidacaoCampos(titulo:"Alerta",message: "Campo Invalido")
            return false
        }
        
        return true
    }
    
    func alertaValidacaoCampos(titulo:String,message:String) {
        
        let alerta = UIAlertController(title: titulo, message: message, preferredStyle: UIAlertController.Style.alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alerta, animated: true, completion: nil)
    }
    
    func isValidaCampos(campo:UITextField) -> Bool {
        guard let text = campo.text , !text.isEmpty else {
            return false
        }
        return true
    }
    
}

