//
//  TableViewController.swift
//  ListaItens
//
//  Created by Cristiano Diniz Pinto on 02/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

class TableViewController: UITableViewController {

    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var ativoLabel: UILabel!
    
    
    var item:Item! = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let item = item{
            
            descricaoLabel.text = item.descricao!
            precoLabel.text = item.getPrecoFormated()
            formulaLabel.text = item.formulaCalculo!
            if item.ativo! == 1 {
                ativoLabel.text = "Sim"
            }else{
                ativoLabel.text = "Não"
            }
            
            let url = "http://www.guapodesign.com.br/images/produto-ggb-5.jpg"//data.urlIcon{
            Alamofire.request(url).responseImage(completionHandler: { (response) in
                
                if let img = response.result.value {
                    self.imagem.image = img.af_imageRounded(withCornerRadius: 50)
                }
                
            })
        
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
