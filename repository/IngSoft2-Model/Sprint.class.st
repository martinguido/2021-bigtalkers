Class {
	#name : #Sprint,
	#superclass : #Effect,
	#category : #'IngSoft2-Model'
}

{ #category : #'effect-application' }
Sprint >> applyTo: aGame triggeredBy: aPlayer [

	aGame applySprintTo: aPlayer
]
