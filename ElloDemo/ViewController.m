//
//  ViewController.m
//  ElloDemo
//
//  Created by LINCHUNGYAO on 2015/10/5.
//  Copyright © 2015年 LINCHUNGYAO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)signUpToLoginVC:(id)sender {
    UIViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self presentViewController:vc animated:NO completion:nil];
}
- (IBAction)loginToMyVC:(id)sender {
    UIViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"MyViewController"];
    [self presentViewController:vc animated:NO completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self randomNumberOddSum];
    //    self.constraintBottom.constant=100;
    //    constraintNextBottom.constant=50; //不需要self

}

//-(void)randomNumberOddSum{
//    int a=0,b=0;
//
//    do{
//        a=arc4random()%1000;
//        b=arc4random()%1000;
////        NSLog(@"a=%d",a);
////        NSLog(@"b=%d",b);
//    }while (a>b);
//        NSLog(@"a=%d",a);
//        NSLog(@"b=%d",b);
//
//
////    for (int j=1; j<10000;j++) {
////        int c=arc4random_uniform(9);
////        if (c==10) {
////            NSLog(@"%d",c);
////        }
////      NSLog(@"%d",j);
////    }
//
//    if ((a%2)==0) {
//        a=a+1;
//    }
//
//    int sum=0;
//    for (int i=a; i<=b; i+=2) {
//        sum+=i;
//    }
//NSLog(@"sum=%d",sum);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
