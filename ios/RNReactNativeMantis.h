
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

#import <UIKit/UIKit.h>
#import "Mantis/Mantis.h"

@interface RNReactNativeMantis : NSObject <RCTBridgeModule, CropViewControllerDelegate>

@end
