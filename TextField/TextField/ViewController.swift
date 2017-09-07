//
//  ViewController.swift
//  TextField
//
//  Created by Swift on 28/03/16.
//  Copyright © 2016 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    
    
    @IBOutlet weak var labelTexto: UILabel!
    
    @IBOutlet weak var textFieldUnica: UITextField!
    
    /* Uma textField é um objeto de interaface gráfica que permite realizar a entrada de pequenos textos. Por padrão ao clicarmos em uma caixa de texto o teclado é habilitado para a entrada de dados.
    
    
        Mas como faço para o teclado sair da tela ?
    
    
        - Para que o teclado seja removido é necessário tirar o foco ta textField.
    
        
        Como fazer esta mesma ação clicando no RETURN
    
    */
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Propriedade que define um texto modelo
        self.textFieldUnica.placeholder = "Digite seu nome aqui"
        
        
        // Propriedade que habilita a limpeza do objeto quando ele inicia uma edição
        //self.textFieldUnica.clearsOnBeginEditing = true
        
        // Propriedade que habilita a inserção segura de texto
        //self.textFieldUnica.secureTextEntry = true
        
        
        // Propriedade que define e retorna o texto
        //self.textFieldUnica.text = "Felipe"
        

        self.textFieldUnica.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func atualizar(_ sender: UIButton) {
        
        
        self.labelTexto.text = self.textFieldUnica.text
        
        self.textFieldUnica.text = ""
        
        self.textFieldUnica.resignFirstResponder()
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        self.becomeFirstResponder()
        
    }
    
    override var canBecomeFirstResponder : Bool {

        return true
        
    }
    
    
    // Método que é disparado quando a textField recebe foco
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        
        print("Iniciou a digitação (textFieldDidBeginEditing)")
    }
    
    // Método disparado quando a text field perde o foco
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("Finalizou a edição (textFieldDidEndEditing)")
    }
    
    
  
    // Método que é disparado quando o usuário clica no RETURN
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        

      self.labelTexto.text = textField.text
        
        return true
        
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        
        
        // O range define a forma de alteração do texto e onde irá acontecer.
        
        //lengh -> define a forma de alteração
       // print(range.length)
        
        //location -> Define a localizacao da alteracao
        print(range.location)
        
        if(string == "a"){
        
        return false
        }
        
        
        
        return true
    }
    

}

