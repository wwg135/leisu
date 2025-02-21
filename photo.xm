#import <UIKit/UIKit.h>

@interface PUAlbumListCellContentView : UIView

@end

%hook PUAlbumListCellContentView

- (void)layoutSubviews {
    %orig;

    NSString *title = self.title;
	if ([title isEqualToString:@"个人收藏"]) {
        [self removeFromSuperview];
        return;
    }
}

%end
