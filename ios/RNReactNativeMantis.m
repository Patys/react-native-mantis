
#import "RNReactNativeMantis.h"

@implementation RNReactNativeMantis

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

NSString *_editImagePath = nil;

RCTResponseSenderBlock _onDoneEditing = nil;
RCTResponseSenderBlock _onCancelEditing = nil;

- (void)doneEditingWithImage:(UIImage *)image {
    if (_onDoneEditing == nil) return;

    // Save image.
    [UIImagePNGRepresentation(image) writeToFile:_editImagePath atomically:YES];

    _onDoneEditing(@[]);
}

- (void)canceledEditing {
    if (_onCancelEditing == nil) return;

    _onCancelEditing(@[]);
}

RCT_EXPORT_METHOD(Edit:(nonnull NSDictionary *)props onDone:(RCTResponseSenderBlock)onDone onCancel:(RCTResponseSenderBlock)onCancel) {

    dispatch_async(dispatch_get_main_queue(), ^{
        _editImagePath = [props objectForKey: @"path"];

        _onDoneEditing = onDone;
        _onCancelEditing = onCancel;

        CropViewControllerDelegate *photoEditor = [[CropViewControllerDelegate alloc] initWithNibName:@"CropViewControllerDelegate" bundle: [NSBundle bundleForClass:[CropViewControllerDelegate class]]];

        // Process Image for Editing
        UIImage *image = [UIImage imageWithContentsOfFile:_editImagePath];
        if (image == nil) {
            NSURL *url = [NSURL URLWithString:_editImagePath];
            NSData *data = [NSData dataWithContentsOfURL:url];

            image = [UIImage imageWithData:data];
        }

        // Invoke Editor
        // let cropViewController = Mantis.cropViewController(image: <Your Image>)
        photoEditor.delegate = self
        // <Your ViewController>.present(cropViewController, animated: true)

        id<UIApplicationDelegate> app = [[UIApplication sharedApplication] delegate];
        UINavigationController *rootViewController = ((UINavigationController*) app.window.rootViewController);

        if (rootViewController.presentedViewController) {
            [rootViewController.presentedViewController presentViewController:photoEditor animated:YES completion:nil];
            return;
        }

        [rootViewController presentViewController:photoEditor animated:YES completion:nil];
    });
}

@end
