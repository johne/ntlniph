#import "NTLNCellBackgroundView.h"
#import "NTLNStatusCell.h"

@implementation NTLNCellBackgroundView

- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		// Initialization code
	}
	return self;
}

+ (void)drawBackground:(CGRect)rect backgroundColor:(UIColor*)backgroundColor {
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
	CGContextFillRect(context,CGRectMake(0, 1, rect.size.width, rect.size.height-2));
	
	const CGFloat *f = CGColorGetComponents(backgroundColor.CGColor);
	
	CGContextSetRGBFillColor(context, f[0]*1.5, f[1]*1.5, f[2]*1.5, 1.f);
	CGContextFillRect(context,CGRectMake(0, 0, rect.size.width,1));
	
	CGContextSetRGBFillColor(context, f[0]*0.9, f[1]*0.9, f[2]*0.9, 1.f);
	CGContextFillRect(context,CGRectMake(0, rect.size.height-1, rect.size.width,1));
}

- (void)drawRect:(CGRect)rect {
	[NTLNCellBackgroundView drawBackground:rect backgroundColor:self.backgroundColor];
}

- (void)dealloc {
	[super dealloc];
}

@end
