#import <UIKit/UIKit.h>

@interface MatchSwitchMenuView : UIView

@end

@interface LeisuADView : UIView

@end

@interface LSVersionUpateView : UIView

@end

@interface UITabBarButtonLabel : UILabel

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

%hook UITabBarButtonLabel

- (void)layoutSubviews {
    %orig;

    NSString *text = self.text;

    if ([text isEqualToString:@"发现"]) {
        [self removeFromSuperview];
        return;
    }
}

%end
