//
//  ViewController.swift
//  PageControl
//
//  Created by 이충현 on 2021/01/28.
//

import UIKit
    // 스와이프 기능은 책 뒷편에서 배울것	임	

    // 페이지 컨트롤을 작동하는데 필요한 변수
    // 여기서 images는 화면에 보여 줄 이미지 파일의 이름을 저장한 배열
    var images = ["01.png", "02.png", "03.png", "04.png", "05.png", "06.png"]

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // numberOfPages -> 페이지 컨트롤의 전체 페이지 수를 의미
        pageControl.numberOfPages = images.count
        // currnetPage -> 현재 페이지 의미
        pageControl.currentPage = 0
        // pageIndicatorTintColor -> 페이지 컨트롤의 페이지를 표시하는 부분의 색상 의미
        // UIColor.green 을 하게 되면 페이지를 표시하는 페이지 컨트롤의 전체 동그라미 부분이 초록색으로 표시
        pageControl.pageIndicatorTintColor = UIColor.green
        // currentPageIndicatorTintColor -> 페이지 컨트롤의 현재 페이지를 표시하는 색상을 의미
        // UIColor.red 를 하게 되면 현재 페이지가 빨간색으로 표시
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        // 페이지가 변경될때 pageChange 함수 안에서 현재 페이지에 해당하는 이미지 파일의 이름을
        // images 배열에서 가져와서 imgView에 할당
        // 1. images[pageControl.currentPage] -> 페이지 컨트롤의 현재페이지를 가져온다
        // 2. (named: ) -> 현재 페이지에 해당하는 이미지 파일의 이름을 images 배열에서 가져온다
        // 3. UIImage -> UIImage 타입의 이미지를 만든다
        // 4. imgView.image -> 만든 이미지를 이미지 뷰에 할당한다
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

