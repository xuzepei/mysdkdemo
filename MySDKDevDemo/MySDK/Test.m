//
//  Test.m
//  MySDK
//
//  Created by xuzepei on 2025/2/25.
//

#import "Test.h"
#import <Toast/UIView+Toast.h>

@implementation Test

- (void)showTestMessage {
    NSLog(@"####: This is a test message from my sdk3.");
}

- (void)showTestAlert:(UIViewController*)viewController {
    
    if (nil != viewController) {
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"Test" message:@"This is a test alert from my sdk3." preferredStyle: UIAlertControllerStyleAlert];
        
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        [alertController addAction:action];
        
        
        [viewController presentViewController:alertController animated:YES completion:nil];
    }

}

- (void)showToast:(UIViewController*)vc message:(NSString*)msg
{
    if(msg.length != 0) {
        [vc.view makeToast:msg
                    duration:3.0
                    position:CSToastPositionCenter];
    }
}

+ (void)showToast:(UIViewController*)vc
{
    [vc.view makeToast:@"This is a toast from class method"
                duration:3.0
                position:CSToastPositionCenter];
}
@end
