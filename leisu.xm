#import <UIKit/UIKit.h>

@interface MatchSwitchMenuView : UIView

@end

@interface LeisuADView : UIView

@end

@interface LSVersionUpateView : UIView

@end

@interface ChatBannerAdView : UIView

@end

@interface MatchSortMenuView : UIView

@end

@interface MatchRemarkMenuView : UIView

@end

@interface RMEdgeMenuView : UIView

@end

@interface MatchSlideMenuView : UIView

@end

@interface CYLTabBar : UIView

@end

%hook CYLTabBar

- (void)layoutSubviews {
    	%orig;
        [self removeFromSuperview];
        return;
}

%end

%hook MatchSwitchMenuView

- (void)layoutSubviews {
    	%orig;
        self.hidden = YES;
}

%end

%hook ChatBannerAdView

- (void)layoutSubviews {
    	%orig;
        self.hidden = YES;
}

%end

%hook MatchSortMenuView

- (void)layoutSubviews {
    	%orig;
        self.hidden = YES;
}

%end

%hook MatchRemarkMenuView

- (void)configUI {
}

%end

%hook RMEdgeMenuView

- (void)layoutSubviews {
    	%orig;
        self.hidden = YES;
}

%end

%hook MatchSlideMenuView

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

%hook MeHomeViewController

- (long long)numberOfSectionsInTableView:(id)arg1 {
	return 0;
}

%end
