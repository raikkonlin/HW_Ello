//
//  MyViewController.m
//  ElloDemo
//
//  Created by LINCHUNGYAO on 2015/10/5.
//  Copyright © 2015年 LINCHUNGYAO. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController
- (IBAction)closeKeyboard:(UITextField *)sender {
        [sender resignFirstResponder];
        //[self.view endEditing:YES];

}


- (void)viewDidLoad {
    [super viewDidLoad];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
