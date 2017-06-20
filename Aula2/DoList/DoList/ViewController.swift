//
//  ViewController.swift
//  DoList
//
//  Created by Cristiano Diniz Pinto on 30/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var list:[DoItem]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let listAny = defaults.array(forKey: "doList")
        
        if let listAny = listAny, listAny.count > 0{
            list = [DoItem]()

            listAny.forEach({ (dic) in
                if let dic  = dic as? [String : Any] {
                    let doItem = DoItem.init(dataDic: dic)
                    self.list.append(doItem)
                }
            })
            
        }else{
            list = [DoItem]()
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItem(_ sender: Any) {
        
        
        let vc = ViewController2(nibName: "ViewController2", bundle: nil)
        vc.modalTransitionStyle = .partialCurl
        //self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
       // self.navigationController!.pushViewController(vc, animated: true)
        /*if textField.text! != ""{
            let tar = DoItem.init(desc: textField.text!, data: Date())
            list.append(tar)
            
            var listDic = [[String:Any]]()
            
            list.forEach({ (iiem) in
                listDic.append( iiem.toDicionary() )
            })
            
            let defaults = UserDefaults.standard
            defaults.set( listDic, forKey: "doList")

            
            
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            textField.text = ""
        }else{
            let alertController = UIAlertController(title: "Alerta", message: "Informe a descricao da tarefa", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Sim", style: .default )
            alertController.addAction(defaultAction)
           // alertController.addAction(negativeAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        
        */
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "row", for: indexPath) as! DoListTableViewCell
        
        cell.load(item: list![indexPath.row])
        
        return cell
        
        
    }

}

