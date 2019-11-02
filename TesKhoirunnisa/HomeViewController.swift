//
//  HomeViewController.swift
//  Alodoc
//
//  Created by khoirunnisa' rizky noor fatimah on 31/10/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tablePicture: UITableView!
    
    var covers = [UIImage(named: "gambar1"), UIImage(named: "gambar4"), UIImage(named: "gambar7")]
    var indeks = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableView()
    }
    

    //MARK: - Mengatur table view
    func setupTableView() {
        //dengan mereferensikan delegate dan data source dari tableView ke ViewController, kita mengkonfirmasi protocol yg kita gunakan (UITableViewDataSource & UITableViewDelegate)
        tablePicture.delegate = self
        tablePicture.dataSource = self
        tablePicture.rowHeight = 250
    }

}

extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return covers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tablePicture.dequeueReusableCell(withIdentifier: "PictureCell", for: indexPath) as? PictureCell else {return UITableViewCell()}
        
        cell.cover.image = covers[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        tableView.deselectRow(at: indexPath, animated: true)
        indeks = indexPath.row
        performSegue(withIdentifier: "getDetail", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDetail" {
            if let navigasi = segue.destination as? UINavigationController {
                if let viewController = navigasi.topViewController as? DetailViewController {
                    var daftar: [String] = []
                        if indeks == 0 {
                            daftar = ["gambar1", "gambar2", "gambar3"]
                            } else if indeks == 1 {
                            daftar = ["gambar4", "gambar5", "gambar6"]
                            } else if indeks == 2 {
                            daftar = ["gambar7", "gambar8", "gambar9"]
                            }
                    viewController.option = daftar
                }
            }
        }
    }
}
