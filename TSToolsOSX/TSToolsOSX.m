//
//  TSFoundationTools.h
//  TSTools
//
//  Created by Isaac Tewolde on 10-11-11.
//  Copyright 2010 Ticklespace.com All rights reserved.
//

#import "TSTextField.h"
#import "TSSearchField.h"
#import "TSFileReader.h"
#import "NSDate+TSTools.h"
#import "NSString+TSTools.h"

void useTSToolsOSX(){
  useTSDateTools();
  useTSStringTools();  
  useTSTextField();
  useTSSearchField();
  //Do nothing, just used for linking in categories
}


@implementation NSObject (TSToolsOSX)

@end
