
#import "RNReactNativeMantis.h"
#import "React/RCTBridgeModule.h"

@implementation RNReactNativeMantis

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

@interface RCT_EXTERN_MODULE(RNMantis, NSObject)
@end

@end
