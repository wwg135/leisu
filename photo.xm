#import <UIKit/UIKit.h>

@interface PXGadgetUICollectionViewCell : UIView
@property (nonatomic, strong) NSString *title;
@end

%hook PXGadgetUICollectionViewCell

- (void)layoutSubviews {
    	%orig;

    	NSString *title = self.title;
	if ([title isEqualToString:@"个人收藏"]) {
        	self.hidden = YES;
	}
}

%end
