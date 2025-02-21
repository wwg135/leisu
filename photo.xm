#import <UIKit/UIKit.h>

@interface PUAlbumListCellContentView : UIView
@property (nonatomic, strong) NSString *title;
@end

%hook PUAlbumListCellContentView

- (void)layoutSubviews {
    	%orig;

    	NSString *title = self.title;
	if ([title isEqualToString:@"个人收藏"]) {
        	self.hidden = YES;
	}
}

%end
