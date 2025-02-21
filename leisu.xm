#import <UIKit/UIKit.h>

@interface MatchSwitchMenuView : UIView

@end

@interface LeisuADView : UIView

@end

@interface LSVersionUpateView : UIView

@end

%hook MatchSwitchMenuView

- (void)layoutSubviews {
    	%orig;

        self.hidden = YES;
}

%end


%hook LeisuADView

- (id)initWithFrame:(CGRect)arg1 {
        return NULL;
}

%end

%hook LSVersionUpateView

- (void)configUI {
}

%end
