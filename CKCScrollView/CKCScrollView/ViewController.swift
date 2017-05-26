//
//  ViewController.swift
//  CKCScrollView
//
//  Created by 陈开琛 on 2017/5/22.
//  Copyright © 2017年 陈开琛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.width, height: 50))
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
        
        //图片数组
        let imagesArr = ["second.jpeg","third.jpeg","fourth.jpeg","fifth.jpeg","sixth.jpeg","seventh.jpeg","eighth.jpg"]
        
        //创建轮播视图
        let scrollView = CKCScrollView(frame: CGRect(x: 0, y: 20, width: view.width, height: 200))
        view.addSubview(scrollView)
        
        //展示图片
        scrollView.imageArray = imagesArr

        //是否自动轮播
        scrollView.isAutoScroll = true
        
        //切换时间间隔（可不设置，默认三秒）
        //scrollView.autoScrollDeley = 1
        
        //点击屏幕中间图片回调
        scrollView.blockWithClick = {(senderCLick : Int) ->() in
        
            label.text = "点击了第\(senderCLick + 1)张图片"
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

