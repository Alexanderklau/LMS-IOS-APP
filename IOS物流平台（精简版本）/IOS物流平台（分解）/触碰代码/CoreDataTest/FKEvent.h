//
//  FKEvent.h
//  CoreDataTest
//
//  Created by yeeku on 1.
//  Copyright (c)  crazyit.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface FKEvent : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * happenDate;

@end
