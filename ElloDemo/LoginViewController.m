//
//  LoginViewController.m
//  ElloDemo
//
//  Created by LINCHUNGYAO on 2015/10/6.
//  Copyright © 2015年 LINCHUNGYAO. All rights reserved.
//

#import "LoginViewController.h"
#import "MyViewController.h"

@interface LoginViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *buttonTerm;
@property (weak, nonatomic) IBOutlet UITextField *textEmail;
@property (weak, nonatomic) IBOutlet UITextField *textUsername;
@property (weak, nonatomic) IBOutlet UITextField *textPassword;

@end

@implementation LoginViewController
- (IBAction)buttonToLogin:(id)sender {
    MyViewController *newVieController =[self.storyboard instantiateViewControllerWithIdentifier:@"MyViewController"];

        // 切換畫面
    [self presentViewController:newVieController animated:NO completion:nil];
}

- (IBAction)dismissKeyboard:(id)sender {
    [sender resignFirstResponder];
}

//- (IBAction)buttonToLogin:(id)sender {
////    [buttonToLogin addTarget:self action:@selector(goldStarOpen) forControlEvents:UIControlEventTouchUpInside];
//    [self goldStarOpen];
//
//}
//
//
//- (void)goldStarOpen
//{
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LoginStoryboard" bundle:[NSBundle mainBundle]];
//    MyViewController *myController = [storyboard instantiateViewControllerWithIdentifier:@"MyViewController"];
//    [self presentViewController:myController animated:YES completion:nil];
//}

- (void)viewDidLoad {
    [super viewDidLoad];

    _buttonTerm.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    [_buttonTerm setTitleColor:[UIColor colorWithRed:170/255.0
                                                         green:171/255.0
                                                          blue:172/255.0
                                                         alpha:1.0] forState:UIControlStateNormal];
    [_buttonTerm setTitle:@"By Clicking Create Account you\nare agreeing to our Terms." forState:UIControlStateNormal];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismissKeyboard)];

    [self.view addGestureRecognizer:tap];
    _textPassword.delegate=self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)dismissKeyboard{
    [self.textEmail resignFirstResponder];
    [self.textUsername resignFirstResponder];
    [self.textPassword resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{

    [UIView beginAnimations:nil context:nil];

    [UIView setAnimationDuration:0.25];

    [self.view setFrame:CGRectMake(0, -120 , self.view.frame.size.width, self.view.frame.size.height)];

    [UIView commitAnimations];

}


- (void)textFieldDidEndEditing:(UITextField *)textField {



    [UIView beginAnimations:nil context:nil];

    [UIView setAnimationDuration:0.25];

    [self.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];

    [UIView commitAnimations];


}
@end
