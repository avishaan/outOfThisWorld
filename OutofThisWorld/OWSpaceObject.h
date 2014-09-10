//
//  OWSpaceObject.h
//  OutofThisWorld
//
//  Created by Brown Magic on 9/8/14.
//  Copyright (c) 2014 codeHatcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OWSpaceObject : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nickname;
@property (nonatomic, strong) NSString *interestFact;

@property (nonatomic, strong) UIImage *spaceImage;

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image;


@end
