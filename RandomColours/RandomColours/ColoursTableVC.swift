//
//  ColoursTabelVC.swift
//  RandomColours
//
//  Created by Muhammad Fakhrulghazi bin Mohd Fouad on 30/11/2020.
//

import UIKit

class ColoursTableVC: UIViewController {

    var colours: [UIColor] = []
    
    enum Cells {
        static let colourCell = "ColourCell"
    }
    
    enum Segues {
        static let toDetail = "ToColoursDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appendRandomColours()
    }
    
    //func that appends randomcolour 50 times
    func appendRandomColours() {
        for _ in 1..<50 {
            colours.append(.random())
        }
    }

    
    //func that handles segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColoursDetailVC
        destVC.colour = sender as? UIColor
    }

}

extension ColoursTableVC: UITableViewDelegate, UITableViewDataSource {
    
    //how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    //delegate method that waits to fire up only after something happens
    //what you want to show in each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colourCell) else { return UITableViewCell()}
        //get a colour to tell the cell what colour it is
        cell.backgroundColor = colours[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: colour)
    }
}
