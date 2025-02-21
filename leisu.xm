#import <UIKit/UIKit.h>

@interface MatchSwitchMenuView : UIView

@end

%hook MatchSwitchMenuView

- (void)layoutSubviews {
    	%orig;

        self.hidden = YES;
}

%end
