Extension { #name : #Socket }

{ #category : #'*LibSSH2' }
Socket >> osSocketHandle [
	^self primOsSocketHandleOf: socketHandle
]

{ #category : #'*LibSSH2' }
Socket >> primOsSocketHandleOf: sqSocket [

  <primitive: 'primitiveOSSocketHandle' module: 'AioPlugin'>
  ^ self primitiveFailed
]
