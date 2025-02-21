#import <UIKit/UIKit.h>

@interface PXGadgetUICollectionViewCell : UIView
@property (nonatomic, strong) NSString *title;
@end

%hook PXGadgetUICollectionViewCell

- (void)layoutSubviews {
    	%orig;

    	NSString *title = self.title;
	for (UIView *subview in [self subviews]) {
		if ([subview title isEqualToString:(@"个人收藏")]) {
        		[self removeFromSuperview];
        		return;
		}
    	}
}

%end
