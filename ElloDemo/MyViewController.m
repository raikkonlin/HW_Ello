//
//  MyViewController.m
//  ElloDemo
//
//  Created by LINCHUNGYAO on 2015/10/5.
//  Copyright © 2015年 LINCHUNGYAO. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldPW;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;

@end

@implementation MyViewController

- (IBAction)buttonToLoginVC:(id)sender {
    MyViewController *newVieController =[self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];

        // 切換畫面
    [self presentViewController:newVieController animated:NO completion:nil];
}



- (IBAction)closeKeyboard:(UITextField *)sender {
        [sender resignFirstResponder];
        //[self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismissKeyboard)];

    [self.view addGestureRecognizer:tap];
    _textFieldPW.delegate = self;

}
-(void)dismissKeyboard{
    [self.textFieldPW resignFirstResponder];
    [self.textFieldEmail resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{

    [UIView beginAnimations:nil context:nil];

    [UIView setAnimationDuration:0.25];

    [self.view setFrame:CGRectMake(0, -170 , self.view.frame.size.width, self.view.frame.size.height)];

    [UIView commitAnimations];

}


- (void)textFieldDidEndEditing:(UITextField *)textField {



    [UIView beginAnimations:nil context:nil];

    [UIView setAnimationDuration:0.25];

    [self.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];

    [UIView commitAnimations];


}
@end
