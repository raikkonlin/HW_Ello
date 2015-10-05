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

- (void)viewDidLoad {
    [super viewDidLoad];
    [self randomNumberOddSum];
}

-(void)randomNumberOddSum{
    int a=0,b=0;

    do{
        a=arc4random_uniform(999);
        b=arc4random_uniform(999);
    }while (a>b);

//    for (int j=1; j<100000;j++) {
//        int c=arc4random_uniform(999);
//        if (c==1000) {
//            NSLog(@"%d",c);
//        }
//      NSLog(@"%d",j);
//    }

    if ((a%2)==0) {
        a=a+1;
    }

    int sum=0;
    for (int i=a; i<=b; i+=2) {
        sum+=i;
    }
//NSLog(@"sum=%d",sum);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
