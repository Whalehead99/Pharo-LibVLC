Class {
	#name : 'VLCMediaPlayer',
	#superclass : 'FFIOpaqueObject',
	#category : 'VLC-Structure',
	#package : 'VLC',
	#tag : 'Structure'
}

{ #category : 'api' }
VLCMediaPlayer >> getMedia [
	^ VLCLibrary uniqueInstance mediaPlayerGetMedia: self
]

{ #category : 'api' }
VLCMediaPlayer >> pause [
	VLCLibrary uniqueInstance mediaPlayerPause: self
]

{ #category : 'api' }
VLCMediaPlayer >> play [
	VLCLibrary uniqueInstance mediaPlayerPlay: self
]

{ #category : 'api' }
VLCMediaPlayer >> position [
	^ VLCLibrary uniqueInstance mediaPlayerGetPosition: self
]

{ #category : 'api' }
VLCMediaPlayer >> stop [
	VLCLibrary uniqueInstance mediaPlayerStop: self
]

{ #category : 'api' }
VLCMediaPlayer >> toggleFullscreen [
	VLCLibrary uniqueInstance mediaPlayerToggleFullscreen: self
]

{ #category : 'api' }
VLCMediaPlayer >> toggleMute [
	VLCLibrary uniqueInstance mediaPlayerAudioToggleMute: self
]

{ #category : 'api' }
VLCMediaPlayer >> vlcRelease [
	^ VLCLibrary uniqueInstance mediaPlayerRelease: self
]
