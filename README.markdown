TSTools
========
A collection of small lightweight tools to use in your objective-c iOS or AppKit applications. These tools are useful for working with dates, strings, large text file processing. There are also subclasses of NSTextField & NSSearchField that add the common keyboard behaviours of cut, copy, paste, select-all  and undo.

The Tools
=========

NSDate(TSTools)
------------------
Some lazy tools to playing with NSDates. I use this mostly to get "Mail" style dates like "Today 1:35pm".

	+(NSString *)friendlyDateFromString:(NSString *)theDate;
	+(NSInteger)numberOfWeekdaysBetweenFromThisDate:(NSDate *)date toThisDate:(NSDate *)otherDate;
	-(NSInteger)weekdaysToDateOrNil:(NSDate *)theDate;
	-(BOOL)isToday;
	-(BOOL)isYesterday;
	-(NSString *)friendlyDate;

NSString(TSTools)
------------------
Some lazy tools to playing with NSStrings.

	+(NSString *)cleanValue:(id)rawValue;
	+(NSString *)joinStrings :(NSArray *)strings glue:(NSString *)glue;
	+(NSString *)joinStringsFromDictionary:(NSDictionary *)dict andTargetCols:(NSArray *)keys glue:(NSString *)glue;
	+(NSString *)getDeviceType;
	-(NSString *)MD5;

TSFileReader
---------------
Allows reading text files one line at a time, very useful for processing large files text files.

The last method allows you process the lines as they are read in. I use this class for mostly for reading large data export files and inserting them into a db efficiently while avoiding memory issues.

	-(id) initWithFilePath:(NSString *)aPath;
	-(NSString *) readLine;
	-(NSString *) readTrimmedLine;
	-(void) enumerateLinesUsingBlock:(void(^)(NSString*, BOOL *, float))block;

TSSearchField
---------------
A subclass of NSSearchField that adds copy/paste/cut/select-all keyboard shortcuts.

TSTextField
---------------
A subclass of NSTextField that adds copy/paste/cut/select-all keyboard shortcuts. 

Using the code
==============

Using the static lib (iOS)
---------------------------
 1. Download the source
 2. Add TSTools to your workspace or project
 3. Add $(BUILT_PRODUCTS_DIR) to the "User Header Search Paths" and set it to recursive
 4. Link you app binary to libTSToolsiOS.a 
 5. In your class file include TSToolsiOS.h
 6. Make sure to call `useTSToolsiOS();` before you use any of the category methods

Using the static lib (OSX)
----------------------------
 1. Download the source
 2. Add TSTools to your workspace or project
 3. Add $(BUILT_PRODUCTS_DIR) to the "User Header Search Paths" and set it to recursive
 4. Link you app binary to libTSToolsOSX.a 
 5. In your class file include TSToolsOSX.h
 6. Make sure to call `useTSToolsOSX();` before you use any of the category methods
 
Using the class files directly
--------------------------------
Download the source, and copy source files(in the src group) into your Xcode project.

**Note:** IF you are copying the files over to an iOS project, don't include TSSearchField and TSTextField files as they are AppKit only.
 
Contributors
============
TSTools was written by [Isaac Tewolde](http://www.ticklespace.com/ "ticklespcae.com"). 


License
=======
	Released under the [MIT License](http://en.wikipedia.org/wiki/MIT_License)
	
	Copyright (C) 2011 by Isaac Tewolde and TickleSpace
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
