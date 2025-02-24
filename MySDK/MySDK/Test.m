//
//  Test.m
//  MySDK
//
//  Created by xuzepei on 2025/2/24.
//

#import "Test.h"


@implementation Test

- (void)showTestMessage {
    NSLog(@"####: This is a test message from my sdk.");
}

- (void)showTestAlert:(UIViewController*)viewController {
    
    if (nil != viewController) {
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"Test" message:@"This is a test alert from my sdk." preferredStyle: UIAlertControllerStyleAlert];
        
        UIAlertAction* action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        [alertController addAction:action];
        
        
        [viewController presentViewController:alertController animated:YES completion:nil];
    }

}

@end
