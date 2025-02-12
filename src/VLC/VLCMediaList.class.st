Class {
	#name : 'VLCMediaList',
	#superclass : 'FFIOpaqueObject',
	#category : 'VLC-Structure',
	#package : 'VLC',
	#tag : 'Structure'
}

{ #category : 'adding' }
VLCMediaList >> addMedia: aVLCMedia [
	^ VLCLibrary uniqueInstance mediaList: self addMedia: aVLCMedia
]

{ #category : 'adding' }
VLCMediaList >> count [
	^ VLCLibrary uniqueInstance mediaListCount: self
]

{ #category : 'adding' }
VLCMediaList >> insertMedia: aVLCMedia at: anIndex [
	^ VLCLibrary uniqueInstance mediaList: self insertMedia: aVLCMedia at: anIndex
]

{ #category : 'adding' }
VLCMediaList >> mediaAt: anIndex [
	^ VLCLibrary uniqueInstance mediaList: self itemAtIndex: anIndex
]

{ #category : 'adding' }
VLCMediaList >> removeIndex: anIndex [
	^ VLCLibrary uniqueInstance mediaList: self removeIndex: anIndex
]
