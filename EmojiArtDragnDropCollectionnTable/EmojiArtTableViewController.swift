//
//  EmojiArtTableViewController.swift
//  EmojiArtDragnDropCollectionnTable
//
//  Created by Boppo on 03/05/19.
//  Copyright © 2019 MB. All rights reserved.
//

import UIKit

class EmojiArtTableViewController: UITableViewController {
    // So as with any MVC we should think abou it's model
    // and here the model is emojiArtDocument i.e. list of emoji art documents
    //As our app progresses we gonna allow new documents to be added
    //this model doesnt have enough stuff in it for sections but you could imagine it would
    // what if we had recently created documents ,recently deleted , other kinds of sections
    
    var emojiArtDocuments = ["One","Two","Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       // return 0
        return emojiArtDocuments.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojiArtDocuments[indexPath.row]
        
        
        return cell
    }


    
    @IBAction func newEmojiArt(_ sender: UIBarButtonItem) {
        
        // This madeUnique is in Utilities.swift
        emojiArtDocuments += ["Untitled".madeUnique(withRespectTo: emojiArtDocuments)]
        
        tableView.reloadData()
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}




/*
 When we add buttons to top areas of a navigation controller
 we dont add regular buttons
 It will let you do it but dont do it
 
 You put barButton
 because its in a little navigation bar at the top  that's the button you want
 you get all kind of messed up if you use the wrong button there
 
 there are some predefined buttons up there like a camera , like save  , and there also a add
 And I strongly recommend using one of these predefined one's if it describes what you are doing because user will be used to that icon or that image doing what you expect right there
 
 Normal this just a normal bar button and we can just ctrl drag to it to create an outlet
 */
