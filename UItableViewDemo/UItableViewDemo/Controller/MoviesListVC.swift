//
//  MoviesListVC.swift
//  UItableViewDemo
//
//  Created by Ahmed Ezzat on 2/21/20.
//  Copyright © 2020 Ahmed Ezzat. All rights reserved.
//

import UIKit

class MoviesListVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let cellIdentifier = "MoviesCell"
    var moviesArr: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        getData()
    }
    
    private func getData() {
        let movie1 = Movie(name: "The Fault in our Stars", image: "1", description: "watch this movie")
        let movie2 = Movie(name: "End Game", image: "2", description: "watch this movie")
        let movie3 = Movie(name: "London Has fallen", image: "3", description: "watch this movie")
        let movie4 = Movie(name: "Me before you", image: "4", description: "watch this movie")
        
        moviesArr = [movie1, movie2, movie3, movie4]
    }
    
}

extension MoviesListVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MoviesCell else {
            return UITableViewCell()
        }
        cell.configurecell(movie: moviesArr[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
