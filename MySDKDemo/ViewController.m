//
//  ViewController.m
//  MySDKDemo
//
//  Created by xuzepei on 2025/2/24.
//

#import "ViewController.h"
#import <MySDK/MySDK.h>

@interface ViewController ()
- (IBAction)clickedCallSDKBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)clickedCallSDKBtn:(id)sender {
    
    NSLog(@"#### clickedCallSDKBtn");
    
    Test* t = [Test new];
    [t showTestAlert:self];
    
    [t showToast:self];
}


@end
