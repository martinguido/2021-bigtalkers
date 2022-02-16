Class {
	#name : #SpeedUp,
	#superclass : #Effect,
	#instVars : [
		'N'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
SpeedUp class >> withStepsForward [

	^ self new initializeWithN: 4
]

{ #category : #'effect-application' }
SpeedUp >> applyTo: aGame triggeredBy: aPlayer [

	aGame applySpeedUp: N toPlayer:  aPlayer
	
]

{ #category : #initialization }
SpeedUp >> initializeWithN: aNumber [ 

	N := aNumber
]

{ #category : #'effect - invert' }
SpeedUp >> reverseEffect [

	N := N * (-1).

]
