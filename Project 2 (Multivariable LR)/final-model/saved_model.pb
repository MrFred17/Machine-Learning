??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
z
dense_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_79/kernel
s
#dense_79/kernel/Read/ReadVariableOpReadVariableOpdense_79/kernel*
_output_shapes

:@*
dtype0
r
dense_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_79/bias
k
!dense_79/bias/Read/ReadVariableOpReadVariableOpdense_79/bias*
_output_shapes
:@*
dtype0
z
dense_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_80/kernel
s
#dense_80/kernel/Read/ReadVariableOpReadVariableOpdense_80/kernel*
_output_shapes

:@ *
dtype0
r
dense_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_80/bias
k
!dense_80/bias/Read/ReadVariableOpReadVariableOpdense_80/bias*
_output_shapes
: *
dtype0
z
dense_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_81/kernel
s
#dense_81/kernel/Read/ReadVariableOpReadVariableOpdense_81/kernel*
_output_shapes

: *
dtype0
r
dense_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_81/bias
k
!dense_81/bias/Read/ReadVariableOpReadVariableOpdense_81/bias*
_output_shapes
:*
dtype0
z
dense_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_82/kernel
s
#dense_82/kernel/Read/ReadVariableOpReadVariableOpdense_82/kernel*
_output_shapes

:*
dtype0
r
dense_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_82/bias
k
!dense_82/bias/Read/ReadVariableOpReadVariableOpdense_82/bias*
_output_shapes
:*
dtype0
z
dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_83/kernel
s
#dense_83/kernel/Read/ReadVariableOpReadVariableOpdense_83/kernel*
_output_shapes

:*
dtype0
r
dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_83/bias
k
!dense_83/bias/Read/ReadVariableOpReadVariableOpdense_83/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_79/kernel/m
?
*Adam/dense_79/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_79/bias/m
y
(Adam/dense_79/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_80/kernel/m
?
*Adam/dense_80/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_80/bias/m
y
(Adam/dense_80/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_81/kernel/m
?
*Adam/dense_81/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_81/bias/m
y
(Adam/dense_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_82/kernel/m
?
*Adam/dense_82/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_82/bias/m
y
(Adam/dense_82/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_83/kernel/m
?
*Adam/dense_83/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_83/bias/m
y
(Adam/dense_83/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_79/kernel/v
?
*Adam/dense_79/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_79/bias/v
y
(Adam/dense_79/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_80/kernel/v
?
*Adam/dense_80/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_80/bias/v
y
(Adam/dense_80/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_81/kernel/v
?
*Adam/dense_81/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_81/bias/v
y
(Adam/dense_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_82/kernel/v
?
*Adam/dense_82/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_82/bias/v
y
(Adam/dense_82/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_83/kernel/v
?
*Adam/dense_83/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_83/bias/v
y
(Adam/dense_83/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?5
value?5B?5 B?5
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer

signatures
#_self_saveable_object_factories
	regularization_losses

	variables
trainable_variables
	keras_api
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
	variables
 trainable_variables
!	keras_api
?

"kernel
#bias
#$_self_saveable_object_factories
%regularization_losses
&	variables
'trainable_variables
(	keras_api
?

)kernel
*bias
#+_self_saveable_object_factories
,regularization_losses
-	variables
.trainable_variables
/	keras_api
?
0iter

1beta_1

2beta_2
	3decay
4learning_ratemXmYmZm[m\m]"m^#m_)m`*mavbvcvdvevfvg"vh#vi)vj*vk
 
 
 
F
0
1
2
3
4
5
"6
#7
)8
*9
F
0
1
2
3
4
5
"6
#7
)8
*9
?
5layer_metrics

6layers
7non_trainable_variables
8layer_regularization_losses
9metrics
	regularization_losses

	variables
trainable_variables
[Y
VARIABLE_VALUEdense_79/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_79/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
?
:layer_metrics

;layers
<metrics
=layer_regularization_losses
>non_trainable_variables
regularization_losses
	variables
trainable_variables
[Y
VARIABLE_VALUEdense_80/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_80/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
?
?layer_metrics

@layers
Ametrics
Blayer_regularization_losses
Cnon_trainable_variables
regularization_losses
	variables
trainable_variables
[Y
VARIABLE_VALUEdense_81/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_81/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
?
Dlayer_metrics

Elayers
Fmetrics
Glayer_regularization_losses
Hnon_trainable_variables
regularization_losses
	variables
 trainable_variables
[Y
VARIABLE_VALUEdense_82/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_82/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

"0
#1

"0
#1
?
Ilayer_metrics

Jlayers
Kmetrics
Llayer_regularization_losses
Mnon_trainable_variables
%regularization_losses
&	variables
'trainable_variables
[Y
VARIABLE_VALUEdense_83/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_83/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

)0
*1

)0
*1
?
Nlayer_metrics

Olayers
Pmetrics
Qlayer_regularization_losses
Rnon_trainable_variables
,regularization_losses
-	variables
.trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
 
 

S0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ttotal
	Ucount
V	variables
W	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

V	variables
~|
VARIABLE_VALUEAdam/dense_79/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_79/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_80/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_80/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_81/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_81/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_82/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_82/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_83/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_83/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_79/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_79/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_80/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_80/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_81/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_81/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_82/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_82/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_83/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_83/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_79_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_79_inputdense_79/kerneldense_79/biasdense_80/kerneldense_80/biasdense_81/kerneldense_81/biasdense_82/kerneldense_82/biasdense_83/kerneldense_83/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1900908
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_79/kernel/Read/ReadVariableOp!dense_79/bias/Read/ReadVariableOp#dense_80/kernel/Read/ReadVariableOp!dense_80/bias/Read/ReadVariableOp#dense_81/kernel/Read/ReadVariableOp!dense_81/bias/Read/ReadVariableOp#dense_82/kernel/Read/ReadVariableOp!dense_82/bias/Read/ReadVariableOp#dense_83/kernel/Read/ReadVariableOp!dense_83/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_79/kernel/m/Read/ReadVariableOp(Adam/dense_79/bias/m/Read/ReadVariableOp*Adam/dense_80/kernel/m/Read/ReadVariableOp(Adam/dense_80/bias/m/Read/ReadVariableOp*Adam/dense_81/kernel/m/Read/ReadVariableOp(Adam/dense_81/bias/m/Read/ReadVariableOp*Adam/dense_82/kernel/m/Read/ReadVariableOp(Adam/dense_82/bias/m/Read/ReadVariableOp*Adam/dense_83/kernel/m/Read/ReadVariableOp(Adam/dense_83/bias/m/Read/ReadVariableOp*Adam/dense_79/kernel/v/Read/ReadVariableOp(Adam/dense_79/bias/v/Read/ReadVariableOp*Adam/dense_80/kernel/v/Read/ReadVariableOp(Adam/dense_80/bias/v/Read/ReadVariableOp*Adam/dense_81/kernel/v/Read/ReadVariableOp(Adam/dense_81/bias/v/Read/ReadVariableOp*Adam/dense_82/kernel/v/Read/ReadVariableOp(Adam/dense_82/bias/v/Read/ReadVariableOp*Adam/dense_83/kernel/v/Read/ReadVariableOp(Adam/dense_83/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_1901267
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_79/kerneldense_79/biasdense_80/kerneldense_80/biasdense_81/kerneldense_81/biasdense_82/kerneldense_82/biasdense_83/kerneldense_83/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_79/kernel/mAdam/dense_79/bias/mAdam/dense_80/kernel/mAdam/dense_80/bias/mAdam/dense_81/kernel/mAdam/dense_81/bias/mAdam/dense_82/kernel/mAdam/dense_82/bias/mAdam/dense_83/kernel/mAdam/dense_83/bias/mAdam/dense_79/kernel/vAdam/dense_79/bias/vAdam/dense_80/kernel/vAdam/dense_80/bias/vAdam/dense_81/kernel/vAdam/dense_81/bias/vAdam/dense_82/kernel/vAdam/dense_82/bias/vAdam/dense_83/kernel/vAdam/dense_83/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_1901388??
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900875
dense_79_input"
dense_79_1900849:@
dense_79_1900851:@"
dense_80_1900854:@ 
dense_80_1900856: "
dense_81_1900859: 
dense_81_1900861:"
dense_82_1900864:
dense_82_1900866:"
dense_83_1900869:
dense_83_1900871:
identity?? dense_79/StatefulPartitionedCall? dense_80/StatefulPartitionedCall? dense_81/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
 dense_79/StatefulPartitionedCallStatefulPartitionedCalldense_79_inputdense_79_1900849dense_79_1900851*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_19005662"
 dense_79/StatefulPartitionedCall?
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)dense_79/StatefulPartitionedCall:output:0dense_80_1900854dense_80_1900856*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_19005832"
 dense_80/StatefulPartitionedCall?
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1900859dense_81_1900861*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_81_layer_call_and_return_conditional_losses_19006002"
 dense_81/StatefulPartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0dense_82_1900864dense_82_1900866*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_19006172"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1900869dense_83_1900871*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_19006332"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_79/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_79_input
?
?
*__inference_dense_83_layer_call_fn_1901133

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_19006332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_80_layer_call_and_return_conditional_losses_1901065

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900640

inputs"
dense_79_1900567:@
dense_79_1900569:@"
dense_80_1900584:@ 
dense_80_1900586: "
dense_81_1900601: 
dense_81_1900603:"
dense_82_1900618:
dense_82_1900620:"
dense_83_1900634:
dense_83_1900636:
identity?? dense_79/StatefulPartitionedCall? dense_80/StatefulPartitionedCall? dense_81/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
 dense_79/StatefulPartitionedCallStatefulPartitionedCallinputsdense_79_1900567dense_79_1900569*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_19005662"
 dense_79/StatefulPartitionedCall?
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)dense_79/StatefulPartitionedCall:output:0dense_80_1900584dense_80_1900586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_19005832"
 dense_80/StatefulPartitionedCall?
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1900601dense_81_1900603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_81_layer_call_and_return_conditional_losses_19006002"
 dense_81/StatefulPartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0dense_82_1900618dense_82_1900620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_19006172"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1900634dense_83_1900636*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_19006332"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_79/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_82_layer_call_and_return_conditional_losses_1900617

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_81_layer_call_and_return_conditional_losses_1900600

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_dense_79_layer_call_and_return_conditional_losses_1901045

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_80_layer_call_fn_1901074

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_19005832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
/__inference_sequential_19_layer_call_fn_1900958

inputs
unknown:@
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_19007692
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_83_layer_call_and_return_conditional_losses_1901124

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?O
?
 __inference__traced_save_1901267
file_prefix.
*savev2_dense_79_kernel_read_readvariableop,
(savev2_dense_79_bias_read_readvariableop.
*savev2_dense_80_kernel_read_readvariableop,
(savev2_dense_80_bias_read_readvariableop.
*savev2_dense_81_kernel_read_readvariableop,
(savev2_dense_81_bias_read_readvariableop.
*savev2_dense_82_kernel_read_readvariableop,
(savev2_dense_82_bias_read_readvariableop.
*savev2_dense_83_kernel_read_readvariableop,
(savev2_dense_83_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_79_kernel_m_read_readvariableop3
/savev2_adam_dense_79_bias_m_read_readvariableop5
1savev2_adam_dense_80_kernel_m_read_readvariableop3
/savev2_adam_dense_80_bias_m_read_readvariableop5
1savev2_adam_dense_81_kernel_m_read_readvariableop3
/savev2_adam_dense_81_bias_m_read_readvariableop5
1savev2_adam_dense_82_kernel_m_read_readvariableop3
/savev2_adam_dense_82_bias_m_read_readvariableop5
1savev2_adam_dense_83_kernel_m_read_readvariableop3
/savev2_adam_dense_83_bias_m_read_readvariableop5
1savev2_adam_dense_79_kernel_v_read_readvariableop3
/savev2_adam_dense_79_bias_v_read_readvariableop5
1savev2_adam_dense_80_kernel_v_read_readvariableop3
/savev2_adam_dense_80_bias_v_read_readvariableop5
1savev2_adam_dense_81_kernel_v_read_readvariableop3
/savev2_adam_dense_81_bias_v_read_readvariableop5
1savev2_adam_dense_82_kernel_v_read_readvariableop3
/savev2_adam_dense_82_bias_v_read_readvariableop5
1savev2_adam_dense_83_kernel_v_read_readvariableop3
/savev2_adam_dense_83_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_79_kernel_read_readvariableop(savev2_dense_79_bias_read_readvariableop*savev2_dense_80_kernel_read_readvariableop(savev2_dense_80_bias_read_readvariableop*savev2_dense_81_kernel_read_readvariableop(savev2_dense_81_bias_read_readvariableop*savev2_dense_82_kernel_read_readvariableop(savev2_dense_82_bias_read_readvariableop*savev2_dense_83_kernel_read_readvariableop(savev2_dense_83_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_79_kernel_m_read_readvariableop/savev2_adam_dense_79_bias_m_read_readvariableop1savev2_adam_dense_80_kernel_m_read_readvariableop/savev2_adam_dense_80_bias_m_read_readvariableop1savev2_adam_dense_81_kernel_m_read_readvariableop/savev2_adam_dense_81_bias_m_read_readvariableop1savev2_adam_dense_82_kernel_m_read_readvariableop/savev2_adam_dense_82_bias_m_read_readvariableop1savev2_adam_dense_83_kernel_m_read_readvariableop/savev2_adam_dense_83_bias_m_read_readvariableop1savev2_adam_dense_79_kernel_v_read_readvariableop/savev2_adam_dense_79_bias_v_read_readvariableop1savev2_adam_dense_80_kernel_v_read_readvariableop/savev2_adam_dense_80_bias_v_read_readvariableop1savev2_adam_dense_81_kernel_v_read_readvariableop/savev2_adam_dense_81_bias_v_read_readvariableop1savev2_adam_dense_82_kernel_v_read_readvariableop/savev2_adam_dense_82_bias_v_read_readvariableop1savev2_adam_dense_83_kernel_v_read_readvariableop/savev2_adam_dense_83_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@ : : :::::: : : : : : : :@:@:@ : : ::::::@:@:@ : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::&

_output_shapes
: 
?0
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1901034

inputs9
'dense_79_matmul_readvariableop_resource:@6
(dense_79_biasadd_readvariableop_resource:@9
'dense_80_matmul_readvariableop_resource:@ 6
(dense_80_biasadd_readvariableop_resource: 9
'dense_81_matmul_readvariableop_resource: 6
(dense_81_biasadd_readvariableop_resource:9
'dense_82_matmul_readvariableop_resource:6
(dense_82_biasadd_readvariableop_resource:9
'dense_83_matmul_readvariableop_resource:6
(dense_83_biasadd_readvariableop_resource:
identity??dense_79/BiasAdd/ReadVariableOp?dense_79/MatMul/ReadVariableOp?dense_80/BiasAdd/ReadVariableOp?dense_80/MatMul/ReadVariableOp?dense_81/BiasAdd/ReadVariableOp?dense_81/MatMul/ReadVariableOp?dense_82/BiasAdd/ReadVariableOp?dense_82/MatMul/ReadVariableOp?dense_83/BiasAdd/ReadVariableOp?dense_83/MatMul/ReadVariableOp?
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_79/MatMul/ReadVariableOp?
dense_79/MatMulMatMulinputs&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_79/MatMul?
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_79/BiasAdd/ReadVariableOp?
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_79/BiasAdds
dense_79/ReluReludense_79/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_79/Relu?
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_80/MatMul/ReadVariableOp?
dense_80/MatMulMatMuldense_79/Relu:activations:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_80/MatMul?
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_80/BiasAdd/ReadVariableOp?
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_80/BiasAdds
dense_80/ReluReludense_80/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_80/Relu?
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_81/MatMul/ReadVariableOp?
dense_81/MatMulMatMuldense_80/Relu:activations:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_81/MatMul?
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_81/BiasAdd/ReadVariableOp?
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_81/BiasAdds
dense_81/ReluReludense_81/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_81/Relu?
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_82/MatMul/ReadVariableOp?
dense_82/MatMulMatMuldense_81/Relu:activations:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_82/MatMul?
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_82/BiasAdd/ReadVariableOp?
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_82/BiasAdds
dense_82/ReluReludense_82/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_82/Relu?
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_83/MatMul/ReadVariableOp?
dense_83/MatMulMatMuldense_82/Relu:activations:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/MatMul?
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_83/BiasAdd/ReadVariableOp?
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/BiasAddt
IdentityIdentitydense_83/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_82_layer_call_and_return_conditional_losses_1901105

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1901388
file_prefix2
 assignvariableop_dense_79_kernel:@.
 assignvariableop_1_dense_79_bias:@4
"assignvariableop_2_dense_80_kernel:@ .
 assignvariableop_3_dense_80_bias: 4
"assignvariableop_4_dense_81_kernel: .
 assignvariableop_5_dense_81_bias:4
"assignvariableop_6_dense_82_kernel:.
 assignvariableop_7_dense_82_bias:4
"assignvariableop_8_dense_83_kernel:.
 assignvariableop_9_dense_83_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: <
*assignvariableop_17_adam_dense_79_kernel_m:@6
(assignvariableop_18_adam_dense_79_bias_m:@<
*assignvariableop_19_adam_dense_80_kernel_m:@ 6
(assignvariableop_20_adam_dense_80_bias_m: <
*assignvariableop_21_adam_dense_81_kernel_m: 6
(assignvariableop_22_adam_dense_81_bias_m:<
*assignvariableop_23_adam_dense_82_kernel_m:6
(assignvariableop_24_adam_dense_82_bias_m:<
*assignvariableop_25_adam_dense_83_kernel_m:6
(assignvariableop_26_adam_dense_83_bias_m:<
*assignvariableop_27_adam_dense_79_kernel_v:@6
(assignvariableop_28_adam_dense_79_bias_v:@<
*assignvariableop_29_adam_dense_80_kernel_v:@ 6
(assignvariableop_30_adam_dense_80_bias_v: <
*assignvariableop_31_adam_dense_81_kernel_v: 6
(assignvariableop_32_adam_dense_81_bias_v:<
*assignvariableop_33_adam_dense_82_kernel_v:6
(assignvariableop_34_adam_dense_82_bias_v:<
*assignvariableop_35_adam_dense_83_kernel_v:6
(assignvariableop_36_adam_dense_83_bias_v:
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_79_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_79_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_80_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_80_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_81_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_81_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_82_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_82_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_83_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_83_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_79_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_79_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_80_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_80_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_81_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_81_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_82_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_82_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_83_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_83_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_79_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_79_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_80_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_80_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_81_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_81_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_82_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_82_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_83_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_83_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37f
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_38?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?0
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900996

inputs9
'dense_79_matmul_readvariableop_resource:@6
(dense_79_biasadd_readvariableop_resource:@9
'dense_80_matmul_readvariableop_resource:@ 6
(dense_80_biasadd_readvariableop_resource: 9
'dense_81_matmul_readvariableop_resource: 6
(dense_81_biasadd_readvariableop_resource:9
'dense_82_matmul_readvariableop_resource:6
(dense_82_biasadd_readvariableop_resource:9
'dense_83_matmul_readvariableop_resource:6
(dense_83_biasadd_readvariableop_resource:
identity??dense_79/BiasAdd/ReadVariableOp?dense_79/MatMul/ReadVariableOp?dense_80/BiasAdd/ReadVariableOp?dense_80/MatMul/ReadVariableOp?dense_81/BiasAdd/ReadVariableOp?dense_81/MatMul/ReadVariableOp?dense_82/BiasAdd/ReadVariableOp?dense_82/MatMul/ReadVariableOp?dense_83/BiasAdd/ReadVariableOp?dense_83/MatMul/ReadVariableOp?
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_79/MatMul/ReadVariableOp?
dense_79/MatMulMatMulinputs&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_79/MatMul?
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_79/BiasAdd/ReadVariableOp?
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_79/BiasAdds
dense_79/ReluReludense_79/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_79/Relu?
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_80/MatMul/ReadVariableOp?
dense_80/MatMulMatMuldense_79/Relu:activations:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_80/MatMul?
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_80/BiasAdd/ReadVariableOp?
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_80/BiasAdds
dense_80/ReluReludense_80/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_80/Relu?
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_81/MatMul/ReadVariableOp?
dense_81/MatMulMatMuldense_80/Relu:activations:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_81/MatMul?
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_81/BiasAdd/ReadVariableOp?
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_81/BiasAdds
dense_81/ReluReludense_81/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_81/Relu?
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_82/MatMul/ReadVariableOp?
dense_82/MatMulMatMuldense_81/Relu:activations:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_82/MatMul?
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_82/BiasAdd/ReadVariableOp?
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_82/BiasAdds
dense_82/ReluReludense_82/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_82/Relu?
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_83/MatMul/ReadVariableOp?
dense_83/MatMulMatMuldense_82/Relu:activations:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/MatMul?
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_83/BiasAdd/ReadVariableOp?
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/BiasAddt
IdentityIdentitydense_83/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_81_layer_call_and_return_conditional_losses_1901085

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900769

inputs"
dense_79_1900743:@
dense_79_1900745:@"
dense_80_1900748:@ 
dense_80_1900750: "
dense_81_1900753: 
dense_81_1900755:"
dense_82_1900758:
dense_82_1900760:"
dense_83_1900763:
dense_83_1900765:
identity?? dense_79/StatefulPartitionedCall? dense_80/StatefulPartitionedCall? dense_81/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
 dense_79/StatefulPartitionedCallStatefulPartitionedCallinputsdense_79_1900743dense_79_1900745*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_19005662"
 dense_79/StatefulPartitionedCall?
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)dense_79/StatefulPartitionedCall:output:0dense_80_1900748dense_80_1900750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_19005832"
 dense_80/StatefulPartitionedCall?
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1900753dense_81_1900755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_81_layer_call_and_return_conditional_losses_19006002"
 dense_81/StatefulPartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0dense_82_1900758dense_82_1900760*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_19006172"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1900763dense_83_1900765*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_19006332"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_79/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_82_layer_call_fn_1901114

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_19006172
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_79_layer_call_and_return_conditional_losses_1900566

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_80_layer_call_and_return_conditional_losses_1900583

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_dense_79_layer_call_fn_1901054

inputs
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_19005662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
"__inference__wrapped_model_1900548
dense_79_inputG
5sequential_19_dense_79_matmul_readvariableop_resource:@D
6sequential_19_dense_79_biasadd_readvariableop_resource:@G
5sequential_19_dense_80_matmul_readvariableop_resource:@ D
6sequential_19_dense_80_biasadd_readvariableop_resource: G
5sequential_19_dense_81_matmul_readvariableop_resource: D
6sequential_19_dense_81_biasadd_readvariableop_resource:G
5sequential_19_dense_82_matmul_readvariableop_resource:D
6sequential_19_dense_82_biasadd_readvariableop_resource:G
5sequential_19_dense_83_matmul_readvariableop_resource:D
6sequential_19_dense_83_biasadd_readvariableop_resource:
identity??-sequential_19/dense_79/BiasAdd/ReadVariableOp?,sequential_19/dense_79/MatMul/ReadVariableOp?-sequential_19/dense_80/BiasAdd/ReadVariableOp?,sequential_19/dense_80/MatMul/ReadVariableOp?-sequential_19/dense_81/BiasAdd/ReadVariableOp?,sequential_19/dense_81/MatMul/ReadVariableOp?-sequential_19/dense_82/BiasAdd/ReadVariableOp?,sequential_19/dense_82/MatMul/ReadVariableOp?-sequential_19/dense_83/BiasAdd/ReadVariableOp?,sequential_19/dense_83/MatMul/ReadVariableOp?
,sequential_19/dense_79/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_79_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_19/dense_79/MatMul/ReadVariableOp?
sequential_19/dense_79/MatMulMatMuldense_79_input4sequential_19/dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_19/dense_79/MatMul?
-sequential_19/dense_79/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_79_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_19/dense_79/BiasAdd/ReadVariableOp?
sequential_19/dense_79/BiasAddBiasAdd'sequential_19/dense_79/MatMul:product:05sequential_19/dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_19/dense_79/BiasAdd?
sequential_19/dense_79/ReluRelu'sequential_19/dense_79/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_19/dense_79/Relu?
,sequential_19/dense_80/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_80_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02.
,sequential_19/dense_80/MatMul/ReadVariableOp?
sequential_19/dense_80/MatMulMatMul)sequential_19/dense_79/Relu:activations:04sequential_19/dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_19/dense_80/MatMul?
-sequential_19/dense_80/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_19/dense_80/BiasAdd/ReadVariableOp?
sequential_19/dense_80/BiasAddBiasAdd'sequential_19/dense_80/MatMul:product:05sequential_19/dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_19/dense_80/BiasAdd?
sequential_19/dense_80/ReluRelu'sequential_19/dense_80/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_19/dense_80/Relu?
,sequential_19/dense_81/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_81_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_19/dense_81/MatMul/ReadVariableOp?
sequential_19/dense_81/MatMulMatMul)sequential_19/dense_80/Relu:activations:04sequential_19/dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_81/MatMul?
-sequential_19/dense_81/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_81/BiasAdd/ReadVariableOp?
sequential_19/dense_81/BiasAddBiasAdd'sequential_19/dense_81/MatMul:product:05sequential_19/dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_81/BiasAdd?
sequential_19/dense_81/ReluRelu'sequential_19/dense_81/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_81/Relu?
,sequential_19/dense_82/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_82_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_19/dense_82/MatMul/ReadVariableOp?
sequential_19/dense_82/MatMulMatMul)sequential_19/dense_81/Relu:activations:04sequential_19/dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_82/MatMul?
-sequential_19/dense_82/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_82_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_82/BiasAdd/ReadVariableOp?
sequential_19/dense_82/BiasAddBiasAdd'sequential_19/dense_82/MatMul:product:05sequential_19/dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_82/BiasAdd?
sequential_19/dense_82/ReluRelu'sequential_19/dense_82/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_82/Relu?
,sequential_19/dense_83/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_83_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_19/dense_83/MatMul/ReadVariableOp?
sequential_19/dense_83/MatMulMatMul)sequential_19/dense_82/Relu:activations:04sequential_19/dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_83/MatMul?
-sequential_19/dense_83/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_83/BiasAdd/ReadVariableOp?
sequential_19/dense_83/BiasAddBiasAdd'sequential_19/dense_83/MatMul:product:05sequential_19/dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_83/BiasAdd?
IdentityIdentity'sequential_19/dense_83/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp.^sequential_19/dense_79/BiasAdd/ReadVariableOp-^sequential_19/dense_79/MatMul/ReadVariableOp.^sequential_19/dense_80/BiasAdd/ReadVariableOp-^sequential_19/dense_80/MatMul/ReadVariableOp.^sequential_19/dense_81/BiasAdd/ReadVariableOp-^sequential_19/dense_81/MatMul/ReadVariableOp.^sequential_19/dense_82/BiasAdd/ReadVariableOp-^sequential_19/dense_82/MatMul/ReadVariableOp.^sequential_19/dense_83/BiasAdd/ReadVariableOp-^sequential_19/dense_83/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2^
-sequential_19/dense_79/BiasAdd/ReadVariableOp-sequential_19/dense_79/BiasAdd/ReadVariableOp2\
,sequential_19/dense_79/MatMul/ReadVariableOp,sequential_19/dense_79/MatMul/ReadVariableOp2^
-sequential_19/dense_80/BiasAdd/ReadVariableOp-sequential_19/dense_80/BiasAdd/ReadVariableOp2\
,sequential_19/dense_80/MatMul/ReadVariableOp,sequential_19/dense_80/MatMul/ReadVariableOp2^
-sequential_19/dense_81/BiasAdd/ReadVariableOp-sequential_19/dense_81/BiasAdd/ReadVariableOp2\
,sequential_19/dense_81/MatMul/ReadVariableOp,sequential_19/dense_81/MatMul/ReadVariableOp2^
-sequential_19/dense_82/BiasAdd/ReadVariableOp-sequential_19/dense_82/BiasAdd/ReadVariableOp2\
,sequential_19/dense_82/MatMul/ReadVariableOp,sequential_19/dense_82/MatMul/ReadVariableOp2^
-sequential_19/dense_83/BiasAdd/ReadVariableOp-sequential_19/dense_83/BiasAdd/ReadVariableOp2\
,sequential_19/dense_83/MatMul/ReadVariableOp,sequential_19/dense_83/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_79_input
?

?
/__inference_sequential_19_layer_call_fn_1900933

inputs
unknown:@
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_19006402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900846
dense_79_input"
dense_79_1900820:@
dense_79_1900822:@"
dense_80_1900825:@ 
dense_80_1900827: "
dense_81_1900830: 
dense_81_1900832:"
dense_82_1900835:
dense_82_1900837:"
dense_83_1900840:
dense_83_1900842:
identity?? dense_79/StatefulPartitionedCall? dense_80/StatefulPartitionedCall? dense_81/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
 dense_79/StatefulPartitionedCallStatefulPartitionedCalldense_79_inputdense_79_1900820dense_79_1900822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_19005662"
 dense_79/StatefulPartitionedCall?
 dense_80/StatefulPartitionedCallStatefulPartitionedCall)dense_79/StatefulPartitionedCall:output:0dense_80_1900825dense_80_1900827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_19005832"
 dense_80/StatefulPartitionedCall?
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1900830dense_81_1900832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_81_layer_call_and_return_conditional_losses_19006002"
 dense_81/StatefulPartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0dense_82_1900835dense_82_1900837*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_19006172"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1900840dense_83_1900842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_19006332"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_79/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_79_input
?

?
%__inference_signature_wrapper_1900908
dense_79_input
unknown:@
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_19005482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_79_input
?
?
*__inference_dense_81_layer_call_fn_1901094

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_81_layer_call_and_return_conditional_losses_19006002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
E__inference_dense_83_layer_call_and_return_conditional_losses_1900633

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_19_layer_call_fn_1900817
dense_79_input
unknown:@
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_19007692
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_79_input
?

?
/__inference_sequential_19_layer_call_fn_1900663
dense_79_input
unknown:@
	unknown_0:@
	unknown_1:@ 
	unknown_2: 
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_19006402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_79_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
dense_79_input7
 serving_default_dense_79_input:0?????????<
dense_830
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?n
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer

signatures
#_self_saveable_object_factories
	regularization_losses

	variables
trainable_variables
	keras_api
l__call__
m_default_save_signature
*n&call_and_return_all_conditional_losses"
_tf_keras_sequential
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
*o&call_and_return_all_conditional_losses
p__call__"
_tf_keras_layer
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
*q&call_and_return_all_conditional_losses
r__call__"
_tf_keras_layer
?

kernel
bias
#_self_saveable_object_factories
regularization_losses
	variables
 trainable_variables
!	keras_api
*s&call_and_return_all_conditional_losses
t__call__"
_tf_keras_layer
?

"kernel
#bias
#$_self_saveable_object_factories
%regularization_losses
&	variables
'trainable_variables
(	keras_api
*u&call_and_return_all_conditional_losses
v__call__"
_tf_keras_layer
?

)kernel
*bias
#+_self_saveable_object_factories
,regularization_losses
-	variables
.trainable_variables
/	keras_api
*w&call_and_return_all_conditional_losses
x__call__"
_tf_keras_layer
?
0iter

1beta_1

2beta_2
	3decay
4learning_ratemXmYmZm[m\m]"m^#m_)m`*mavbvcvdvevfvg"vh#vi)vj*vk"
	optimizer
,
yserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
4
5
"6
#7
)8
*9"
trackable_list_wrapper
f
0
1
2
3
4
5
"6
#7
)8
*9"
trackable_list_wrapper
?
5layer_metrics

6layers
7non_trainable_variables
8layer_regularization_losses
9metrics
	regularization_losses

	variables
trainable_variables
l__call__
m_default_save_signature
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_79/kernel
:@2dense_79/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
:layer_metrics

;layers
<metrics
=layer_regularization_losses
>non_trainable_variables
regularization_losses
	variables
trainable_variables
p__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_80/kernel
: 2dense_80/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?layer_metrics

@layers
Ametrics
Blayer_regularization_losses
Cnon_trainable_variables
regularization_losses
	variables
trainable_variables
r__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_81/kernel
:2dense_81/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Dlayer_metrics

Elayers
Fmetrics
Glayer_regularization_losses
Hnon_trainable_variables
regularization_losses
	variables
 trainable_variables
t__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
!:2dense_82/kernel
:2dense_82/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
Ilayer_metrics

Jlayers
Kmetrics
Llayer_regularization_losses
Mnon_trainable_variables
%regularization_losses
&	variables
'trainable_variables
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
!:2dense_83/kernel
:2dense_83/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
Nlayer_metrics

Olayers
Pmetrics
Qlayer_regularization_losses
Rnon_trainable_variables
,regularization_losses
-	variables
.trainable_variables
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
S0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	Ttotal
	Ucount
V	variables
W	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
T0
U1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
&:$@2Adam/dense_79/kernel/m
 :@2Adam/dense_79/bias/m
&:$@ 2Adam/dense_80/kernel/m
 : 2Adam/dense_80/bias/m
&:$ 2Adam/dense_81/kernel/m
 :2Adam/dense_81/bias/m
&:$2Adam/dense_82/kernel/m
 :2Adam/dense_82/bias/m
&:$2Adam/dense_83/kernel/m
 :2Adam/dense_83/bias/m
&:$@2Adam/dense_79/kernel/v
 :@2Adam/dense_79/bias/v
&:$@ 2Adam/dense_80/kernel/v
 : 2Adam/dense_80/bias/v
&:$ 2Adam/dense_81/kernel/v
 :2Adam/dense_81/bias/v
&:$2Adam/dense_82/kernel/v
 :2Adam/dense_82/bias/v
&:$2Adam/dense_83/kernel/v
 :2Adam/dense_83/bias/v
?2?
/__inference_sequential_19_layer_call_fn_1900663
/__inference_sequential_19_layer_call_fn_1900933
/__inference_sequential_19_layer_call_fn_1900958
/__inference_sequential_19_layer_call_fn_1900817?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_1900548dense_79_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900996
J__inference_sequential_19_layer_call_and_return_conditional_losses_1901034
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900846
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900875?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dense_79_layer_call_and_return_conditional_losses_1901045?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_79_layer_call_fn_1901054?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_80_layer_call_and_return_conditional_losses_1901065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_80_layer_call_fn_1901074?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_81_layer_call_and_return_conditional_losses_1901085?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_81_layer_call_fn_1901094?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_82_layer_call_and_return_conditional_losses_1901105?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_82_layer_call_fn_1901114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_83_layer_call_and_return_conditional_losses_1901124?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_83_layer_call_fn_1901133?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1900908dense_79_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1900548z
"#)*7?4
-?*
(?%
dense_79_input?????????
? "3?0
.
dense_83"?
dense_83??????????
E__inference_dense_79_layer_call_and_return_conditional_losses_1901045\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????@
? }
*__inference_dense_79_layer_call_fn_1901054O/?,
%?"
 ?
inputs?????????
? "??????????@?
E__inference_dense_80_layer_call_and_return_conditional_losses_1901065\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? }
*__inference_dense_80_layer_call_fn_1901074O/?,
%?"
 ?
inputs?????????@
? "?????????? ?
E__inference_dense_81_layer_call_and_return_conditional_losses_1901085\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? }
*__inference_dense_81_layer_call_fn_1901094O/?,
%?"
 ?
inputs????????? 
? "???????????
E__inference_dense_82_layer_call_and_return_conditional_losses_1901105\"#/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_82_layer_call_fn_1901114O"#/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_83_layer_call_and_return_conditional_losses_1901124\)*/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_83_layer_call_fn_1901133O)*/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900846t
"#)*??<
5?2
(?%
dense_79_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900875t
"#)*??<
5?2
(?%
dense_79_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1900996l
"#)*7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_19_layer_call_and_return_conditional_losses_1901034l
"#)*7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_19_layer_call_fn_1900663g
"#)*??<
5?2
(?%
dense_79_input?????????
p 

 
? "???????????
/__inference_sequential_19_layer_call_fn_1900817g
"#)*??<
5?2
(?%
dense_79_input?????????
p

 
? "???????????
/__inference_sequential_19_layer_call_fn_1900933_
"#)*7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
/__inference_sequential_19_layer_call_fn_1900958_
"#)*7?4
-?*
 ?
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1900908?
"#)*I?F
? 
??<
:
dense_79_input(?%
dense_79_input?????????"3?0
.
dense_83"?
dense_83?????????