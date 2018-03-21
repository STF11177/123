//
//  testCell.swift
//  swiftTest
//
//  Created by user on 2018/3/14.
//  Copyright © 2018年 newworld. All rights reserved.
//

import UIKit

class testCell: UITableViewCell {

    var titleLable:UILabel?
    var headImageView:UIImageView?
    var contentLb:UILabel?
    var imgView: UIImageView?
    var readCount: UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
       super.init(style: style, reuseIdentifier: reuseIdentifier)
       self.titleLable = UILabel.init()
       self.titleLable?.text = "james"
       self.addSubview(self.titleLable!)
        
        
        
        //
       self.headImageView = UIImageView.init(image:UIImage(named:"Spotlight_app"))
       self.headImageView?.layer.cornerRadius = 10
       self.headImageView?.layer.masksToBounds = true
       self.addSubview(self.headImageView!)
        
        self.contentLb = UILabel.init()
        self.contentLb?.text = "赔钱，当山峰没有棱角的时候，你是风儿，我是沙，人生若只如初见，何事秋风悲画扇"
        self.contentLb?.numberOfLines = 0
        self.addSubview(self.contentLb!)
        
        self.imgView = UIImageView.init(image:UIImage(named:"Spotlight_app"))
        self.addSubview(self.imgView!)
        
        self.readCount = UILabel.init()
        self.readCount?.text = "1000阅读"
        self.addSubview(self.readCount!)
        
       layOutUI()
    }
    
    func layOutUI() {
        
        self.headImageView?.snp.makeConstraints({ (make) in

            make.top.equalTo(10)
            make.left.equalTo(10)
            make.height.equalTo(20)
            make.width.equalTo(20)
        })
        
        self.titleLable?.snp.makeConstraints({ (make) in
            
            make.centerY.equalTo(self.headImageView!.snp.centerY)
            make.left.equalTo(self.headImageView!.snp.right).offset(15)
        })
        
        self.contentLb?.snp.makeConstraints({ (make) in
            
            make.top.equalTo(self.headImageView!.snp.bottom).offset(5)
            make.left.equalTo(15)
            make.width.equalTo(self.frame.size.width - 30)
        })
        
        self.imgView?.snp.makeConstraints({ (make) in
            
            make.top.equalTo(self.contentLb!.snp.bottom).offset(5)
            make.left.equalTo(15)
            make.height.width.equalTo(70)
        })
        
        self.readCount?.snp.makeConstraints({ (make) in
            
            make.top.equalTo(self.imgView!.snp.bottom).offset(5)
            make.left.equalTo(15)
        })
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
