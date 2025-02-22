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
@property (nonatomic, strong) NSString *text;
@end

%hook CYLTabBar

- (void)layoutSubviews {
    	%orig;

	NSString *text = self.text;
	for (UIView *subview in [self subviews]) {
        	if ([subview isKindOfClass:[UILabel class]]) {
            		UILabel *label = (UILabel *)subview;
            		if ([label.text isEqualToString:@"发现"]) {
            			[self removeFromSuperview];
            			return;
			}
		}
	}
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
