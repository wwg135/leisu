#import <UIKit/UIKit.h>

@interface MatchSwitchMenuView : UIView

@end

@interface LeisuADView : UIView

@end

@interface LSVersionUpateView : UIView

@end

@interface UITabBarButton : UIButton

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

%hook MeHomeViewController

- (long long)numberOfSectionsInTableView:(id)arg1 {
	return 0;
}

%end

%hook UITabBarButton

- (void)_ios_layoutSubviews {
    %orig;

    NSString *accessibilityLabel = self.accessibilityLabel;

	for (UIView *subview in self.subviews) {
    	if ([accessibilityLabel isEqualToString:@"发现"]) {
        	[self removeFromSuperview];
        	return;
		}
    }
}

%end
