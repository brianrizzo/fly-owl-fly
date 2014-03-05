//
//  MyScene.m
//  SpriteActionsTutorial
//
//  Created by Arthur Knopper on 09-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.Owl = [SKSpriteNode spriteNodeWithImageNamed:@"owl"];
        self.Owl.position = CGPointMake(self.size.width/2, self.size.height/2);
        
        [self addChild:self.Owl];
        
        //SKAction *moveBottomLeft = [SKAction moveTo:CGPointMake(100, 100) duration:2.0];
        
//        SKAction *moveRight = [SKAction moveByX:50 y:0 duration:1.0];
//        SKAction *moveBottom = [SKAction moveByX:0 y:-100 duration:3.0];
//        
//        //SKAction *sequence = [SKAction sequence:@[moveRight, moveBottom]];
//        
//       SKAction *reversedMoveBottom=[moveBottom reversedAction];
//        SKAction *sequence = [SKAction sequence:@[moveRight, moveBottom, reversedMoveBottom]];
        
        //[sprite runAction:moveBottomLeft];
        //[sprite runAction:moveRight];
        //[sprite runAction:sequence];
        
//        SKAction *endlessAction = [SKAction repeatActionForever:sequence];
//        [sprite runAction:endlessAction];
    }
    
    return self;
}

- (UIColor *)randomColor
{
    
    CGFloat red = ((arc4random() % 100) / 100.0);
    CGFloat green = ((arc4random() % 100) / 100.0);
    CGFloat blue = ((arc4random() % 100) / 100.0);
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Called when a touch begins
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        UIColor * owlColor = [self randomColor];
        
        //SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"owl"];
        
       
       // self.Owl.position = location;
        
        //SKAction *liftoff = [SKAction moveByX:0 y:1000 duration: 2];
       // [self.Owl runAction:liftoff];
        
        SKAction *flyOwlFly = [SKAction moveTo:location duration:4];
        [self.Owl runAction:flyOwlFly];
        
        SKAction *color = [SKAction colorizeWithColor:owlColor colorBlendFactor:.9 duration:3];
        [self.Owl runAction:color];
        
       // [self.Owl runAction:[SKAction repeatActionForever:action]];
        
        //[self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
