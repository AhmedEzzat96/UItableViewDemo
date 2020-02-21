//
//  MoviesCell.swift
//  UItableViewDemo
//
//  Created by Ahmed Ezzat on 2/21/20.
//  Copyright © 2020 Ahmed Ezzat. All rights reserved.
//

import UIKit

class MoviesCell: UITableViewCell {
    
    @IBOutlet weak var moviesImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configurecell(movie: Movie) {
        moviesImageView.image = UIImage(named: movie.image ?? "")
        titleLabel.text = movie.name
        descriptionLabel.text = movie.description
    }
}
