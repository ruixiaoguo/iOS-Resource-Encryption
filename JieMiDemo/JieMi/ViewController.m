//
//  ViewController.m
//  JieMi
//
//  Created by grx on 2019/9/11.
//  Copyright © 2019 ruixiao. All rights reserved.
//

#import "ViewController.h"
#import "RNDecryptor.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSData *encryptedData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"splash" ofType:@"cxy"]];
    NSError *error;
    NSData *decryptedData = [RNDecryptor decryptData:encryptedData
                             
                                        withPassword:@"pwdcxy"
                             
                                               error:&error];
    NSLog(@"=======%@",str);
}


@end
