//
//  rowTableViewCell.swift
//  ListaItens
//
//  Created by Cristiano Diniz Pinto on 02/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class rowTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var descircaoLabel: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    
    func load(data:Item){
        
        //imagem.image = UIImage.
        let url = "http://www.guapodesign.com.br/images/produto-ggb-5.jpg"//data.urlIcon{
        Alamofire.request(url).responseImage(completionHandler: { (response) in
            
            if let img = response.result.value {
                self.imagem.image = img.af_imageRounded(withCornerRadius: 50)
            }
            
        })
        
        descircaoLabel.text = data.descricao
        precoLabel.text = data.getPrecoFormated()
        
        
    
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
