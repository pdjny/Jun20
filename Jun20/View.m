//
//  View.m
//  Jun20
//
//  Created by PHILIP JACOBS on 6/19/13.
//  Copyright (c) 2013 PHILIP JACOBS. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	UIFont *font = [UIFont systemFontOfSize:32];
	CGSize size = [@"Hello World!" sizeWithFont: font];
	CGFloat x = self.bounds.origin.x + ((self.bounds.size.width) / 2) - (size.width / 2);
	CGPoint point = CGPointMake(x, 0.0);
	
	NSString *string = @"Hello World!";
	[string drawAtPoint:point withFont:font];
	
	for (int i = 1; i <= 25; ++i) {
		[[NSString stringWithFormat: @"Hello World %d!", i] drawAtPoint:CGPointMake((i - 1) * 10.0, i*25.0) withFont:[UIFont systemFontOfSize:32]];
	}
	
	for (double h = 1; h <= 10; ++h) {
		int y = h * 40;
		double green = h / 10;
		double blue = 1 - (h / 10);
		for (double i = 1; i <= 5; ++i) {
			
			double red = 1.0 - (i / 10);
			CGRect r = CGRectMake(1+((i-1)*50),y,100,50);
			CGContextRef c = UIGraphicsGetCurrentContext();
    		CGContextBeginPath(c); //unnecessary here: the path is already empty.
    		CGContextAddEllipseInRect(c, r);
    		//CGContextSetRGBFillColor(c, (1-(i/10)), (i/10), i/7, 1-(i/9));	//red, opaque
			CGContextSetRGBFillColor(c, red, green, blue, 1.0);	//red, opaque
    		CGContextFillPath(c);
		}
	}

}
@end
