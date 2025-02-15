��

��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Ņ
�
conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_32/kernel
}
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_32/bias
m
"conv2d_32/bias/Read/ReadVariableOpReadVariableOpconv2d_32/bias*
_output_shapes
:@*
dtype0
�
conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_33/kernel
}
$conv2d_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_33/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_33/bias
m
"conv2d_33/bias/Read/ReadVariableOpReadVariableOpconv2d_33/bias*
_output_shapes
:@*
dtype0
|
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@* 
shared_namedense_32/kernel
u
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel* 
_output_shapes
:
��@*
dtype0
r
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_32/bias
k
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes
:@*
dtype0
z
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_33/kernel
s
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel*
_output_shapes

:@*
dtype0
r
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_33/bias
k
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes
:*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/conv2d_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_32/kernel/m
�
+Adam/conv2d_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/m*&
_output_shapes
:@*
dtype0
�
Adam/conv2d_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_32/bias/m
{
)Adam/conv2d_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_33/kernel/m
�
+Adam/conv2d_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_33/bias/m
{
)Adam/conv2d_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*'
shared_nameAdam/dense_32/kernel/m
�
*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m* 
_output_shapes
:
��@*
dtype0
�
Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_32/bias/m
y
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_33/kernel/m
�
*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/m
y
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_32/kernel/v
�
+Adam/conv2d_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/v*&
_output_shapes
:@*
dtype0
�
Adam/conv2d_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_32/bias/v
{
)Adam/conv2d_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_33/kernel/v
�
+Adam/conv2d_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_33/bias/v
{
)Adam/conv2d_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*'
shared_nameAdam/dense_32/kernel/v
�
*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v* 
_output_shapes
:
��@*
dtype0
�
Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_32/bias/v
y
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_33/kernel/v
�
*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/v
y
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�@
value�@B�@ B�@
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
 	keras_api
h

!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
R
'trainable_variables
(regularization_losses
)	variables
*	keras_api
R
+trainable_variables
,regularization_losses
-	variables
.	keras_api
R
/trainable_variables
0regularization_losses
1	variables
2	keras_api
h

3kernel
4bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
R
9trainable_variables
:regularization_losses
;	variables
<	keras_api
R
=trainable_variables
>regularization_losses
?	variables
@	keras_api
h

Akernel
Bbias
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
R
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
�
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratem�m�!m�"m�3m�4m�Am�Bm�v�v�!v�"v�3v�4v�Av�Bv�
8
0
1
!2
"3
34
45
A6
B7
 
8
0
1
!2
"3
34
45
A6
B7
�
trainable_variables

Players
Qlayer_metrics
Rnon_trainable_variables
regularization_losses
Smetrics
	variables
Tlayer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_32/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_32/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables

Ulayers
Vlayer_metrics
Wnon_trainable_variables
regularization_losses
Xmetrics
	variables
Ylayer_regularization_losses
 
 
 
�
trainable_variables

Zlayers
[layer_metrics
\non_trainable_variables
regularization_losses
]metrics
	variables
^layer_regularization_losses
 
 
 
�
trainable_variables

_layers
`layer_metrics
anon_trainable_variables
regularization_losses
bmetrics
	variables
clayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_33/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_33/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
�
#trainable_variables

dlayers
elayer_metrics
fnon_trainable_variables
$regularization_losses
gmetrics
%	variables
hlayer_regularization_losses
 
 
 
�
'trainable_variables

ilayers
jlayer_metrics
knon_trainable_variables
(regularization_losses
lmetrics
)	variables
mlayer_regularization_losses
 
 
 
�
+trainable_variables

nlayers
olayer_metrics
pnon_trainable_variables
,regularization_losses
qmetrics
-	variables
rlayer_regularization_losses
 
 
 
�
/trainable_variables

slayers
tlayer_metrics
unon_trainable_variables
0regularization_losses
vmetrics
1	variables
wlayer_regularization_losses
[Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_32/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 

30
41
�
5trainable_variables

xlayers
ylayer_metrics
znon_trainable_variables
6regularization_losses
{metrics
7	variables
|layer_regularization_losses
 
 
 
�
9trainable_variables

}layers
~layer_metrics
non_trainable_variables
:regularization_losses
�metrics
;	variables
 �layer_regularization_losses
 
 
 
�
=trainable_variables
�layers
�layer_metrics
�non_trainable_variables
>regularization_losses
�metrics
?	variables
 �layer_regularization_losses
[Y
VARIABLE_VALUEdense_33/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_33/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
�
Ctrainable_variables
�layers
�layer_metrics
�non_trainable_variables
Dregularization_losses
�metrics
E	variables
 �layer_regularization_losses
 
 
 
�
Gtrainable_variables
�layers
�layer_metrics
�non_trainable_variables
Hregularization_losses
�metrics
I	variables
 �layer_regularization_losses
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
V
0
1
2
3
4
5
6
7
	8

9
10
11
 
 

�0
�1
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
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
}
VARIABLE_VALUEAdam/conv2d_32/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_32/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_33/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_33/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_32/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_33/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_33/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_32/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_32/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_33/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_33/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_32/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_33/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_33/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_conv2d_32_inputPlaceholder*/
_output_shapes
:���������FF*
dtype0*$
shape:���������FF
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_32_inputconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_115473
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_32/kernel/Read/ReadVariableOp"conv2d_32/bias/Read/ReadVariableOp$conv2d_33/kernel/Read/ReadVariableOp"conv2d_33/bias/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_32/kernel/m/Read/ReadVariableOp)Adam/conv2d_32/bias/m/Read/ReadVariableOp+Adam/conv2d_33/kernel/m/Read/ReadVariableOp)Adam/conv2d_33/bias/m/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOp*Adam/dense_33/kernel/m/Read/ReadVariableOp(Adam/dense_33/bias/m/Read/ReadVariableOp+Adam/conv2d_32/kernel/v/Read/ReadVariableOp)Adam/conv2d_32/bias/v/Read/ReadVariableOp+Adam/conv2d_33/kernel/v/Read/ReadVariableOp)Adam/conv2d_33/bias/v/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOp*Adam/dense_33/kernel/v/Read/ReadVariableOp(Adam/dense_33/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_115872
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_32/kernel/mAdam/conv2d_32/bias/mAdam/conv2d_33/kernel/mAdam/conv2d_33/bias/mAdam/dense_32/kernel/mAdam/dense_32/bias/mAdam/dense_33/kernel/mAdam/dense_33/bias/mAdam/conv2d_32/kernel/vAdam/conv2d_32/bias/vAdam/conv2d_33/kernel/vAdam/conv2d_33/bias/vAdam/dense_32/kernel/vAdam/dense_32/bias/vAdam/dense_33/kernel/vAdam/dense_33/bias/v*-
Tin&
$2"*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_115981��
�
e
I__inference_activation_66_layer_call_and_return_conditional_losses_115689

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:���������@2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�0
�
I__inference_sequential_29_layer_call_and_return_conditional_losses_115510

inputsB
(conv2d_32_conv2d_readvariableop_resource:@7
)conv2d_32_biasadd_readvariableop_resource:@B
(conv2d_33_conv2d_readvariableop_resource:@@7
)conv2d_33_biasadd_readvariableop_resource:@;
'dense_32_matmul_readvariableop_resource:
��@6
(dense_32_biasadd_readvariableop_resource:@9
'dense_33_matmul_readvariableop_resource:@6
(dense_33_biasadd_readvariableop_resource:
identity�� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp� conv2d_33/BiasAdd/ReadVariableOp�conv2d_33/Conv2D/ReadVariableOp�dense_32/BiasAdd/ReadVariableOp�dense_32/MatMul/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_32/Conv2D/ReadVariableOp�
conv2d_32/Conv2DConv2Dinputs'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@*
paddingVALID*
strides
2
conv2d_32/Conv2D�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_32/BiasAdd/ReadVariableOp�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@2
conv2d_32/BiasAdd�
activation_64/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������DD@2
activation_64/Relu�
max_pooling2d_30/MaxPoolMaxPool activation_64/Relu:activations:0*/
_output_shapes
:���������""@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_30/MaxPool�
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_33/Conv2D/ReadVariableOp�
conv2d_33/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingVALID*
strides
2
conv2d_33/Conv2D�
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_33/BiasAdd/ReadVariableOp�
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @2
conv2d_33/BiasAdd�
activation_65/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @2
activation_65/Relu�
max_pooling2d_31/MaxPoolMaxPool activation_65/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_31/MaxPoolu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� @  2
flatten_16/Const�
flatten_16/ReshapeReshape!max_pooling2d_31/MaxPool:output:0flatten_16/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten_16/Reshape�
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02 
dense_32/MatMul/ReadVariableOp�
dense_32/MatMulMatMulflatten_16/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_32/MatMul�
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_32/BiasAdd/ReadVariableOp�
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_32/BiasAdd}
activation_66/ReluReludense_32/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
activation_66/Relu�
dropout_2/IdentityIdentity activation_66/Relu:activations:0*
T0*'
_output_shapes
:���������@2
dropout_2/Identity�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_33/MatMul/ReadVariableOp�
dense_33/MatMulMatMuldropout_2/Identity:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_33/MatMul�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_33/BiasAdd/ReadVariableOp�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_33/BiasAdd�
activation_67/SoftmaxSoftmaxdense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
activation_67/Softmax�
IdentityIdentityactivation_67/Softmax:softmax:0!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_115711

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
.__inference_activation_66_layer_call_fn_115694

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_66_layer_call_and_return_conditional_losses_1151402
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_115228

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_conv2d_33_layer_call_and_return_conditional_losses_115635

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������""@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������""@
 
_user_specified_nameinputs
�
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_115147

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
.__inference_activation_64_layer_call_fn_115625

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_1150842
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������DD@:W S
/
_output_shapes
:���������DD@
 
_user_specified_nameinputs
�	
�
.__inference_sequential_29_layer_call_fn_115575

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
��@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_29_layer_call_and_return_conditional_losses_1151732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�
b
F__inference_flatten_16_layer_call_and_return_conditional_losses_115117

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_flatten_16_layer_call_fn_115665

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_1151172
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�H
�
__inference__traced_save_115872
file_prefix/
+savev2_conv2d_32_kernel_read_readvariableop-
)savev2_conv2d_32_bias_read_readvariableop/
+savev2_conv2d_33_kernel_read_readvariableop-
)savev2_conv2d_33_bias_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_32_kernel_m_read_readvariableop4
0savev2_adam_conv2d_32_bias_m_read_readvariableop6
2savev2_adam_conv2d_33_kernel_m_read_readvariableop4
0savev2_adam_conv2d_33_bias_m_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableop5
1savev2_adam_dense_33_kernel_m_read_readvariableop3
/savev2_adam_dense_33_bias_m_read_readvariableop6
2savev2_adam_conv2d_32_kernel_v_read_readvariableop4
0savev2_adam_conv2d_32_bias_v_read_readvariableop6
2savev2_adam_conv2d_33_kernel_v_read_readvariableop4
0savev2_adam_conv2d_33_bias_v_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableop5
1savev2_adam_dense_33_kernel_v_read_readvariableop3
/savev2_adam_dense_33_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop+savev2_conv2d_33_kernel_read_readvariableop)savev2_conv2d_33_bias_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_32_kernel_m_read_readvariableop0savev2_adam_conv2d_32_bias_m_read_readvariableop2savev2_adam_conv2d_33_kernel_m_read_readvariableop0savev2_adam_conv2d_33_bias_m_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop2savev2_adam_conv2d_32_kernel_v_read_readvariableop0savev2_adam_conv2d_32_bias_v_read_readvariableop2savev2_adam_conv2d_33_kernel_v_read_readvariableop0savev2_adam_conv2d_33_bias_v_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@@:@:
��@:@:@:: : : : : : : : : :@:@:@@:@:
��@:@:@::@:@:@@:@:
��@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
��@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :
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
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
��@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
��@: 

_output_shapes
:@:$  

_output_shapes

:@: !

_output_shapes
::"

_output_shapes
: 
�	
�
D__inference_dense_32_layer_call_and_return_conditional_losses_115675

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
e
I__inference_activation_64_layer_call_and_return_conditional_losses_115620

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������DD@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������DD@:W S
/
_output_shapes
:���������DD@
 
_user_specified_nameinputs
�	
�
.__inference_sequential_29_layer_call_fn_115596

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
��@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_29_layer_call_and_return_conditional_losses_1153402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�
c
*__inference_dropout_2_layer_call_fn_115721

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1152282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_activation_67_layer_call_and_return_conditional_losses_115745

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_115981
file_prefix;
!assignvariableop_conv2d_32_kernel:@/
!assignvariableop_1_conv2d_32_bias:@=
#assignvariableop_2_conv2d_33_kernel:@@/
!assignvariableop_3_conv2d_33_bias:@6
"assignvariableop_4_dense_32_kernel:
��@.
 assignvariableop_5_dense_32_bias:@4
"assignvariableop_6_dense_33_kernel:@.
 assignvariableop_7_dense_33_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: E
+assignvariableop_17_adam_conv2d_32_kernel_m:@7
)assignvariableop_18_adam_conv2d_32_bias_m:@E
+assignvariableop_19_adam_conv2d_33_kernel_m:@@7
)assignvariableop_20_adam_conv2d_33_bias_m:@>
*assignvariableop_21_adam_dense_32_kernel_m:
��@6
(assignvariableop_22_adam_dense_32_bias_m:@<
*assignvariableop_23_adam_dense_33_kernel_m:@6
(assignvariableop_24_adam_dense_33_bias_m:E
+assignvariableop_25_adam_conv2d_32_kernel_v:@7
)assignvariableop_26_adam_conv2d_32_bias_v:@E
+assignvariableop_27_adam_conv2d_33_kernel_v:@@7
)assignvariableop_28_adam_conv2d_33_bias_v:@>
*assignvariableop_29_adam_dense_32_kernel_v:
��@6
(assignvariableop_30_adam_dense_32_bias_v:@<
*assignvariableop_31_adam_dense_33_kernel_v:@6
(assignvariableop_32_adam_dense_33_bias_v:
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_32_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_32_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_33_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_33_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_32_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_32_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_33_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_33_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_conv2d_32_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_conv2d_32_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_33_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_33_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_32_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_32_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_33_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_33_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_32_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_32_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_33_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_33_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_32_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_32_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_33_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_33_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33�
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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
�:
�
I__inference_sequential_29_layer_call_and_return_conditional_losses_115554

inputsB
(conv2d_32_conv2d_readvariableop_resource:@7
)conv2d_32_biasadd_readvariableop_resource:@B
(conv2d_33_conv2d_readvariableop_resource:@@7
)conv2d_33_biasadd_readvariableop_resource:@;
'dense_32_matmul_readvariableop_resource:
��@6
(dense_32_biasadd_readvariableop_resource:@9
'dense_33_matmul_readvariableop_resource:@6
(dense_33_biasadd_readvariableop_resource:
identity�� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp� conv2d_33/BiasAdd/ReadVariableOp�conv2d_33/Conv2D/ReadVariableOp�dense_32/BiasAdd/ReadVariableOp�dense_32/MatMul/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_32/Conv2D/ReadVariableOp�
conv2d_32/Conv2DConv2Dinputs'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@*
paddingVALID*
strides
2
conv2d_32/Conv2D�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_32/BiasAdd/ReadVariableOp�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@2
conv2d_32/BiasAdd�
activation_64/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������DD@2
activation_64/Relu�
max_pooling2d_30/MaxPoolMaxPool activation_64/Relu:activations:0*/
_output_shapes
:���������""@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_30/MaxPool�
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_33/Conv2D/ReadVariableOp�
conv2d_33/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingVALID*
strides
2
conv2d_33/Conv2D�
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_33/BiasAdd/ReadVariableOp�
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @2
conv2d_33/BiasAdd�
activation_65/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @2
activation_65/Relu�
max_pooling2d_31/MaxPoolMaxPool activation_65/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_31/MaxPoolu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� @  2
flatten_16/Const�
flatten_16/ReshapeReshape!max_pooling2d_31/MaxPool:output:0flatten_16/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten_16/Reshape�
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02 
dense_32/MatMul/ReadVariableOp�
dense_32/MatMulMatMulflatten_16/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_32/MatMul�
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_32/BiasAdd/ReadVariableOp�
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_32/BiasAdd}
activation_66/ReluReludense_32/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
activation_66/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout_2/dropout/Const�
dropout_2/dropout/MulMul activation_66/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout_2/dropout/Mul�
dropout_2/dropout/ShapeShape activation_66/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform�
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2"
 dropout_2/dropout/GreaterEqual/y�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2 
dropout_2/dropout/GreaterEqual�
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout_2/dropout/Cast�
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout_2/dropout/Mul_1�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_33/MatMul/ReadVariableOp�
dense_33/MatMulMatMuldropout_2/dropout/Mul_1:z:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_33/MatMul�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_33/BiasAdd/ReadVariableOp�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_33/BiasAdd�
activation_67/SoftmaxSoftmaxdense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
activation_67/Softmax�
IdentityIdentityactivation_67/Softmax:softmax:0!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�
e
I__inference_activation_67_layer_call_and_return_conditional_losses_115170

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
J
.__inference_activation_65_layer_call_fn_115654

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_65_layer_call_and_return_conditional_losses_1151082
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�

�
E__inference_conv2d_32_layer_call_and_return_conditional_losses_115606

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������FF: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�2
�
I__inference_sequential_29_layer_call_and_return_conditional_losses_115444
conv2d_32_input*
conv2d_32_115415:@
conv2d_32_115417:@*
conv2d_33_115422:@@
conv2d_33_115424:@#
dense_32_115430:
��@
dense_32_115432:@!
dense_33_115437:@
dense_33_115439:
identity��!conv2d_32/StatefulPartitionedCall�!conv2d_33/StatefulPartitionedCall� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputconv2d_32_115415conv2d_32_115417*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_1150732#
!conv2d_32/StatefulPartitionedCall�
activation_64/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_1150842
activation_64/PartitionedCall�
 max_pooling2d_30/PartitionedCallPartitionedCall&activation_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1150382"
 max_pooling2d_30/PartitionedCall�
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_33_115422conv2d_33_115424*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_1150972#
!conv2d_33/StatefulPartitionedCall�
activation_65/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_65_layer_call_and_return_conditional_losses_1151082
activation_65/PartitionedCall�
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_65/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1150502"
 max_pooling2d_31/PartitionedCall�
flatten_16/PartitionedCallPartitionedCall)max_pooling2d_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_1151172
flatten_16/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_115430dense_32_115432*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_1151292"
 dense_32/StatefulPartitionedCall�
activation_66/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_66_layer_call_and_return_conditional_losses_1151402
activation_66/PartitionedCall�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&activation_66/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1152282#
!dropout_2/StatefulPartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_33_115437dense_33_115439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_1151592"
 dense_33/StatefulPartitionedCall�
activation_67/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_67_layer_call_and_return_conditional_losses_1151702
activation_67/PartitionedCall�
IdentityIdentity&activation_67/PartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:` \
/
_output_shapes
:���������FF
)
_user_specified_nameconv2d_32_input
�
b
F__inference_flatten_16_layer_call_and_return_conditional_losses_115660

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� @  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_115050

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_32_layer_call_fn_115684

inputs
unknown:
��@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_1151292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
e
I__inference_activation_65_layer_call_and_return_conditional_losses_115649

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������  @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�	
�
D__inference_dense_33_layer_call_and_return_conditional_losses_115159

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�>
�
!__inference__wrapped_model_115032
conv2d_32_inputP
6sequential_29_conv2d_32_conv2d_readvariableop_resource:@E
7sequential_29_conv2d_32_biasadd_readvariableop_resource:@P
6sequential_29_conv2d_33_conv2d_readvariableop_resource:@@E
7sequential_29_conv2d_33_biasadd_readvariableop_resource:@I
5sequential_29_dense_32_matmul_readvariableop_resource:
��@D
6sequential_29_dense_32_biasadd_readvariableop_resource:@G
5sequential_29_dense_33_matmul_readvariableop_resource:@D
6sequential_29_dense_33_biasadd_readvariableop_resource:
identity��.sequential_29/conv2d_32/BiasAdd/ReadVariableOp�-sequential_29/conv2d_32/Conv2D/ReadVariableOp�.sequential_29/conv2d_33/BiasAdd/ReadVariableOp�-sequential_29/conv2d_33/Conv2D/ReadVariableOp�-sequential_29/dense_32/BiasAdd/ReadVariableOp�,sequential_29/dense_32/MatMul/ReadVariableOp�-sequential_29/dense_33/BiasAdd/ReadVariableOp�,sequential_29/dense_33/MatMul/ReadVariableOp�
-sequential_29/conv2d_32/Conv2D/ReadVariableOpReadVariableOp6sequential_29_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_29/conv2d_32/Conv2D/ReadVariableOp�
sequential_29/conv2d_32/Conv2DConv2Dconv2d_32_input5sequential_29/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@*
paddingVALID*
strides
2 
sequential_29/conv2d_32/Conv2D�
.sequential_29/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp7sequential_29_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_29/conv2d_32/BiasAdd/ReadVariableOp�
sequential_29/conv2d_32/BiasAddBiasAdd'sequential_29/conv2d_32/Conv2D:output:06sequential_29/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@2!
sequential_29/conv2d_32/BiasAdd�
 sequential_29/activation_64/ReluRelu(sequential_29/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:���������DD@2"
 sequential_29/activation_64/Relu�
&sequential_29/max_pooling2d_30/MaxPoolMaxPool.sequential_29/activation_64/Relu:activations:0*/
_output_shapes
:���������""@*
ksize
*
paddingVALID*
strides
2(
&sequential_29/max_pooling2d_30/MaxPool�
-sequential_29/conv2d_33/Conv2D/ReadVariableOpReadVariableOp6sequential_29_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_29/conv2d_33/Conv2D/ReadVariableOp�
sequential_29/conv2d_33/Conv2DConv2D/sequential_29/max_pooling2d_30/MaxPool:output:05sequential_29/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingVALID*
strides
2 
sequential_29/conv2d_33/Conv2D�
.sequential_29/conv2d_33/BiasAdd/ReadVariableOpReadVariableOp7sequential_29_conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_29/conv2d_33/BiasAdd/ReadVariableOp�
sequential_29/conv2d_33/BiasAddBiasAdd'sequential_29/conv2d_33/Conv2D:output:06sequential_29/conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @2!
sequential_29/conv2d_33/BiasAdd�
 sequential_29/activation_65/ReluRelu(sequential_29/conv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������  @2"
 sequential_29/activation_65/Relu�
&sequential_29/max_pooling2d_31/MaxPoolMaxPool.sequential_29/activation_65/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2(
&sequential_29/max_pooling2d_31/MaxPool�
sequential_29/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� @  2 
sequential_29/flatten_16/Const�
 sequential_29/flatten_16/ReshapeReshape/sequential_29/max_pooling2d_31/MaxPool:output:0'sequential_29/flatten_16/Const:output:0*
T0*)
_output_shapes
:�����������2"
 sequential_29/flatten_16/Reshape�
,sequential_29/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_29_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02.
,sequential_29/dense_32/MatMul/ReadVariableOp�
sequential_29/dense_32/MatMulMatMul)sequential_29/flatten_16/Reshape:output:04sequential_29/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
sequential_29/dense_32/MatMul�
-sequential_29/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_29_dense_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_29/dense_32/BiasAdd/ReadVariableOp�
sequential_29/dense_32/BiasAddBiasAdd'sequential_29/dense_32/MatMul:product:05sequential_29/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
sequential_29/dense_32/BiasAdd�
 sequential_29/activation_66/ReluRelu'sequential_29/dense_32/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2"
 sequential_29/activation_66/Relu�
 sequential_29/dropout_2/IdentityIdentity.sequential_29/activation_66/Relu:activations:0*
T0*'
_output_shapes
:���������@2"
 sequential_29/dropout_2/Identity�
,sequential_29/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_29_dense_33_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_29/dense_33/MatMul/ReadVariableOp�
sequential_29/dense_33/MatMulMatMul)sequential_29/dropout_2/Identity:output:04sequential_29/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_29/dense_33/MatMul�
-sequential_29/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_29_dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_29/dense_33/BiasAdd/ReadVariableOp�
sequential_29/dense_33/BiasAddBiasAdd'sequential_29/dense_33/MatMul:product:05sequential_29/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_29/dense_33/BiasAdd�
#sequential_29/activation_67/SoftmaxSoftmax'sequential_29/dense_33/BiasAdd:output:0*
T0*'
_output_shapes
:���������2%
#sequential_29/activation_67/Softmax�
IdentityIdentity-sequential_29/activation_67/Softmax:softmax:0/^sequential_29/conv2d_32/BiasAdd/ReadVariableOp.^sequential_29/conv2d_32/Conv2D/ReadVariableOp/^sequential_29/conv2d_33/BiasAdd/ReadVariableOp.^sequential_29/conv2d_33/Conv2D/ReadVariableOp.^sequential_29/dense_32/BiasAdd/ReadVariableOp-^sequential_29/dense_32/MatMul/ReadVariableOp.^sequential_29/dense_33/BiasAdd/ReadVariableOp-^sequential_29/dense_33/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 2`
.sequential_29/conv2d_32/BiasAdd/ReadVariableOp.sequential_29/conv2d_32/BiasAdd/ReadVariableOp2^
-sequential_29/conv2d_32/Conv2D/ReadVariableOp-sequential_29/conv2d_32/Conv2D/ReadVariableOp2`
.sequential_29/conv2d_33/BiasAdd/ReadVariableOp.sequential_29/conv2d_33/BiasAdd/ReadVariableOp2^
-sequential_29/conv2d_33/Conv2D/ReadVariableOp-sequential_29/conv2d_33/Conv2D/ReadVariableOp2^
-sequential_29/dense_32/BiasAdd/ReadVariableOp-sequential_29/dense_32/BiasAdd/ReadVariableOp2\
,sequential_29/dense_32/MatMul/ReadVariableOp,sequential_29/dense_32/MatMul/ReadVariableOp2^
-sequential_29/dense_33/BiasAdd/ReadVariableOp-sequential_29/dense_33/BiasAdd/ReadVariableOp2\
,sequential_29/dense_33/MatMul/ReadVariableOp,sequential_29/dense_33/MatMul/ReadVariableOp:` \
/
_output_shapes
:���������FF
)
_user_specified_nameconv2d_32_input
�0
�
I__inference_sequential_29_layer_call_and_return_conditional_losses_115412
conv2d_32_input*
conv2d_32_115383:@
conv2d_32_115385:@*
conv2d_33_115390:@@
conv2d_33_115392:@#
dense_32_115398:
��@
dense_32_115400:@!
dense_33_115405:@
dense_33_115407:
identity��!conv2d_32/StatefulPartitionedCall�!conv2d_33/StatefulPartitionedCall� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputconv2d_32_115383conv2d_32_115385*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_1150732#
!conv2d_32/StatefulPartitionedCall�
activation_64/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_1150842
activation_64/PartitionedCall�
 max_pooling2d_30/PartitionedCallPartitionedCall&activation_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1150382"
 max_pooling2d_30/PartitionedCall�
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_33_115390conv2d_33_115392*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_1150972#
!conv2d_33/StatefulPartitionedCall�
activation_65/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_65_layer_call_and_return_conditional_losses_1151082
activation_65/PartitionedCall�
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_65/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1150502"
 max_pooling2d_31/PartitionedCall�
flatten_16/PartitionedCallPartitionedCall)max_pooling2d_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_1151172
flatten_16/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_115398dense_32_115400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_1151292"
 dense_32/StatefulPartitionedCall�
activation_66/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_66_layer_call_and_return_conditional_losses_1151402
activation_66/PartitionedCall�
dropout_2/PartitionedCallPartitionedCall&activation_66/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1151472
dropout_2/PartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_33_115405dense_33_115407*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_1151592"
 dense_33/StatefulPartitionedCall�
activation_67/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_67_layer_call_and_return_conditional_losses_1151702
activation_67/PartitionedCall�
IdentityIdentity&activation_67/PartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:` \
/
_output_shapes
:���������FF
)
_user_specified_nameconv2d_32_input
�	
�
$__inference_signature_wrapper_115473
conv2d_32_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
��@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_1150322
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������FF
)
_user_specified_nameconv2d_32_input
�0
�
I__inference_sequential_29_layer_call_and_return_conditional_losses_115173

inputs*
conv2d_32_115074:@
conv2d_32_115076:@*
conv2d_33_115098:@@
conv2d_33_115100:@#
dense_32_115130:
��@
dense_32_115132:@!
dense_33_115160:@
dense_33_115162:
identity��!conv2d_32/StatefulPartitionedCall�!conv2d_33/StatefulPartitionedCall� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_32_115074conv2d_32_115076*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_1150732#
!conv2d_32/StatefulPartitionedCall�
activation_64/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_1150842
activation_64/PartitionedCall�
 max_pooling2d_30/PartitionedCallPartitionedCall&activation_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1150382"
 max_pooling2d_30/PartitionedCall�
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_33_115098conv2d_33_115100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_1150972#
!conv2d_33/StatefulPartitionedCall�
activation_65/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_65_layer_call_and_return_conditional_losses_1151082
activation_65/PartitionedCall�
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_65/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1150502"
 max_pooling2d_31/PartitionedCall�
flatten_16/PartitionedCallPartitionedCall)max_pooling2d_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_1151172
flatten_16/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_115130dense_32_115132*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_1151292"
 dense_32/StatefulPartitionedCall�
activation_66/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_66_layer_call_and_return_conditional_losses_1151402
activation_66/PartitionedCall�
dropout_2/PartitionedCallPartitionedCall&activation_66/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1151472
dropout_2/PartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_33_115160dense_33_115162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_1151592"
 dense_33/StatefulPartitionedCall�
activation_67/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_67_layer_call_and_return_conditional_losses_1151702
activation_67/PartitionedCall�
IdentityIdentity&activation_67/PartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�
�
*__inference_conv2d_32_layer_call_fn_115615

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_1150732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������FF: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�

�
E__inference_conv2d_33_layer_call_and_return_conditional_losses_115097

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  @2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������""@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������""@
 
_user_specified_nameinputs
�	
�
D__inference_dense_32_layer_call_and_return_conditional_losses_115129

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
e
I__inference_activation_64_layer_call_and_return_conditional_losses_115084

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������DD@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������DD@:W S
/
_output_shapes
:���������DD@
 
_user_specified_nameinputs
�
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_115699

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_30_layer_call_fn_115044

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1150382
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
.__inference_activation_67_layer_call_fn_115750

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_67_layer_call_and_return_conditional_losses_1151702
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_29_layer_call_fn_115380
conv2d_32_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
��@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_29_layer_call_and_return_conditional_losses_1153402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������FF
)
_user_specified_nameconv2d_32_input
�	
�
D__inference_dense_33_layer_call_and_return_conditional_losses_115731

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_activation_65_layer_call_and_return_conditional_losses_115108

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������  @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  @:W S
/
_output_shapes
:���������  @
 
_user_specified_nameinputs
�
�
*__inference_conv2d_33_layer_call_fn_115644

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_1150972
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������""@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������""@
 
_user_specified_nameinputs
�
�
)__inference_dense_33_layer_call_fn_115740

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_1151592
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
I__inference_activation_66_layer_call_and_return_conditional_losses_115140

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:���������@2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_115038

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_29_layer_call_fn_115192
conv2d_32_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:
��@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_29_layer_call_and_return_conditional_losses_1151732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������FF
)
_user_specified_nameconv2d_32_input
�
M
1__inference_max_pooling2d_31_layer_call_fn_115056

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1150502
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�2
�
I__inference_sequential_29_layer_call_and_return_conditional_losses_115340

inputs*
conv2d_32_115311:@
conv2d_32_115313:@*
conv2d_33_115318:@@
conv2d_33_115320:@#
dense_32_115326:
��@
dense_32_115328:@!
dense_33_115333:@
dense_33_115335:
identity��!conv2d_32/StatefulPartitionedCall�!conv2d_33/StatefulPartitionedCall� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_32_115311conv2d_32_115313*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_1150732#
!conv2d_32/StatefulPartitionedCall�
activation_64/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������DD@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_1150842
activation_64/PartitionedCall�
 max_pooling2d_30/PartitionedCallPartitionedCall&activation_64/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������""@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1150382"
 max_pooling2d_30/PartitionedCall�
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_33_115318conv2d_33_115320*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_1150972#
!conv2d_33/StatefulPartitionedCall�
activation_65/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_65_layer_call_and_return_conditional_losses_1151082
activation_65/PartitionedCall�
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_65/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1150502"
 max_pooling2d_31/PartitionedCall�
flatten_16/PartitionedCallPartitionedCall)max_pooling2d_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_1151172
flatten_16/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_115326dense_32_115328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_1151292"
 dense_32/StatefulPartitionedCall�
activation_66/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_66_layer_call_and_return_conditional_losses_1151402
activation_66/PartitionedCall�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&activation_66/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1152282#
!dropout_2/StatefulPartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_33_115333dense_33_115335*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_1151592"
 dense_33/StatefulPartitionedCall�
activation_67/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_activation_67_layer_call_and_return_conditional_losses_1151702
activation_67/PartitionedCall�
IdentityIdentity&activation_67/PartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������FF: : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�

�
E__inference_conv2d_32_layer_call_and_return_conditional_losses_115073

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������DD@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������DD@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������FF: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������FF
 
_user_specified_nameinputs
�
F
*__inference_dropout_2_layer_call_fn_115716

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1151472
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
conv2d_32_input@
!serving_default_conv2d_32_input:0���������FFA
activation_670
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�N
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+�&call_and_return_all_conditional_losses
�_default_save_signature
�__call__"�J
_tf_keras_sequential�J{"name": "sequential_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_29", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_32_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_64", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_30", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_65", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_31", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_16", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_32", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_66", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_33", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_67", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 70, 70, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 70, 70, 3]}, "float32", "conv2d_32_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_29", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_32_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_64", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_30", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_65", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_31", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Flatten", "config": {"name": "flatten_16", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_32", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "Activation", "config": {"name": "activation_66", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_33", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Activation", "config": {"name": "activation_67", "trainable": true, "dtype": "float32", "activation": "softmax"}, "shared_object_id": 20}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 23}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"name": "conv2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70, 70, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 70, 70, 3]}}
�
trainable_variables
regularization_losses
	variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "activation_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_64", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}
�
trainable_variables
regularization_losses
	variables
 	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_30", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}}
�


!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 34, 34, 64]}}
�
'trainable_variables
(regularization_losses
)	variables
*	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "activation_65", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_65", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
�
+trainable_variables
,regularization_losses
-	variables
.	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_31", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}}
�
/trainable_variables
0regularization_losses
1	variables
2	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "flatten_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_16", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 27}}
�

3kernel
4bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dense_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_32", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16384}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16384]}}
�
9trainable_variables
:regularization_losses
;	variables
<	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "activation_66", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_66", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 15}
�
=trainable_variables
>regularization_losses
?	variables
@	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 16}
�

Akernel
Bbias
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dense_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_33", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
�
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "activation_67", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_67", "trainable": true, "dtype": "float32", "activation": "softmax"}, "shared_object_id": 20}
�
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratem�m�!m�"m�3m�4m�Am�Bm�v�v�!v�"v�3v�4v�Av�Bv�"
	optimizer
X
0
1
!2
"3
34
45
A6
B7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
!2
"3
34
45
A6
B7"
trackable_list_wrapper
�
trainable_variables

Players
Qlayer_metrics
Rnon_trainable_variables
regularization_losses
Smetrics
	variables
Tlayer_regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
*:(@2conv2d_32/kernel
:@2conv2d_32/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables

Ulayers
Vlayer_metrics
Wnon_trainable_variables
regularization_losses
Xmetrics
	variables
Ylayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables

Zlayers
[layer_metrics
\non_trainable_variables
regularization_losses
]metrics
	variables
^layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables

_layers
`layer_metrics
anon_trainable_variables
regularization_losses
bmetrics
	variables
clayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_33/kernel
:@2conv2d_33/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
�
#trainable_variables

dlayers
elayer_metrics
fnon_trainable_variables
$regularization_losses
gmetrics
%	variables
hlayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
'trainable_variables

ilayers
jlayer_metrics
knon_trainable_variables
(regularization_losses
lmetrics
)	variables
mlayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
+trainable_variables

nlayers
olayer_metrics
pnon_trainable_variables
,regularization_losses
qmetrics
-	variables
rlayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
/trainable_variables

slayers
tlayer_metrics
unon_trainable_variables
0regularization_losses
vmetrics
1	variables
wlayer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!
��@2dense_32/kernel
:@2dense_32/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
�
5trainable_variables

xlayers
ylayer_metrics
znon_trainable_variables
6regularization_losses
{metrics
7	variables
|layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
9trainable_variables

}layers
~layer_metrics
non_trainable_variables
:regularization_losses
�metrics
;	variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
=trainable_variables
�layers
�layer_metrics
�non_trainable_variables
>regularization_losses
�metrics
?	variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_33/kernel
:2dense_33/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
�
Ctrainable_variables
�layers
�layer_metrics
�non_trainable_variables
Dregularization_losses
�metrics
E	variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Gtrainable_variables
�layers
�layer_metrics
�non_trainable_variables
Hregularization_losses
�metrics
I	variables
 �layer_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
�0
�1"
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
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 30}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 23}
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
/:-@2Adam/conv2d_32/kernel/m
!:@2Adam/conv2d_32/bias/m
/:-@@2Adam/conv2d_33/kernel/m
!:@2Adam/conv2d_33/bias/m
(:&
��@2Adam/dense_32/kernel/m
 :@2Adam/dense_32/bias/m
&:$@2Adam/dense_33/kernel/m
 :2Adam/dense_33/bias/m
/:-@2Adam/conv2d_32/kernel/v
!:@2Adam/conv2d_32/bias/v
/:-@@2Adam/conv2d_33/kernel/v
!:@2Adam/conv2d_33/bias/v
(:&
��@2Adam/dense_32/kernel/v
 :@2Adam/dense_32/bias/v
&:$@2Adam/dense_33/kernel/v
 :2Adam/dense_33/bias/v
�2�
I__inference_sequential_29_layer_call_and_return_conditional_losses_115510
I__inference_sequential_29_layer_call_and_return_conditional_losses_115554
I__inference_sequential_29_layer_call_and_return_conditional_losses_115412
I__inference_sequential_29_layer_call_and_return_conditional_losses_115444�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
!__inference__wrapped_model_115032�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *6�3
1�.
conv2d_32_input���������FF
�2�
.__inference_sequential_29_layer_call_fn_115192
.__inference_sequential_29_layer_call_fn_115575
.__inference_sequential_29_layer_call_fn_115596
.__inference_sequential_29_layer_call_fn_115380�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_conv2d_32_layer_call_and_return_conditional_losses_115606�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_conv2d_32_layer_call_fn_115615�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_activation_64_layer_call_and_return_conditional_losses_115620�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_activation_64_layer_call_fn_115625�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_115038�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
1__inference_max_pooling2d_30_layer_call_fn_115044�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
E__inference_conv2d_33_layer_call_and_return_conditional_losses_115635�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_conv2d_33_layer_call_fn_115644�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_activation_65_layer_call_and_return_conditional_losses_115649�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_activation_65_layer_call_fn_115654�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_115050�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
1__inference_max_pooling2d_31_layer_call_fn_115056�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
F__inference_flatten_16_layer_call_and_return_conditional_losses_115660�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_flatten_16_layer_call_fn_115665�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_32_layer_call_and_return_conditional_losses_115675�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_32_layer_call_fn_115684�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_activation_66_layer_call_and_return_conditional_losses_115689�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_activation_66_layer_call_fn_115694�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dropout_2_layer_call_and_return_conditional_losses_115699
E__inference_dropout_2_layer_call_and_return_conditional_losses_115711�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dropout_2_layer_call_fn_115716
*__inference_dropout_2_layer_call_fn_115721�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dense_33_layer_call_and_return_conditional_losses_115731�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_33_layer_call_fn_115740�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_activation_67_layer_call_and_return_conditional_losses_115745�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_activation_67_layer_call_fn_115750�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_115473conv2d_32_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_115032�!"34AB@�=
6�3
1�.
conv2d_32_input���������FF
� "=�:
8
activation_67'�$
activation_67����������
I__inference_activation_64_layer_call_and_return_conditional_losses_115620h7�4
-�*
(�%
inputs���������DD@
� "-�*
#� 
0���������DD@
� �
.__inference_activation_64_layer_call_fn_115625[7�4
-�*
(�%
inputs���������DD@
� " ����������DD@�
I__inference_activation_65_layer_call_and_return_conditional_losses_115649h7�4
-�*
(�%
inputs���������  @
� "-�*
#� 
0���������  @
� �
.__inference_activation_65_layer_call_fn_115654[7�4
-�*
(�%
inputs���������  @
� " ����������  @�
I__inference_activation_66_layer_call_and_return_conditional_losses_115689X/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� }
.__inference_activation_66_layer_call_fn_115694K/�,
%�"
 �
inputs���������@
� "����������@�
I__inference_activation_67_layer_call_and_return_conditional_losses_115745X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
.__inference_activation_67_layer_call_fn_115750K/�,
%�"
 �
inputs���������
� "�����������
E__inference_conv2d_32_layer_call_and_return_conditional_losses_115606l7�4
-�*
(�%
inputs���������FF
� "-�*
#� 
0���������DD@
� �
*__inference_conv2d_32_layer_call_fn_115615_7�4
-�*
(�%
inputs���������FF
� " ����������DD@�
E__inference_conv2d_33_layer_call_and_return_conditional_losses_115635l!"7�4
-�*
(�%
inputs���������""@
� "-�*
#� 
0���������  @
� �
*__inference_conv2d_33_layer_call_fn_115644_!"7�4
-�*
(�%
inputs���������""@
� " ����������  @�
D__inference_dense_32_layer_call_and_return_conditional_losses_115675^341�.
'�$
"�
inputs�����������
� "%�"
�
0���������@
� ~
)__inference_dense_32_layer_call_fn_115684Q341�.
'�$
"�
inputs�����������
� "����������@�
D__inference_dense_33_layer_call_and_return_conditional_losses_115731\AB/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� |
)__inference_dense_33_layer_call_fn_115740OAB/�,
%�"
 �
inputs���������@
� "�����������
E__inference_dropout_2_layer_call_and_return_conditional_losses_115699\3�0
)�&
 �
inputs���������@
p 
� "%�"
�
0���������@
� �
E__inference_dropout_2_layer_call_and_return_conditional_losses_115711\3�0
)�&
 �
inputs���������@
p
� "%�"
�
0���������@
� }
*__inference_dropout_2_layer_call_fn_115716O3�0
)�&
 �
inputs���������@
p 
� "����������@}
*__inference_dropout_2_layer_call_fn_115721O3�0
)�&
 �
inputs���������@
p
� "����������@�
F__inference_flatten_16_layer_call_and_return_conditional_losses_115660b7�4
-�*
(�%
inputs���������@
� "'�$
�
0�����������
� �
+__inference_flatten_16_layer_call_fn_115665U7�4
-�*
(�%
inputs���������@
� "�������������
L__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_115038�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_30_layer_call_fn_115044�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_115050�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_31_layer_call_fn_115056�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
I__inference_sequential_29_layer_call_and_return_conditional_losses_115412{!"34ABH�E
>�;
1�.
conv2d_32_input���������FF
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_29_layer_call_and_return_conditional_losses_115444{!"34ABH�E
>�;
1�.
conv2d_32_input���������FF
p

 
� "%�"
�
0���������
� �
I__inference_sequential_29_layer_call_and_return_conditional_losses_115510r!"34AB?�<
5�2
(�%
inputs���������FF
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_29_layer_call_and_return_conditional_losses_115554r!"34AB?�<
5�2
(�%
inputs���������FF
p

 
� "%�"
�
0���������
� �
.__inference_sequential_29_layer_call_fn_115192n!"34ABH�E
>�;
1�.
conv2d_32_input���������FF
p 

 
� "�����������
.__inference_sequential_29_layer_call_fn_115380n!"34ABH�E
>�;
1�.
conv2d_32_input���������FF
p

 
� "�����������
.__inference_sequential_29_layer_call_fn_115575e!"34AB?�<
5�2
(�%
inputs���������FF
p 

 
� "�����������
.__inference_sequential_29_layer_call_fn_115596e!"34AB?�<
5�2
(�%
inputs���������FF
p

 
� "�����������
$__inference_signature_wrapper_115473�!"34ABS�P
� 
I�F
D
conv2d_32_input1�.
conv2d_32_input���������FF"=�:
8
activation_67'�$
activation_67���������