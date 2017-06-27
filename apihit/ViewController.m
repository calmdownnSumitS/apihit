//
//  ViewController.m
//  apihit
//
//  Created by macserver on 6/23/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *userId,*product,*description,*price2,*categoryid,*catlevel1,*catlevel2,*size,*sizelevel,*condition,*brandid,*shipingfrm,*img;
    //    UIAlertView *alert;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.btnot.layer.cornerRadius = self.btnot.frame.size.height/3;
    self.btnot.clipsToBounds=YES;
    self.btnot.layer.borderWidth=1.f;
    self.btnot.layer.borderColor=[[UIColor grayColor]CGColor];
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

- (IBAction)loginaction:(id)sender
{
    
    userId=self.USERID.text;
    
    product =self.PRODUCTNAME.text;
    
    description=self.DESCRIPTION.text;
    
    price2=self.PRICE2.text;
    
    categoryid=self.CATEGORYID.text;
    
    catlevel1=self.CATLEVEL1.text;
    
    catlevel2=self.CATLEVEL2.text;
    
    size=self.SIZE.text;
    
    sizelevel=self.SIZELEVEL.text;
    
    condition=self.CONDITION.text;
    
    brandid=self.BRANDID.text;
    
    shipingfrm=self.SHIPPINGFRM.text;
    
    img=self.IMAGE.text;

    //get values from textfields
    
    
    //Call Login APi
    NSString *urlString =[NSString
                          stringWithFormat:@"%@",@"http://192.168.1.10/urvashi/c2c_project/api/product.php"];
    NSLog(@"urlstring = %@",urlString);
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:urlString]];
    [request setHTTPMethod:@"POST"];
    
    
    NSMutableData *body = [NSMutableData data];
    
    NSString *boundary =
    @"---------------------------14737809831466499882746641449";
    NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundary];
    [request addValue:contentType forHTTPHeaderField: @"Content-Type"];
    
    
    
    //USERID
    
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"user_id\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[userId dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSLog(@"userId %@",userId);
    
    //PRDUTNAME
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"product_name\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[product dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSLog(@"product %@",product);
    
    //DESCRIPTION
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"description\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[description dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"description %@",description);
    
    //PRICE
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"price\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[price2 dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"price2 %@",price2);
    
    //CATEGORYID
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"category_id\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[categoryid dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"categoryid %@",categoryid);
    
    //CATLEVEL1
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"cat_level_one_id\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[catlevel1 dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"catlevel1 %@",catlevel1);
    
    //CATLEVEL2
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"cat_level_two_id\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[catlevel2 dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"catlevel2 %@",catlevel2);
    
    //SIZE
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"size_id\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[size dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"size %@",size);
    
    //SIZELEVEL1
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"size_level_one_id[]\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[sizelevel dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"sizelevel %@",sizelevel);
    
    //CONDITION
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"condition\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[condition dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSLog(@"condition %@",condition);
    
    //BRANDID
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"brand_id\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[brandid dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"brandid %@",brandid);
    
    //SHIPPINGFRM
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"ship_from\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[shipingfrm dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"shipingfrm %@",shipingfrm);
    
    //IMAGE
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition:form-data; name=\"image[]\"\r\n\r\n"]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[img dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString
                       stringWithFormat:@"\r\n--%@\r\n",boundary]
                      dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"img %@",img);
    
    [request setHTTPBody:body];
    
    
    NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSError *error;
    NSString *jsonString = [[NSString alloc] initWithData:returnData
                                                 encoding:NSStringEncodingConversionAllowLossy];
    
     NSLog(@"jsonString = %@", jsonString);
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData
                                                         options:NSJSONReadingMutableContainers
                                                           error:&error];
    NSLog(@"jsonString = %@", json);
    NSString *jso=[NSString stringWithFormat:@"%@",[json
                                                    valueForKey:@"msg"]];
    NSLog(@"%@",jso);
}

@end
