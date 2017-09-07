# Swift Controls Basic UITextField

Uma textField é um objeto de interaface gráfica que permite realizar a entrada de pequenos textos. Por padrão ao clicarmos em uma caixa de texto o teclado é habilitado para a entrada de dados.

Para que o teclado seja removido é necessário tirar o foco ta textField.
    
**Propriedade que define um texto modelo**

    self.textFieldUnica.placeholder = "Digite seu nome aqui"
        
        
**Propriedade que habilita a limpeza do objeto quando ele inicia uma edição**

    self.textFieldUnica.clearsOnBeginEditing = true
        
**Propriedade que habilita a inserção segura de texto**

    self.textFieldUnica.secureTextEntry = true
        
**Propriedade que define e retorna o texto**

    self.textFieldUnica.text = "Caue"

**Método que é disparado quando a textField recebe foco**

func textFieldDidBeginEditing(_ textField: UITextField) {
    
    
    print("Iniciou a digitação (textFieldDidBeginEditing)")
}
    
**Método disparado quando a text field perde o foco**

func textFieldDidEndEditing(_ textField: UITextField) {
    
    print("Finalizou a edição (textFieldDidEndEditing)")
}
    
**Método que é disparado quando o usuário clica no RETURN**

func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    

  self.labelTexto.text = textField.text
    
    return true
    
}

