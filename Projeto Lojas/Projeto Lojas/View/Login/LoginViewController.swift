//
//  LoginTableViewController.swift
//  ProjetoFinalIOS_II
//
//  Created by Josimar  Fiuza Melo on 17/11/18.
//  Copyright © 2018 Josimar Fiuza Melo. All rights reserved.
//

import UIKit

import UIKit

class LoginTableViewController: UITableViewController {
    
    let numeroCelulas = 6
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    
    let loginController = LoginController()
    
    var usuario = Usuario()
    
    @IBAction func btEntrar(_ sender: UIButton) {
        
        let validacao = validaCampos()
        
        usuario.email = txtEmail.text!
        usuario.senha = txtSenha.text!
        
        let login = loginController.login(email: usuario.email , senha: usuario.senha)
        //        let obterUsuario = loginController.obterUsuario(email: usuario.email , senha: usuario.senha)
        //        print("Obtendo Usuario\(obterUsuario)")
        
        if validacao == true {
            if login == true {
                let perfil: PerfilTableViewController = self.storyboard?.instantiateViewController(withIdentifier: "Perfil") as! PerfilTableViewController
                self.navigationController?.pushViewController(perfil, animated: true)
                
            } else {
                alertaValidacaoCampos(titulo: "", message: "Email ou Senha incorretos")
            }
        }
    }
    
    func mensagemSucessoCadastro(titulo:String,message:String) {
        
        let alerta = UIAlertController(title: titulo, message: message, preferredStyle: UIAlertController.Style.alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alerta, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numeroCelulas
    }
    
    func validaCampos() -> Bool {
        
        if isValidaCampos(campo: txtEmail) == false {
            alertaValidacaoCampos(titulo:"Alerta",message: "Email incorreto")
            return false
        }
        
        if isValidaCampos(campo: txtSenha) == false {
            alertaValidacaoCampos(titulo:"Alerta",message: "Senha incorreto")
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
