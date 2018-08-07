//
//  ViewController.swift
//  FHXPreviewVC
//
//  Created by fenghanxu on 08/06/2018.
//  Copyright (c) 2018 fenghanxu. All rights reserved.
//

import UIKit
import FHXPreviewVC

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
      
      let btn = UIButton()
      btn.backgroundColor = UIColor.blue
      btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
      btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
      view.addSubview(btn)

      
    }

  @objc func btnClick(){
    //      var images = [
    //        "http://e.hiphotos.baidu.com/image/h%3D300/sign=ce18bf50dbca7bcb627bc12f8e086b3f/a2cc7cd98d1001e98517929cb40e7bec54e7977e.jpg",
    //        "http://f.hiphotos.baidu.com/image/pic/item/b58f8c5494eef01f2fe05953ecfe9925bd317dab.jpg",
    //        "http://c.hiphotos.baidu.com/image/pic/item/f11f3a292df5e0fe437d0e92506034a85edf7238.jpg",
    //        "http://d.hiphotos.baidu.com/image/pic/item/3b292df5e0fe992567f5eec338a85edf8cb171ac.jpg",
    //        "http://e.hiphotos.baidu.com/image/pic/item/aa18972bd40735facafdd12a92510fb30f240817.jpg"]
    
    let images = ["0","1","2","3","4","5","6","7","8"]
    
    //传递本地图片是一个string类型
    let previewVC = PreviewViewController(imageString: images, index: 0, chooses: .Local)
    //传递网络图片是一个网址也是string类型
    //      let previewVC = PreviewViewController(imageString: images, index: 0, chooses: .Network)
    //直接传递UIImage数组，里面包换图片，直接赋值显示
    //      let previewVC = PreviewViewController(imageArr: images, index: 0, chooses: .Image)
    
    navigationController?.pushViewController(previewVC, animated: true)
  }


}

