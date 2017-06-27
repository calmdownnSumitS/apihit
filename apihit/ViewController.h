//
//  ViewController.h
//  apihit
//
//  Created by macserver on 6/23/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *USERID;

@property (weak, nonatomic) IBOutlet UITextField *PRODUCTNAME;
@property (weak, nonatomic) IBOutlet UITextField *DESCRIPTION;

@property (weak, nonatomic) IBOutlet UITextField *PRICE2;

@property (weak, nonatomic) IBOutlet UITextField *CATEGORYID;
@property (weak, nonatomic) IBOutlet UITextField *CATLEVEL1;

@property (weak, nonatomic) IBOutlet UITextField *CATLEVEL2;
@property (weak, nonatomic) IBOutlet UITextField *SIZE;
@property (weak, nonatomic) IBOutlet UITextField *SIZELEVEL;
@property (weak, nonatomic) IBOutlet UITextField *CONDITION;
@property (weak, nonatomic) IBOutlet UITextField *BRANDID;
@property (weak, nonatomic) IBOutlet UITextField *SHIPPINGFRM;
@property (weak, nonatomic) IBOutlet UITextField *IMAGE;

@property (weak, nonatomic) IBOutlet UIButton *btnot;

- (IBAction)loginaction:(id)sender;

@end




