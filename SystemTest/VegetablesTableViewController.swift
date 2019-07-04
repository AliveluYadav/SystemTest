//
//  VegetablesTableViewController.swift
//  SystemTest
//
//  Created by SAIKRISHNA on 4/10/18.
//  Copyright © 2018 SAIKRISHNA. All rights reserved.
//

import UIKit

class VegetablesTableViewController: UITableViewController {
    var vegetablesArr = [String]()
 var TextField = UITextField()
    
    @IBAction func addAction(_ sender: Any) {
        
        
        let alert = UIAlertController(title: "Vegetables", message: "Do You Want to Add New", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addTextField { (textField) -> Void in
            self.TextField = textField
            self.TextField.delegate = self as? UITextFieldDelegate //REQUIRED
            self.TextField.placeholder = "Enter your search terms"
        }
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: ({UIAlertAction in
            
            
            self.vegetablesArr.append(self.TextField.text!)
            self.tableView.reloadData()
            
        }))
     
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return mainArr.count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return vegetablesArr.count
        
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)


        cell.textLabel!.text = vegetablesArr[indexPath.row]


        return (cell)
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            
            
            
            
        }
    }
    
    
    

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
