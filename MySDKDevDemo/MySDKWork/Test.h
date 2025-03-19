//
//  Test.h
//  MySDK
//
//  Created by xuzepei on 2025/2/25.
//

#import <UIKit/UIKit.h>


@interface Test : NSObject

- (void)showTestMessage;
- (void)showTestAlert:(UIViewController*)viewController;
- (void)showToast:(UIViewController*)vc message:(NSString*)msg;
+ (void)showToast:(UIViewController*)vc;

@end


