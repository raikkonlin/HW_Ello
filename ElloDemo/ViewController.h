//
//  ViewController.h
//  ElloDemo
//
//  Created by LINCHUNGYAO on 2015/10/5.
//  Copyright © 2015年 LINCHUNGYAO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

   IBOutlet  NSLayoutConstraint   *constraintNextBottom;   //instance variable 希望有一個class 變數 在執行期間一直被存取
}


@property (nonatomic,weak) IBOutlet NSLayoutConstraint   *constraintBottom;
@property (nonatomic,weak) IBOutlet NSLayoutConstraint   *constraintRight;
@property (nonatomic,weak) IBOutlet NSLayoutConstraint   *constraintLeft;

@end

