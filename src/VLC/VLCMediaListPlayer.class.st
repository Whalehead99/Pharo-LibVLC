Class {
	#name : 'VLCMediaListPlayer',
	#superclass : 'FFIOpaqueObject',
	#instVars : [
		'mediaList'
	],
	#category : 'VLC-Structure',
	#package : 'VLC',
	#tag : 'Structure'
}

{ #category : 'accessing' }
VLCMediaListPlayer >> eventManager [
	VLCLibrary uniqueInstance mediaListPlayerEventManager: self
]

{ #category : 'accessing' }
VLCMediaListPlayer >> isPlaying [
	^ VLCLibrary uniqueInstance mediaListPlayerIsPlaying: self
]

{ #category : 'accessing' }
VLCMediaListPlayer >> mediaList [

	^ mediaList
]

{ #category : 'accessing' }
VLCMediaListPlayer >> mediaList: aMediaList [

	mediaList := aMediaList.
	VLCLibrary uniqueInstance
		mediaListPlayer: self
		setMediaList: aMediaList
]

{ #category : 'accessing' }
VLCMediaListPlayer >> mediaPlayer [
	^ VLCLibrary uniqueInstance mediaListPlayerGetMediaPlayer: self
]

{ #category : 'accessing' }
VLCMediaListPlayer >> mediaPlayer: aVLCMediaPlayer [
	VLCLibrary uniqueInstance mediaListPlayer: self setMediaPlayer: aVLCMediaPlayer
]

{ #category : 'api' }
VLCMediaListPlayer >> next [
	VLCLibrary uniqueInstance mediaListPlayerNext: self
]

{ #category : 'api' }
VLCMediaListPlayer >> pause [
	VLCLibrary uniqueInstance mediaListPlayerPause: self
]

{ #category : 'api' }
VLCMediaListPlayer >> pause: anInteger [
	VLCLibrary uniqueInstance mediaListPlayer: self setPause: anInteger
]

{ #category : 'api' }
VLCMediaListPlayer >> play [
	VLCLibrary uniqueInstance mediaListPlayerPlay: self
]

{ #category : 'api' }
VLCMediaListPlayer >> playItem: aVLCMedia [
	VLCLibrary uniqueInstance mediaListPlayer: self playItem: aVLCMedia
]

{ #category : 'api' }
VLCMediaListPlayer >> playItemAtIndex: anIndex [
	VLCLibrary uniqueInstance mediaListPlayer: self playItemAtIndex: anIndex
]

{ #category : 'accessing' }
VLCMediaListPlayer >> playbackMode: aVLCPlaybackMode [
	VLCLibrary uniqueInstance mediaListPlayer: self setPlaybackMode: aVLCPlaybackMode
]

{ #category : 'api' }
VLCMediaListPlayer >> previous [
	VLCLibrary uniqueInstance mediaListPlayerPrevious: self
]

{ #category : 'meta' }
VLCMediaListPlayer >> retain [
	VLCLibrary uniqueInstance mediaListPlayerRetain: self
]

{ #category : 'accessing' }
VLCMediaListPlayer >> state [
	VLCLibrary uniqueInstance mediaListPlayerGetState: self
]

{ #category : 'api' }
VLCMediaListPlayer >> stop [
	VLCLibrary uniqueInstance mediaListPlayerStop: self
]

{ #category : 'api - deprecated' }
VLCMediaListPlayer >> stopAsync [
	self stop
]

{ #category : 'meta' }
VLCMediaListPlayer >> vlcRelease [
	"should be release but we don't want to override"
	VLCLibrary uniqueInstance mediaListPlayerRelease: self
]
