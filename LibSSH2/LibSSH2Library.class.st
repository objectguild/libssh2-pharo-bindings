Class {
	#name : #LibSSH2Library,
	#superclass : #FFILibrary,
	#category : 'LibSSH2'
}

{ #category : #'accessing platform' }
LibSSH2Library >> init [
	^self ffiCall: #(int libssh2_init(0))
]

{ #category : #'accessing platform' }
LibSSH2Library >> macModuleName [ 
	^ 'libssh2.dylib'
]

{ #category : #API }
LibSSH2Library >> newSession [
	^self ffiCall: #(LibSSH2Session * libssh2_session_init_ex())
]
