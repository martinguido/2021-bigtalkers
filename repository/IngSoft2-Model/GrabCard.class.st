Class {
	#name : #GrabCard,
	#superclass : #Effect,
	#category : #'IngSoft2-Model'
}

{ #category : #'effect-application' }
GrabCard >> applyTo: aGame triggeredBy: aPlayer [

	aGame applyGrabCardTo: aPlayer
]

{ #category : #'effect - invert' }
GrabCard >> reverseEffect [ 
]
