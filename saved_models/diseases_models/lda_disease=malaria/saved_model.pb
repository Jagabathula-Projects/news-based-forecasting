но	
О
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
:
OnesLike
x"T
y"T"
Ttype:
2	

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
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8тЮ
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
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0

Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/v/dense_3/kernel

)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes

:*
dtype0

Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/m/dense_3/kernel

)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes

:*
dtype0

Adam/v/lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/v/lstm_3/lstm_cell/bias

0Adam/v/lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_3/lstm_cell/bias*
_output_shapes
:*
dtype0

Adam/m/lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/m/lstm_3/lstm_cell/bias

0Adam/m/lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_3/lstm_cell/bias*
_output_shapes
:*
dtype0
Ќ
(Adam/v/lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*9
shared_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel
Ѕ
<Adam/v/lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_3/lstm_cell/recurrent_kernel*
_output_shapes

:*
dtype0
Ќ
(Adam/m/lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*9
shared_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel
Ѕ
<Adam/m/lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_3/lstm_cell/recurrent_kernel*
_output_shapes

:*
dtype0

Adam/v/lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ*/
shared_name Adam/v/lstm_3/lstm_cell/kernel

2Adam/v/lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_3/lstm_cell/kernel*
_output_shapes
:	ћ*
dtype0

Adam/m/lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ*/
shared_name Adam/m/lstm_3/lstm_cell/kernel

2Adam/m/lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_3/lstm_cell/kernel*
_output_shapes
:	ћ*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namelstm_3/lstm_cell/bias
{
)lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell/bias*
_output_shapes
:*
dtype0

!lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!lstm_3/lstm_cell/recurrent_kernel

5lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_3/lstm_cell/recurrent_kernel*
_output_shapes

:*
dtype0

lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ*(
shared_namelstm_3/lstm_cell/kernel

+lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell/kernel*
_output_shapes
:	ћ*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0

serving_default_lstm_3_inputPlaceholder*,
_output_shapes
:џџџџџџџџџћ*
dtype0*!
shape:џџџџџџџџџћ
Д
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_3_inputlstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/biasdense_3/kerneldense_3/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_38955

NoOpNoOp
(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*С'
valueЗ'BД' B­'

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
І
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
А
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

%trace_0
&trace_1* 

'trace_0
(trace_1* 
* 

)
_variables
*_iterations
+_learning_rate
,_index_dict
-
_momentums
._velocities
/_update_step_xla*

0serving_default* 

0
1
2*

0
1
2*
	
10* 


2states
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

8trace_0
9trace_1* 

:trace_0
;trace_1* 
* 
у
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator
C
state_size

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 

Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Itrace_0* 

Jtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_3/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_3/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_3/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

K0*
* 
* 
* 
* 
* 
* 
R
*0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
L0
N1
P2
R3
T4*
'
M0
O1
Q2
S3
U4*
C
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3
Ztrace_4* 
* 

[trace_0* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
	
10* 

\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
a	variables
b	keras_api
	ctotal
	dcount*
ic
VARIABLE_VALUEAdam/m/lstm_3/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_3/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/lstm_3/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/v/lstm_3/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/lstm_3/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/lstm_3/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_3/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_3/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_3/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
10* 
* 

c0
d1*

a	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ё
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biaslstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_3/lstm_cell/kernelAdam/v/lstm_3/lstm_cell/kernel(Adam/m/lstm_3/lstm_cell/recurrent_kernel(Adam/v/lstm_3/lstm_cell/recurrent_kernelAdam/m/lstm_3/lstm_cell/biasAdam/v/lstm_3/lstm_cell/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotalcountConst* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_39415
ь
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biaslstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_3/lstm_cell/kernelAdam/v/lstm_3/lstm_cell/kernel(Adam/m/lstm_3/lstm_cell/recurrent_kernel(Adam/v/lstm_3/lstm_cell/recurrent_kernelAdam/m/lstm_3/lstm_cell/biasAdam/v/lstm_3/lstm_cell/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_39481Хю
З
N
"__inference__update_step_xla_38979
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ћ
J
"__inference__update_step_xla_38974
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable


A__inference_lstm_3_layer_call_and_return_conditional_losses_39143

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџћR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
unstackUnpacktranspose:y:0*
T0*P
_output_shapes>
<:џџџџџџџџџћ:џџџџџџџџџћ:џџџџџџџџџћ*	
numd
lstm_cell/ones_likeOnesLikeunstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћl
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЁ
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Х
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћn
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ы
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћn
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ы
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћn
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ы
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ~
lstm_cell/mulMulunstack:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_4Mulunstack:output:1#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMullstm_cell/mul_4:z:0)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_5Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_6Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_5:z:0lstm_cell/mul_6:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_8Mulunstack:output:2#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMullstm_cell/mul_8:z:0)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_7:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_9Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_10Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџu
lstm_cell/add_5AddV2lstm_cell/mul_9:z:0lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_11Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџb
stackPacklstm_cell/mul_11:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
*lstm_3/lstm_cell/kernel/Regularizer/L2LossL2LossAlstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)lstm_3/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<И
'lstm_3/lstm_cell/kernel/Regularizer/mulMul2lstm_3/lstm_cell/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentitylstm_cell/mul_11:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЁ
NoOpNoOp:^lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2v
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџћ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


С
__inference_loss_fn_0_39279U
Blstm_3_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource:	ћ
identityЂ9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpН
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpBlstm_3_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
*lstm_3/lstm_cell/kernel/Regularizer/L2LossL2LossAlstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)lstm_3/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<И
'lstm_3/lstm_cell/kernel/Regularizer/mulMul2lstm_3/lstm_cell/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentity+lstm_3/lstm_cell/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ^
NoOpNoOp:^lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
Є

G__inference_sequential_3_layer_call_and_return_conditional_losses_38747
lstm_3_input
lstm_3_38720:	ћ
lstm_3_38722:
lstm_3_38724:
dense_3_38737:
dense_3_38739:
identityЂdense_3/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЂ9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpў
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_38720lstm_3_38722lstm_3_38724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_38719
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_3_38737dense_3_38739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_38736
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_3_38720*
_output_shapes
:	ћ*
dtype0
*lstm_3/lstm_cell/kernel/Regularizer/L2LossL2LossAlstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)lstm_3/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<И
'lstm_3/lstm_cell/kernel/Regularizer/mulMul2lstm_3/lstm_cell/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЁ
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall:^lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2v
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:Z V
,
_output_shapes
:џџџџџџџџџћ
&
_user_specified_namelstm_3_input:%!

_user_specified_name38720:%!

_user_specified_name38722:%!

_user_specified_name38724:%!

_user_specified_name38737:%!

_user_specified_name38739
К
O
"__inference__update_step_xla_38964
gradient
variable:	ћ*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	ћ: *
	_noinline(:I E

_output_shapes
:	ћ
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Є

G__inference_sequential_3_layer_call_and_return_conditional_losses_38872
lstm_3_input
lstm_3_38855:	ћ
lstm_3_38857:
lstm_3_38859:
dense_3_38862:
dense_3_38864:
identityЂdense_3/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЂ9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpў
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_38855lstm_3_38857lstm_3_38859*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_38854
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_3_38862dense_3_38864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_38736
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_3_38855*
_output_shapes
:	ћ*
dtype0
*lstm_3/lstm_cell/kernel/Regularizer/L2LossL2LossAlstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)lstm_3/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<И
'lstm_3/lstm_cell/kernel/Regularizer/mulMul2lstm_3/lstm_cell/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЁ
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall:^lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2v
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:Z V
,
_output_shapes
:џџџџџџџџџћ
&
_user_specified_namelstm_3_input:%!

_user_specified_name38855:%!

_user_specified_name38857:%!

_user_specified_name38859:%!

_user_specified_name38862:%!

_user_specified_name38864
З
N
"__inference__update_step_xla_38969
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ѕ	
ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_39271

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ч
Б
&__inference_lstm_3_layer_call_fn_39006

inputs
unknown:	ћ
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_38854o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџћ
 
_user_specified_nameinputs:%!

_user_specified_name38998:%!

_user_specified_name39000:%!

_user_specified_name39002


ѓ
,__inference_sequential_3_layer_call_fn_38902
lstm_3_input
unknown:	ћ
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_38872o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
,
_output_shapes
:џџџџџџџџџћ
&
_user_specified_namelstm_3_input:%!

_user_specified_name38890:%!

_user_specified_name38892:%!

_user_specified_name38894:%!

_user_specified_name38896:%!

_user_specified_name38898


ѓ
,__inference_sequential_3_layer_call_fn_38887
lstm_3_input
unknown:	ћ
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_38747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
,
_output_shapes
:џџџџџџџџџћ
&
_user_specified_namelstm_3_input:%!

_user_specified_name38875:%!

_user_specified_name38877:%!

_user_specified_name38879:%!

_user_specified_name38881:%!

_user_specified_name38883


__inference__traced_save_39415
file_prefix7
%read_disablecopyonread_dense_3_kernel:3
%read_1_disablecopyonread_dense_3_bias:C
0read_2_disablecopyonread_lstm_3_lstm_cell_kernel:	ћL
:read_3_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel:<
.read_4_disablecopyonread_lstm_3_lstm_cell_bias:,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: J
7read_7_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel:	ћJ
7read_8_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel:	ћS
Aread_9_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel:T
Bread_10_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel:D
6read_11_disablecopyonread_adam_m_lstm_3_lstm_cell_bias:D
6read_12_disablecopyonread_adam_v_lstm_3_lstm_cell_bias:A
/read_13_disablecopyonread_adam_m_dense_3_kernel:A
/read_14_disablecopyonread_adam_v_dense_3_kernel:;
-read_15_disablecopyonread_adam_m_dense_3_bias:;
-read_16_disablecopyonread_adam_v_dense_3_bias:)
read_17_disablecopyonread_total: )
read_18_disablecopyonread_count: 
savev2_const
identity_39ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 Ё
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_3_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 Ё
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_3_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_2/DisableCopyOnReadDisableCopyOnRead0read_2_disablecopyonread_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Б
Read_2/ReadVariableOpReadVariableOp0read_2_disablecopyonread_lstm_3_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ћ*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ћd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	ћ
Read_3/DisableCopyOnReadDisableCopyOnRead:read_3_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 К
Read_3/ReadVariableOpReadVariableOp:read_3_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_4/DisableCopyOnReadDisableCopyOnRead.read_4_disablecopyonread_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Њ
Read_4/ReadVariableOpReadVariableOp.read_4_disablecopyonread_lstm_3_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_5/ReadVariableOpReadVariableOp"read_5_disablecopyonread_iteration^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_learning_rate^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_7/DisableCopyOnReadDisableCopyOnRead7read_7_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 И
Read_7/ReadVariableOpReadVariableOp7read_7_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ћ*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ћf
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	ћ
Read_8/DisableCopyOnReadDisableCopyOnRead7read_8_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 И
Read_8/ReadVariableOpReadVariableOp7read_8_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ћ*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ћf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	ћ
Read_9/DisableCopyOnReadDisableCopyOnReadAread_9_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 С
Read_9/ReadVariableOpReadVariableOpAread_9_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_10/DisableCopyOnReadDisableCopyOnReadBread_10_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_10/ReadVariableOpReadVariableOpBread_10_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_adam_m_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Д
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_adam_m_lstm_3_lstm_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_adam_v_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Д
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_adam_v_lstm_3_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 Б
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_m_dense_3_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 Б
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_adam_v_dense_3_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 Ћ
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_adam_m_dense_3_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 Ћ
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_v_dense_3_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_17/DisableCopyOnReadDisableCopyOnReadread_17_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_17/ReadVariableOpReadVariableOpread_17_disablecopyonread_total^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_18/DisableCopyOnReadDisableCopyOnReadread_18_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_18/ReadVariableOpReadVariableOpread_18_disablecopyonread_count^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: Т
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *"
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_38Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_39IdentityIdentity_38:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_39Identity_39:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:73
1
_user_specified_namelstm_3/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_3/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_3/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name Adam/m/lstm_3/lstm_cell/kernel:>	:
8
_user_specified_name Adam/v/lstm_3/lstm_cell/kernel:H
D
B
_user_specified_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_3/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_3/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_3/kernel:51
/
_user_specified_nameAdam/v/dense_3/kernel:3/
-
_user_specified_nameAdam/m/dense_3/bias:3/
-
_user_specified_nameAdam/v/dense_3/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst


A__inference_lstm_3_layer_call_and_return_conditional_losses_38719

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџћR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
unstackUnpacktranspose:y:0*
T0*P
_output_shapes>
<:џџџџџџџџџћ:џџџџџџџџџћ:џџџџџџџџџћ*	
numd
lstm_cell/ones_likeOnesLikeunstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћl
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЁ
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Х
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћn
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ы
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћn
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ы
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџћn
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ы
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ~
lstm_cell/mulMulunstack:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_4Mulunstack:output:1#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMullstm_cell/mul_4:z:0)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_5Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_6Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_5:z:0lstm_cell/mul_6:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_8Mulunstack:output:2#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMullstm_cell/mul_8:z:0)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_7:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_9Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_10Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџu
lstm_cell/add_5AddV2lstm_cell/mul_9:z:0lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_11Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџb
stackPacklstm_cell/mul_11:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
*lstm_3/lstm_cell/kernel/Regularizer/L2LossL2LossAlstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)lstm_3/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<И
'lstm_3/lstm_cell/kernel/Regularizer/mulMul2lstm_3/lstm_cell/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentitylstm_cell/mul_11:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЁ
NoOpNoOp:^lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2v
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџћ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
цe

A__inference_lstm_3_layer_call_and_return_conditional_losses_39248

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџћR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
unstackUnpacktranspose:y:0*
T0*P
_output_shapes>
<:џџџџџџџџџћ:џџџџџџџџџћ:џџџџџџџџџћ*	
numd
lstm_cell/ones_likeOnesLikeunstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџћr
lstm_cell/mulMulunstack:output:0lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/mul_4Mulunstack:output:1lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMullstm_cell/mul_4:z:0)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_5Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_6Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_5:z:0lstm_cell/mul_6:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/mul_8Mulunstack:output:2lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMullstm_cell/mul_8:z:0)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_7:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_9Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_10Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџu
lstm_cell/add_5AddV2lstm_cell/mul_9:z:0lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_11Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџb
stackPacklstm_cell/mul_11:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
*lstm_3/lstm_cell/kernel/Regularizer/L2LossL2LossAlstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)lstm_3/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<И
'lstm_3/lstm_cell/kernel/Regularizer/mulMul2lstm_3/lstm_cell/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentitylstm_cell/mul_11:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЁ
NoOpNoOp:^lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2v
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџћ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ѕ	
ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_38736

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


 __inference__wrapped_model_38580
lstm_3_inputO
<sequential_3_lstm_3_lstm_cell_matmul_readvariableop_resource:	ћP
>sequential_3_lstm_3_lstm_cell_matmul_1_readvariableop_resource:K
=sequential_3_lstm_3_lstm_cell_biasadd_readvariableop_resource:E
3sequential_3_dense_3_matmul_readvariableop_resource:B
4sequential_3_dense_3_biasadd_readvariableop_resource:
identityЂ+sequential_3/dense_3/BiasAdd/ReadVariableOpЂ*sequential_3/dense_3/MatMul/ReadVariableOpЂ4sequential_3/lstm_3/lstm_cell/BiasAdd/ReadVariableOpЂ6sequential_3/lstm_3/lstm_cell/BiasAdd_1/ReadVariableOpЂ6sequential_3/lstm_3/lstm_cell/BiasAdd_2/ReadVariableOpЂ3sequential_3/lstm_3/lstm_cell/MatMul/ReadVariableOpЂ5sequential_3/lstm_3/lstm_cell/MatMul_1/ReadVariableOpЂ5sequential_3/lstm_3/lstm_cell/MatMul_2/ReadVariableOpЂ5sequential_3/lstm_3/lstm_cell/MatMul_3/ReadVariableOpЂ5sequential_3/lstm_3/lstm_cell/MatMul_4/ReadVariableOpЂ5sequential_3/lstm_3/lstm_cell/MatMul_5/ReadVariableOpc
sequential_3/lstm_3/ShapeShapelstm_3_input*
T0*
_output_shapes
::эЯq
'sequential_3/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_3/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_3/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!sequential_3/lstm_3/strided_sliceStridedSlice"sequential_3/lstm_3/Shape:output:00sequential_3/lstm_3/strided_slice/stack:output:02sequential_3/lstm_3/strided_slice/stack_1:output:02sequential_3/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_3/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Џ
 sequential_3/lstm_3/zeros/packedPack*sequential_3/lstm_3/strided_slice:output:0+sequential_3/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_3/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ј
sequential_3/lstm_3/zerosFill)sequential_3/lstm_3/zeros/packed:output:0(sequential_3/lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџf
$sequential_3/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Г
"sequential_3/lstm_3/zeros_1/packedPack*sequential_3/lstm_3/strided_slice:output:0-sequential_3/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_3/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_3/lstm_3/zeros_1Fill+sequential_3/lstm_3/zeros_1/packed:output:0*sequential_3/lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
"sequential_3/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_3/lstm_3/transpose	Transposelstm_3_input+sequential_3/lstm_3/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџћz
sequential_3/lstm_3/Shape_1Shape!sequential_3/lstm_3/transpose:y:0*
T0*
_output_shapes
::эЯs
)sequential_3/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_3/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_3/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_3/lstm_3/strided_slice_1StridedSlice$sequential_3/lstm_3/Shape_1:output:02sequential_3/lstm_3/strided_slice_1/stack:output:04sequential_3/lstm_3/strided_slice_1/stack_1:output:04sequential_3/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЎ
sequential_3/lstm_3/unstackUnpack!sequential_3/lstm_3/transpose:y:0*
T0*P
_output_shapes>
<:џџџџџџџџџћ:џџџџџџџџџћ:џџџџџџџџџћ*	
num
'sequential_3/lstm_3/lstm_cell/ones_likeOnesLike$sequential_3/lstm_3/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџћЎ
!sequential_3/lstm_3/lstm_cell/mulMul$sequential_3/lstm_3/unstack:output:0+sequential_3/lstm_3/lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћБ
3sequential_3/lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOp<sequential_3_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0Ф
$sequential_3/lstm_3/lstm_cell/MatMulMatMul%sequential_3/lstm_3/lstm_cell/mul:z:0;sequential_3/lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџД
5sequential_3/lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp>sequential_3_lstm_3_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
&sequential_3/lstm_3/lstm_cell/MatMul_1MatMul"sequential_3/lstm_3/zeros:output:0=sequential_3/lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџО
!sequential_3/lstm_3/lstm_cell/addAddV2.sequential_3/lstm_3/lstm_cell/MatMul:product:00sequential_3/lstm_3/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџЎ
4sequential_3/lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp=sequential_3_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ч
%sequential_3/lstm_3/lstm_cell/BiasAddBiasAdd%sequential_3/lstm_3/lstm_cell/add:z:0<sequential_3/lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџo
-sequential_3/lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#sequential_3/lstm_3/lstm_cell/splitSplit6sequential_3/lstm_3/lstm_cell/split/split_dim:output:0.sequential_3/lstm_3/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
%sequential_3/lstm_3/lstm_cell/SigmoidSigmoid,sequential_3/lstm_3/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_3/lstm_3/lstm_cell/Sigmoid_1Sigmoid,sequential_3/lstm_3/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџЏ
#sequential_3/lstm_3/lstm_cell/mul_1Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_1:y:0$sequential_3/lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
"sequential_3/lstm_3/lstm_cell/TanhTanh,sequential_3/lstm_3/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџЏ
#sequential_3/lstm_3/lstm_cell/mul_2Mul)sequential_3/lstm_3/lstm_cell/Sigmoid:y:0&sequential_3/lstm_3/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџА
#sequential_3/lstm_3/lstm_cell/add_1AddV2'sequential_3/lstm_3/lstm_cell/mul_1:z:0'sequential_3/lstm_3/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_3/lstm_3/lstm_cell/Sigmoid_2Sigmoid,sequential_3/lstm_3/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
$sequential_3/lstm_3/lstm_cell/Tanh_1Tanh'sequential_3/lstm_3/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџГ
#sequential_3/lstm_3/lstm_cell/mul_3Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_2:y:0(sequential_3/lstm_3/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџА
#sequential_3/lstm_3/lstm_cell/mul_4Mul$sequential_3/lstm_3/unstack:output:1+sequential_3/lstm_3/lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћГ
5sequential_3/lstm_3/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp<sequential_3_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0Ъ
&sequential_3/lstm_3/lstm_cell/MatMul_2MatMul'sequential_3/lstm_3/lstm_cell/mul_4:z:0=sequential_3/lstm_3/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџД
5sequential_3/lstm_3/lstm_cell/MatMul_3/ReadVariableOpReadVariableOp>sequential_3_lstm_3_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ъ
&sequential_3/lstm_3/lstm_cell/MatMul_3MatMul'sequential_3/lstm_3/lstm_cell/mul_3:z:0=sequential_3/lstm_3/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџТ
#sequential_3/lstm_3/lstm_cell/add_2AddV20sequential_3/lstm_3/lstm_cell/MatMul_2:product:00sequential_3/lstm_3/lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџА
6sequential_3/lstm_3/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp=sequential_3_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
'sequential_3/lstm_3/lstm_cell/BiasAdd_1BiasAdd'sequential_3/lstm_3/lstm_cell/add_2:z:0>sequential_3/lstm_3/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџq
/sequential_3/lstm_3/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_3/lstm_3/lstm_cell/split_1Split8sequential_3/lstm_3/lstm_cell/split_1/split_dim:output:00sequential_3/lstm_3/lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
'sequential_3/lstm_3/lstm_cell/Sigmoid_3Sigmoid.sequential_3/lstm_3/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_3/lstm_3/lstm_cell/Sigmoid_4Sigmoid.sequential_3/lstm_3/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџВ
#sequential_3/lstm_3/lstm_cell/mul_5Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_4:y:0'sequential_3/lstm_3/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$sequential_3/lstm_3/lstm_cell/Tanh_2Tanh.sequential_3/lstm_3/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџГ
#sequential_3/lstm_3/lstm_cell/mul_6Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_3:y:0(sequential_3/lstm_3/lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџА
#sequential_3/lstm_3/lstm_cell/add_3AddV2'sequential_3/lstm_3/lstm_cell/mul_5:z:0'sequential_3/lstm_3/lstm_cell/mul_6:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_3/lstm_3/lstm_cell/Sigmoid_5Sigmoid.sequential_3/lstm_3/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
$sequential_3/lstm_3/lstm_cell/Tanh_3Tanh'sequential_3/lstm_3/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџГ
#sequential_3/lstm_3/lstm_cell/mul_7Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_5:y:0(sequential_3/lstm_3/lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџА
#sequential_3/lstm_3/lstm_cell/mul_8Mul$sequential_3/lstm_3/unstack:output:2+sequential_3/lstm_3/lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћГ
5sequential_3/lstm_3/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp<sequential_3_lstm_3_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0Ъ
&sequential_3/lstm_3/lstm_cell/MatMul_4MatMul'sequential_3/lstm_3/lstm_cell/mul_8:z:0=sequential_3/lstm_3/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџД
5sequential_3/lstm_3/lstm_cell/MatMul_5/ReadVariableOpReadVariableOp>sequential_3_lstm_3_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ъ
&sequential_3/lstm_3/lstm_cell/MatMul_5MatMul'sequential_3/lstm_3/lstm_cell/mul_7:z:0=sequential_3/lstm_3/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџТ
#sequential_3/lstm_3/lstm_cell/add_4AddV20sequential_3/lstm_3/lstm_cell/MatMul_4:product:00sequential_3/lstm_3/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџА
6sequential_3/lstm_3/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp=sequential_3_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
'sequential_3/lstm_3/lstm_cell/BiasAdd_2BiasAdd'sequential_3/lstm_3/lstm_cell/add_4:z:0>sequential_3/lstm_3/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџq
/sequential_3/lstm_3/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_3/lstm_3/lstm_cell/split_2Split8sequential_3/lstm_3/lstm_cell/split_2/split_dim:output:00sequential_3/lstm_3/lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
'sequential_3/lstm_3/lstm_cell/Sigmoid_6Sigmoid.sequential_3/lstm_3/lstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_3/lstm_3/lstm_cell/Sigmoid_7Sigmoid.sequential_3/lstm_3/lstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџВ
#sequential_3/lstm_3/lstm_cell/mul_9Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_7:y:0'sequential_3/lstm_3/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$sequential_3/lstm_3/lstm_cell/Tanh_4Tanh.sequential_3/lstm_3/lstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџД
$sequential_3/lstm_3/lstm_cell/mul_10Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_6:y:0(sequential_3/lstm_3/lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџБ
#sequential_3/lstm_3/lstm_cell/add_5AddV2'sequential_3/lstm_3/lstm_cell/mul_9:z:0(sequential_3/lstm_3/lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_3/lstm_3/lstm_cell/Sigmoid_8Sigmoid.sequential_3/lstm_3/lstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
$sequential_3/lstm_3/lstm_cell/Tanh_5Tanh'sequential_3/lstm_3/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџД
$sequential_3/lstm_3/lstm_cell/mul_11Mul+sequential_3/lstm_3/lstm_cell/Sigmoid_8:y:0(sequential_3/lstm_3/lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_3/lstm_3/stackPack(sequential_3/lstm_3/lstm_cell/mul_11:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџy
$sequential_3/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Е
sequential_3/lstm_3/transpose_1	Transpose"sequential_3/lstm_3/stack:output:0-sequential_3/lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџo
sequential_3/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Е
sequential_3/dense_3/MatMulMatMul(sequential_3/lstm_3/lstm_cell/mul_11:z:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџt
IdentityIdentity%sequential_3/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџє
NoOpNoOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp5^sequential_3/lstm_3/lstm_cell/BiasAdd/ReadVariableOp7^sequential_3/lstm_3/lstm_cell/BiasAdd_1/ReadVariableOp7^sequential_3/lstm_3/lstm_cell/BiasAdd_2/ReadVariableOp4^sequential_3/lstm_3/lstm_cell/MatMul/ReadVariableOp6^sequential_3/lstm_3/lstm_cell/MatMul_1/ReadVariableOp6^sequential_3/lstm_3/lstm_cell/MatMul_2/ReadVariableOp6^sequential_3/lstm_3/lstm_cell/MatMul_3/ReadVariableOp6^sequential_3/lstm_3/lstm_cell/MatMul_4/ReadVariableOp6^sequential_3/lstm_3/lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp2l
4sequential_3/lstm_3/lstm_cell/BiasAdd/ReadVariableOp4sequential_3/lstm_3/lstm_cell/BiasAdd/ReadVariableOp2p
6sequential_3/lstm_3/lstm_cell/BiasAdd_1/ReadVariableOp6sequential_3/lstm_3/lstm_cell/BiasAdd_1/ReadVariableOp2p
6sequential_3/lstm_3/lstm_cell/BiasAdd_2/ReadVariableOp6sequential_3/lstm_3/lstm_cell/BiasAdd_2/ReadVariableOp2j
3sequential_3/lstm_3/lstm_cell/MatMul/ReadVariableOp3sequential_3/lstm_3/lstm_cell/MatMul/ReadVariableOp2n
5sequential_3/lstm_3/lstm_cell/MatMul_1/ReadVariableOp5sequential_3/lstm_3/lstm_cell/MatMul_1/ReadVariableOp2n
5sequential_3/lstm_3/lstm_cell/MatMul_2/ReadVariableOp5sequential_3/lstm_3/lstm_cell/MatMul_2/ReadVariableOp2n
5sequential_3/lstm_3/lstm_cell/MatMul_3/ReadVariableOp5sequential_3/lstm_3/lstm_cell/MatMul_3/ReadVariableOp2n
5sequential_3/lstm_3/lstm_cell/MatMul_4/ReadVariableOp5sequential_3/lstm_3/lstm_cell/MatMul_4/ReadVariableOp2n
5sequential_3/lstm_3/lstm_cell/MatMul_5/ReadVariableOp5sequential_3/lstm_3/lstm_cell/MatMul_5/ReadVariableOp:Z V
,
_output_shapes
:џџџџџџџџџћ
&
_user_specified_namelstm_3_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т\
А
!__inference__traced_restore_39481
file_prefix1
assignvariableop_dense_3_kernel:-
assignvariableop_1_dense_3_bias:=
*assignvariableop_2_lstm_3_lstm_cell_kernel:	ћF
4assignvariableop_3_lstm_3_lstm_cell_recurrent_kernel:6
(assignvariableop_4_lstm_3_lstm_cell_bias:&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: D
1assignvariableop_7_adam_m_lstm_3_lstm_cell_kernel:	ћD
1assignvariableop_8_adam_v_lstm_3_lstm_cell_kernel:	ћM
;assignvariableop_9_adam_m_lstm_3_lstm_cell_recurrent_kernel:N
<assignvariableop_10_adam_v_lstm_3_lstm_cell_recurrent_kernel:>
0assignvariableop_11_adam_m_lstm_3_lstm_cell_bias:>
0assignvariableop_12_adam_v_lstm_3_lstm_cell_bias:;
)assignvariableop_13_adam_m_dense_3_kernel:;
)assignvariableop_14_adam_v_dense_3_kernel:5
'assignvariableop_15_adam_m_dense_3_bias:5
'assignvariableop_16_adam_v_dense_3_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: 
identity_20ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp*assignvariableop_2_lstm_3_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_3AssignVariableOp4assignvariableop_3_lstm_3_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_4AssignVariableOp(assignvariableop_4_lstm_3_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_7AssignVariableOp1assignvariableop_7_adam_m_lstm_3_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_8AssignVariableOp1assignvariableop_8_adam_v_lstm_3_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_9AssignVariableOp;assignvariableop_9_adam_m_lstm_3_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_10AssignVariableOp<assignvariableop_10_adam_v_lstm_3_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_11AssignVariableOp0assignvariableop_11_adam_m_lstm_3_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_12AssignVariableOp0assignvariableop_12_adam_v_lstm_3_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_m_dense_3_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_v_dense_3_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_m_dense_3_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_v_dense_3_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ё
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: К
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_20Identity_20:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_3/bias:73
1
_user_specified_namelstm_3/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_3/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_3/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name Adam/m/lstm_3/lstm_cell/kernel:>	:
8
_user_specified_name Adam/v/lstm_3/lstm_cell/kernel:H
D
B
_user_specified_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_3/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_3/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_3/kernel:51
/
_user_specified_nameAdam/v/dense_3/kernel:3/
-
_user_specified_nameAdam/m/dense_3/bias:3/
-
_user_specified_nameAdam/v/dense_3/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
цe

A__inference_lstm_3_layer_call_and_return_conditional_losses_38854

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџћR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
unstackUnpacktranspose:y:0*
T0*P
_output_shapes>
<:џџџџџџџџџћ:џџџџџџџџџћ:џџџџџџџџџћ*	
numd
lstm_cell/ones_likeOnesLikeunstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџћr
lstm_cell/mulMulunstack:output:0lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/mul_4Mulunstack:output:1lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMullstm_cell/mul_4:z:0)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_5Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_6Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_5:z:0lstm_cell/mul_6:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/mul_8Mulunstack:output:2lstm_cell/ones_like:y:0*
T0*(
_output_shapes
:џџџџџџџџџћ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMullstm_cell/mul_8:z:0)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_7:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџv
lstm_cell/mul_9Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_10Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџu
lstm_cell/add_5AddV2lstm_cell/mul_9:z:0lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_cell/mul_11Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџb
stackPacklstm_cell/mul_11:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџe
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
*lstm_3/lstm_cell/kernel/Regularizer/L2LossL2LossAlstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: n
)lstm_3/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<И
'lstm_3/lstm_cell/kernel/Regularizer/mulMul2lstm_3/lstm_cell/kernel/Regularizer/mul/x:output:03lstm_3/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentitylstm_cell/mul_11:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЁ
NoOpNoOp:^lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2v
9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp9lstm_3/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџћ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ћ
J
"__inference__update_step_xla_38984
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ы

'__inference_dense_3_layer_call_fn_39261

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_38736o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name39255:%!

_user_specified_name39257
з	
ъ
#__inference_signature_wrapper_38955
lstm_3_input
unknown:	ћ
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_38580o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
,
_output_shapes
:џџџџџџџџџћ
&
_user_specified_namelstm_3_input:%!

_user_specified_name38943:%!

_user_specified_name38945:%!

_user_specified_name38947:%!

_user_specified_name38949:%!

_user_specified_name38951
Ч
Б
&__inference_lstm_3_layer_call_fn_38995

inputs
unknown:	ћ
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_38719o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџћ
 
_user_specified_nameinputs:%!

_user_specified_name38987:%!

_user_specified_name38989:%!

_user_specified_name38991"ЇL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultЅ
J
lstm_3_input:
serving_default_lstm_3_input:0џџџџџџџџџћ;
dense_30
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Шw
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ы
%trace_0
&trace_12
,__inference_sequential_3_layer_call_fn_38887
,__inference_sequential_3_layer_call_fn_38902Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z%trace_0z&trace_1

'trace_0
(trace_12Ъ
G__inference_sequential_3_layer_call_and_return_conditional_losses_38747
G__inference_sequential_3_layer_call_and_return_conditional_losses_38872Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z'trace_0z(trace_1
аBЭ
 __inference__wrapped_model_38580lstm_3_input"
В
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

)
_variables
*_iterations
+_learning_rate
,_index_dict
-
_momentums
._velocities
/_update_step_xla"
experimentalOptimizer
,
0serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
10"
trackable_list_wrapper
Й

2states
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
д
8trace_0
9trace_12
&__inference_lstm_3_layer_call_fn_38995
&__inference_lstm_3_layer_call_fn_39006Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z8trace_0z9trace_1

:trace_0
;trace_12г
A__inference_lstm_3_layer_call_and_return_conditional_losses_39143
A__inference_lstm_3_layer_call_and_return_conditional_losses_39248Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z:trace_0z;trace_1
"
_generic_user_object
ј
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator
C
state_size

kernel
recurrent_kernel
bias"
_tf_keras_layer
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
 "
trackable_list_wrapper
­
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
Itrace_02Ф
'__inference_dense_3_layer_call_fn_39261
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zItrace_0
ќ
Jtrace_02п
B__inference_dense_3_layer_call_and_return_conditional_losses_39271
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zJtrace_0
 :2dense_3/kernel
:2dense_3/bias
*:(	ћ2lstm_3/lstm_cell/kernel
3:12!lstm_3/lstm_cell/recurrent_kernel
#:!2lstm_3/lstm_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bэ
,__inference_sequential_3_layer_call_fn_38887lstm_3_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
,__inference_sequential_3_layer_call_fn_38902lstm_3_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_38747lstm_3_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_38872lstm_3_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
n
*0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
L0
N1
P2
R3
T4"
trackable_list_wrapper
C
M0
O1
Q2
S3
U4"
trackable_list_wrapper
ы
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3
Ztrace_42ц
"__inference__update_step_xla_38964
"__inference__update_step_xla_38969
"__inference__update_step_xla_38974
"__inference__update_step_xla_38979
"__inference__update_step_xla_38984Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zVtrace_0zWtrace_1zXtrace_2zYtrace_3zZtrace_4
йBж
#__inference_signature_wrapper_38955lstm_3_input"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 !

kwonlyargs
jlstm_3_input
kwonlydefaults
 
annotationsЊ *
 
Ь
[trace_02Џ
__inference_loss_fn_0_39279
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ z[trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBђ
&__inference_lstm_3_layer_call_fn_38995inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
&__inference_lstm_3_layer_call_fn_39006inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_lstm_3_layer_call_and_return_conditional_losses_39143inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
A__inference_lstm_3_layer_call_and_return_conditional_losses_39248inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
10"
trackable_list_wrapper
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Й2ЖГ
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Й2ЖГ
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
"
_generic_user_object
 "
trackable_list_wrapper
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
бBЮ
'__inference_dense_3_layer_call_fn_39261inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
B__inference_dense_3_layer_call_and_return_conditional_losses_39271inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
N
a	variables
b	keras_api
	ctotal
	dcount"
_tf_keras_metric
/:-	ћ2Adam/m/lstm_3/lstm_cell/kernel
/:-	ћ2Adam/v/lstm_3/lstm_cell/kernel
8:62(Adam/m/lstm_3/lstm_cell/recurrent_kernel
8:62(Adam/v/lstm_3/lstm_cell/recurrent_kernel
(:&2Adam/m/lstm_3/lstm_cell/bias
(:&2Adam/v/lstm_3/lstm_cell/bias
%:#2Adam/m/dense_3/kernel
%:#2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
эBъ
"__inference__update_step_xla_38964gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_38969gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_38974gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_38979gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_38984gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ВBЏ
__inference_loss_fn_0_39279"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
10"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
c0
d1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
:  (2total
:  (2count
"__inference__update_step_xla_38964pjЂg
`Ђ]

gradient	ћ
52	Ђ
њ	ћ

p
` VariableSpec 
` гФј>
Њ "
 
"__inference__update_step_xla_38969nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`ребФј>
Њ "
 
"__inference__update_step_xla_38974f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`эгФј>
Њ "
 
"__inference__update_step_xla_38979nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`џиФј>
Њ "
 
"__inference__update_step_xla_38984f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`РїиФј>
Њ "
 
 __inference__wrapped_model_38580v:Ђ7
0Ђ-
+(
lstm_3_inputџџџџџџџџџћ
Њ "1Њ.
,
dense_3!
dense_3џџџџџџџџџЉ
B__inference_dense_3_layer_call_and_return_conditional_losses_39271c/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
'__inference_dense_3_layer_call_fn_39261X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџC
__inference_loss_fn_0_39279$Ђ

Ђ 
Њ "
unknown К
A__inference_lstm_3_layer_call_and_return_conditional_losses_39143u@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 К
A__inference_lstm_3_layer_call_and_return_conditional_losses_39248u@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
&__inference_lstm_3_layer_call_fn_38995j@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p

 
Њ "!
unknownџџџџџџџџџ
&__inference_lstm_3_layer_call_fn_39006j@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p 

 
Њ "!
unknownџџџџџџџџџФ
G__inference_sequential_3_layer_call_and_return_conditional_losses_38747yBЂ?
8Ђ5
+(
lstm_3_inputџџџџџџџџџћ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ф
G__inference_sequential_3_layer_call_and_return_conditional_losses_38872yBЂ?
8Ђ5
+(
lstm_3_inputџџџџџџџџџћ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
,__inference_sequential_3_layer_call_fn_38887nBЂ?
8Ђ5
+(
lstm_3_inputџџџџџџџџџћ
p

 
Њ "!
unknownџџџџџџџџџ
,__inference_sequential_3_layer_call_fn_38902nBЂ?
8Ђ5
+(
lstm_3_inputџџџџџџџџџћ
p 

 
Њ "!
unknownџџџџџџџџџЎ
#__inference_signature_wrapper_38955JЂG
Ђ 
@Њ=
;
lstm_3_input+(
lstm_3_inputџџџџџџџџџћ"1Њ.
,
dense_3!
dense_3џџџџџџџџџ