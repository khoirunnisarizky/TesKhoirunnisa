//
//  DetailViewController.swift
//  Alodoc
//
//  Created by khoirunnisa' rizky noor fatimah on 31/10/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollPicture: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var option: [String] = []
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurePageControl()
        
        scrollPicture.delegate = self
        scrollPicture.isPagingEnabled = true
        
        pageControl.numberOfPages = option.count
        for index in 0..<option.count {
            frame.origin.x = scrollPicture.frame.size.width * CGFloat(index)
            frame.size = scrollPicture.frame.size
           
            let view = UIImageView(frame: frame)
            view.image = UIImage(named: option[index])
            self.scrollPicture.addSubview(view)
            
        }
        
//        scrollPicture.contentSize = CGSize(width: scrollPicture.frame.size.width , height: scrollPicture.frame.size.height)
        self.scrollPicture.contentSize = CGSize(width:self.scrollPicture.frame.size.width * 3,height: self.scrollPicture.frame.size.height)
    }
    
    func configurePageControl() {
        self.pageControl.numberOfPages = option.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.red
        self.view.addSubview(pageControl)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //let pageNumber = scrollPicture.contentOffset.x / scrollPicture.frame.size.width
        //pageControl.currentPage = Int(pageNumber)
        let pageNumber = round(scrollPicture.contentOffset.x / scrollPicture.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    }
    
    @IBAction func changePage(_ sender: UIPageControl) {
        let x = CGFloat(pageControl.currentPage) * scrollPicture.frame.size.width
        scrollPicture.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }
    
 

}
