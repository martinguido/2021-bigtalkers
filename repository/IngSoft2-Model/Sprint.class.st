Class {
	#name : #Sprint,
	#superclass : #Effect,
	#instVars : [
		'N'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
Sprint class >> withN [
	^ self new initializeWithN: 1
	
]

{ #category : #'effect-application' }
Sprint >> applyTo: aGame triggeredBy: aPlayer [

	aGame applySprint: N toPlayer: aPlayer
]

{ #category : #initialization }
Sprint >> initializeWithN: aNumber [
	
	N := aNumber.
]

{ #category : #'effect - invert' }
Sprint >> reverseEffect [

	N := N * -1.

]
