//
//  ViewController.swift
//  netfilxCopy
//
//  Created by sae hun chung on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var movieImage1: UIImageView!
    @IBOutlet weak var movieImage2: UIImageView!
    @IBOutlet weak var movieImage3: UIImageView!
    
    let movieList: [String] = ["7번방의선물", "겨울왕국2", "광해", "괴물", "국제시장", "극한직업", "도둑들", "명량", "베테랑", "부산행", "신과함께인과연", "신과함께죄와벌", "아바타", "알라딘", "암살", "어벤져스엔드게임", "왕의남자", "태극기휘날리며", "택시운전사", "해운대"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }

    func setImageRadius (movieImage: UIImageView!) {
        movieImage.layer.borderWidth = 3
        movieImage.layer.masksToBounds = false
        movieImage.layer.borderColor = UIColor.lightGray.cgColor
        movieImage.layer.cornerRadius = movieImage.frame.height/2
        movieImage.clipsToBounds = true

    }
    
    func setUI() {
        setImageRadius(movieImage: movieImage1)
        setImageRadius(movieImage: movieImage2)
        setImageRadius(movieImage: movieImage3)
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        mainImage.image = UIImage(named: movieList.randomElement()!)
        movieImage1.image = UIImage(named: movieList.randomElement()!)
        movieImage2.image = UIImage(named: movieList.randomElement()!)
        movieImage3.image = UIImage(named: movieList.randomElement()!)
        
        
    }
    
}

