С
д
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
2
L2Loss
t"T
output"T"
Ttype:
2
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
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628ш
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

Adam/v/dense_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_94/bias
y
(Adam/v/dense_94/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_94/bias*
_output_shapes
:*
dtype0

Adam/m/dense_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_94/bias
y
(Adam/m/dense_94/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_94/bias*
_output_shapes
:*
dtype0

Adam/v/dense_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш*'
shared_nameAdam/v/dense_94/kernel

*Adam/v/dense_94/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_94/kernel*
_output_shapes
:	Ш*
dtype0

Adam/m/dense_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш*'
shared_nameAdam/m/dense_94/kernel

*Adam/m/dense_94/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_94/kernel*
_output_shapes
:	Ш*
dtype0

Adam/v/lstm_94/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/v/lstm_94/lstm_cell/bias

1Adam/v/lstm_94/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_94/lstm_cell/bias*
_output_shapes	
: *
dtype0

Adam/m/lstm_94/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/m/lstm_94/lstm_cell/bias

1Adam/m/lstm_94/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_94/lstm_cell/bias*
_output_shapes	
: *
dtype0
А
)Adam/v/lstm_94/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш *:
shared_name+)Adam/v/lstm_94/lstm_cell/recurrent_kernel
Љ
=Adam/v/lstm_94/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/v/lstm_94/lstm_cell/recurrent_kernel* 
_output_shapes
:
Ш *
dtype0
А
)Adam/m/lstm_94/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш *:
shared_name+)Adam/m/lstm_94/lstm_cell/recurrent_kernel
Љ
=Adam/m/lstm_94/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/m/lstm_94/lstm_cell/recurrent_kernel* 
_output_shapes
:
Ш *
dtype0

Adam/v/lstm_94/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ќ *0
shared_name!Adam/v/lstm_94/lstm_cell/kernel

3Adam/v/lstm_94/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_94/lstm_cell/kernel* 
_output_shapes
:
ќ *
dtype0

Adam/m/lstm_94/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ќ *0
shared_name!Adam/m/lstm_94/lstm_cell/kernel

3Adam/m/lstm_94/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_94/lstm_cell/kernel* 
_output_shapes
:
ќ *
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

lstm_94/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_namelstm_94/lstm_cell/bias
~
*lstm_94/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_94/lstm_cell/bias*
_output_shapes	
: *
dtype0
Ђ
"lstm_94/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш *3
shared_name$"lstm_94/lstm_cell/recurrent_kernel

6lstm_94/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp"lstm_94/lstm_cell/recurrent_kernel* 
_output_shapes
:
Ш *
dtype0

lstm_94/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ќ *)
shared_namelstm_94/lstm_cell/kernel

,lstm_94/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_94/lstm_cell/kernel* 
_output_shapes
:
ќ *
dtype0
r
dense_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_94/bias
k
!dense_94/bias/Read/ReadVariableOpReadVariableOpdense_94/bias*
_output_shapes
:*
dtype0
{
dense_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш* 
shared_namedense_94/kernel
t
#dense_94/kernel/Read/ReadVariableOpReadVariableOpdense_94/kernel*
_output_shapes
:	Ш*
dtype0

serving_default_lstm_94_inputPlaceholder*,
_output_shapes
:џџџџџџџџџќ*
dtype0*!
shape:џџџџџџџџџќ
М
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_94_inputlstm_94/lstm_cell/kernellstm_94/lstm_cell/bias"lstm_94/lstm_cell/recurrent_kerneldense_94/kerneldense_94/bias*
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
GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1790457

NoOpNoOp
*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*в)
valueШ)BХ) BО)
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
М

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
8activity_regularizer_fn
*&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
6
:trace_0
;trace_1
<trace_2
=trace_3* 
6
>trace_0
?trace_1
@trace_2
Atrace_3* 
* 
у
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H_random_generator
I
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
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Otrace_0* 

Ptrace_0* 
_Y
VARIABLE_VALUEdense_94/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_94/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_94/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"lstm_94/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUElstm_94/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

Q0*
* 
* 
* 
* 
* 
* 
R
*0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
R0
T1
V2
X3
Z4*
'
S0
U1
W2
Y3
[4*
C
\trace_0
]trace_1
^trace_2
_trace_3
`trace_4* 
* 

atrace_0* 
* 
* 

0*
* 
* 
* 

btrace_0* 
6
ctrace_0
dtrace_1
etrace_2
ftrace_3* 
* 
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
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

ltrace_0
mtrace_1* 

ntrace_0
otrace_1* 
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
p	variables
q	keras_api
	rtotal
	scount*
jd
VARIABLE_VALUEAdam/m/lstm_94/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_94/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/m/lstm_94/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/v/lstm_94/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/lstm_94/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/lstm_94/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_94/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_94/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_94/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_94/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
* 
	
10* 
* 
* 
* 
* 
* 

r0
s1*

p	variables*
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

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_94/kerneldense_94/biaslstm_94/lstm_cell/kernel"lstm_94/lstm_cell/recurrent_kernellstm_94/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_94/lstm_cell/kernelAdam/v/lstm_94/lstm_cell/kernel)Adam/m/lstm_94/lstm_cell/recurrent_kernel)Adam/v/lstm_94/lstm_cell/recurrent_kernelAdam/m/lstm_94/lstm_cell/biasAdam/v/lstm_94/lstm_cell/biasAdam/m/dense_94/kernelAdam/v/dense_94/kernelAdam/m/dense_94/biasAdam/v/dense_94/biastotalcountConst* 
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1792271
§
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_94/kerneldense_94/biaslstm_94/lstm_cell/kernel"lstm_94/lstm_cell/recurrent_kernellstm_94/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_94/lstm_cell/kernelAdam/v/lstm_94/lstm_cell/kernel)Adam/m/lstm_94/lstm_cell/recurrent_kernel)Adam/v/lstm_94/lstm_cell/recurrent_kernelAdam/m/lstm_94/lstm_cell/biasAdam/v/lstm_94/lstm_cell/biasAdam/m/dense_94/kernelAdam/v/dense_94/kernelAdam/m/dense_94/biasAdam/v/dense_94/biastotalcount*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1792337л
р

D__inference_lstm_94_layer_call_and_return_conditional_losses_1791834

inputs;
'lstm_cell_split_readvariableop_resource:
ќ 8
)lstm_cell_split_1_readvariableop_resource:	 5
!lstm_cell_readvariableop_resource:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0Ф
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
: *
dtype0Ж
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/ReluRelulstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/Relu_1Relulstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1791695*
condR
while_cond_1791694*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЇ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџќ
 
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
їu
	
while_body_1790180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ќ @
1while_lstm_cell_split_1_readvariableop_resource_0:	 =
)while_lstm_cell_readvariableop_resource_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ќ >
/while_lstm_cell_split_1_readvariableop_resource:	 ;
'while_lstm_cell_readvariableop_resource:
Ш Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ј
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ў
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ќ *
dtype0ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ш
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Н
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШj
while/lstm_cell/ReluReluwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource

Ї
 __inference__traced_save_1792271
file_prefix9
&read_disablecopyonread_dense_94_kernel:	Ш4
&read_1_disablecopyonread_dense_94_bias:E
1read_2_disablecopyonread_lstm_94_lstm_cell_kernel:
ќ O
;read_3_disablecopyonread_lstm_94_lstm_cell_recurrent_kernel:
Ш >
/read_4_disablecopyonread_lstm_94_lstm_cell_bias:	 ,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: L
8read_7_disablecopyonread_adam_m_lstm_94_lstm_cell_kernel:
ќ L
8read_8_disablecopyonread_adam_v_lstm_94_lstm_cell_kernel:
ќ V
Bread_9_disablecopyonread_adam_m_lstm_94_lstm_cell_recurrent_kernel:
Ш W
Cread_10_disablecopyonread_adam_v_lstm_94_lstm_cell_recurrent_kernel:
Ш F
7read_11_disablecopyonread_adam_m_lstm_94_lstm_cell_bias:	 F
7read_12_disablecopyonread_adam_v_lstm_94_lstm_cell_bias:	 C
0read_13_disablecopyonread_adam_m_dense_94_kernel:	ШC
0read_14_disablecopyonread_adam_v_dense_94_kernel:	Ш<
.read_15_disablecopyonread_adam_m_dense_94_bias:<
.read_16_disablecopyonread_adam_v_dense_94_bias:)
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
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_94_kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_94_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Ш*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Шb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	Шz
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_94_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_94_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:
Read_2/DisableCopyOnReadDisableCopyOnRead1read_2_disablecopyonread_lstm_94_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Г
Read_2/ReadVariableOpReadVariableOp1read_2_disablecopyonread_lstm_94_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ќ *
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ќ e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ќ 
Read_3/DisableCopyOnReadDisableCopyOnRead;read_3_disablecopyonread_lstm_94_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Н
Read_3/ReadVariableOpReadVariableOp;read_3_disablecopyonread_lstm_94_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Ш *
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Ш e

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Ш 
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_lstm_94_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_lstm_94_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
: *
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
: `

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
: v
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
: 
Read_7/DisableCopyOnReadDisableCopyOnRead8read_7_disablecopyonread_adam_m_lstm_94_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 К
Read_7/ReadVariableOpReadVariableOp8read_7_disablecopyonread_adam_m_lstm_94_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ќ *
dtype0p
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ќ g
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ќ 
Read_8/DisableCopyOnReadDisableCopyOnRead8read_8_disablecopyonread_adam_v_lstm_94_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 К
Read_8/ReadVariableOpReadVariableOp8read_8_disablecopyonread_adam_v_lstm_94_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ќ *
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ќ g
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ќ 
Read_9/DisableCopyOnReadDisableCopyOnReadBread_9_disablecopyonread_adam_m_lstm_94_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_9/ReadVariableOpReadVariableOpBread_9_disablecopyonread_adam_m_lstm_94_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Ш *
dtype0p
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Ш g
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Ш 
Read_10/DisableCopyOnReadDisableCopyOnReadCread_10_disablecopyonread_adam_v_lstm_94_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_10/ReadVariableOpReadVariableOpCread_10_disablecopyonread_adam_v_lstm_94_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Ш *
dtype0q
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Ш g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Ш 
Read_11/DisableCopyOnReadDisableCopyOnRead7read_11_disablecopyonread_adam_m_lstm_94_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ж
Read_11/ReadVariableOpReadVariableOp7read_11_disablecopyonread_adam_m_lstm_94_lstm_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
: *
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
: b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
: 
Read_12/DisableCopyOnReadDisableCopyOnRead7read_12_disablecopyonread_adam_v_lstm_94_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ж
Read_12/ReadVariableOpReadVariableOp7read_12_disablecopyonread_adam_v_lstm_94_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
: *
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
: b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
: 
Read_13/DisableCopyOnReadDisableCopyOnRead0read_13_disablecopyonread_adam_m_dense_94_kernel"/device:CPU:0*
_output_shapes
 Г
Read_13/ReadVariableOpReadVariableOp0read_13_disablecopyonread_adam_m_dense_94_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Ш*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Шf
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	Ш
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_v_dense_94_kernel"/device:CPU:0*
_output_shapes
 Г
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_v_dense_94_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Ш*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Шf
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	Ш
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_m_dense_94_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_m_dense_94_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
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
:
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_v_dense_94_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_v_dense_94_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
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
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_94/kernel:-)
'
_user_specified_namedense_94/bias:84
2
_user_specified_namelstm_94/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_94/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_94/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_94/lstm_cell/kernel:?	;
9
_user_specified_name!Adam/v/lstm_94/lstm_cell/kernel:I
E
C
_user_specified_name+)Adam/m/lstm_94/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_94/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_94/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_94/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_94/kernel:62
0
_user_specified_nameAdam/v/dense_94/kernel:40
.
_user_specified_nameAdam/m/dense_94/bias:40
.
_user_specified_nameAdam/v/dense_94/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
аЯ

D__inference_lstm_94_layer_call_and_return_conditional_losses_1790959
inputs_0;
'lstm_cell_split_readvariableop_resource:
ќ 8
)lstm_cell_split_1_readvariableop_resource:	 5
!lstm_cell_readvariableop_resource:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЁ
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Х
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0Ф
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
: *
dtype0Ж
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/ReluRelulstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/Relu_1Relulstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1790756*
condR
while_cond_1790755*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЇ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
й
И
)__inference_lstm_94_layer_call_fn_1790530

inputs
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790319p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:'#
!
_user_specified_name	1790522:'#
!
_user_specified_name	1790524:'#
!
_user_specified_name	1790526
&
й
while_body_1789496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1789520_0:
ќ (
while_lstm_cell_1789522_0:	 -
while_lstm_cell_1789524_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1789520:
ќ &
while_lstm_cell_1789522:	 +
while_lstm_cell_1789524:
Ш Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0Ў
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1789520_0while_lstm_cell_1789522_0while_lstm_cell_1789524_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789481r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1789520while_lstm_cell_1789520_0"4
while_lstm_cell_1789522while_lstm_cell_1789522_0"4
while_lstm_cell_1789524while_lstm_cell_1789524_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:'#
!
_user_specified_name	1789520:'	#
!
_user_specified_name	1789522:'
#
!
_user_specified_name	1789524
їu
	
while_body_1791069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ќ @
1while_lstm_cell_split_1_readvariableop_resource_0:	 =
)while_lstm_cell_readvariableop_resource_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ќ >
/while_lstm_cell_split_1_readvariableop_resource:	 ;
'while_lstm_cell_readvariableop_resource:
Ш Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ј
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ў
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ќ *
dtype0ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ш
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Н
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШj
while/lstm_cell/ReluReluwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ѕ
ђ
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792049

inputs
states_0
states_11
split_readvariableop_resource:
ќ .
split_1_readvariableop_resource:	 +
readvariableop_resource:
Ш 
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>­
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>­
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>­
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќW
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
mulMulinputsdropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0І
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
: *
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШf
mul_4Mulstates_0dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
mul_5Mulstates_0dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
mul_6Mulstates_0dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
mul_7Mulstates_0dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_9MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШe
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШу
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџќ:џџџџџџџџџШ:џџџџџџџџџШ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ё
К
)__inference_lstm_94_layer_call_fn_1790497
inputs_0
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identityЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1789365p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
"
_user_specified_name
inputs_0:'#
!
_user_specified_name	1790489:'#
!
_user_specified_name	1790491:'#
!
_user_specified_name	1790493
ю#
Л
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790346
lstm_94_input#
lstm_94_1790320:
ќ 
lstm_94_1790322:	 #
lstm_94_1790324:
Ш #
dense_94_1790335:	Ш
dense_94_1790337:
identity

identity_1Ђ dense_94/StatefulPartitionedCallЂlstm_94/StatefulPartitionedCallЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp
lstm_94/StatefulPartitionedCallStatefulPartitionedCalllstm_94_inputlstm_94_1790320lstm_94_1790322lstm_94_1790324*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790319Ы
+lstm_94/ActivityRegularizer/PartitionedCallPartitionedCall(lstm_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *9
f4R2
0__inference_lstm_94_activity_regularizer_1789096
!lstm_94/ActivityRegularizer/ShapeShape(lstm_94/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::эЯy
/lstm_94/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_94/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_94/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
)lstm_94/ActivityRegularizer/strided_sliceStridedSlice*lstm_94/ActivityRegularizer/Shape:output:08lstm_94/ActivityRegularizer/strided_slice/stack:output:0:lstm_94/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_94/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
 lstm_94/ActivityRegularizer/CastCast2lstm_94/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ћ
#lstm_94/ActivityRegularizer/truedivRealDiv4lstm_94/ActivityRegularizer/PartitionedCall:output:0$lstm_94/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_94/StatefulPartitionedCallStatefulPartitionedCall(lstm_94/StatefulPartitionedCall:output:0dense_94_1790335dense_94_1790337*
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
GPU2*0J 8 *N
fIRG
E__inference_dense_94_layer_call_and_return_conditional_losses_1790056
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_94_1790324* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_94/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџg

Identity_1Identity'lstm_94/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: Ў
NoOpNoOp!^dense_94/StatefulPartitionedCall ^lstm_94/StatefulPartitionedCallE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџќ: : : : : 2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2B
lstm_94/StatefulPartitionedCalllstm_94/StatefulPartitionedCall2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:[ W
,
_output_shapes
:џџџџџџџџџќ
'
_user_specified_namelstm_94_input:'#
!
_user_specified_name	1790320:'#
!
_user_specified_name	1790322:'#
!
_user_specified_name	1790324:'#
!
_user_specified_name	1790335:'#
!
_user_specified_name	1790337
П
R
$__inference__update_step_xla_1790466
gradient
variable:
ќ *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
ќ : *
	_noinline(:J F
 
_output_shapes
:
ќ 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Я
і
+__inference_lstm_cell_layer_call_fn_1791882

inputs
states_0
states_1
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identity

identity_1

identity_2ЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789276p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџќ:џџџџџџџџџШ:џџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_1:'#
!
_user_specified_name	1791870:'#
!
_user_specified_name	1791872:'#
!
_user_specified_name	1791874
ќ	
ї
E__inference_dense_94_layer_call_and_return_conditional_losses_1791857

inputs1
matmul_readvariableop_resource:	Ш-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш*
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
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Џ
ч
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790569

inputs
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identity

identity_1ЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790031Ї
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *9
f4R2
0__inference_lstm_94_activity_regularizer_1789096p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:'#
!
_user_specified_name	1790559:'#
!
_user_specified_name	1790561:'#
!
_user_specified_name	1790563
М
Q
$__inference__update_step_xla_1790481
gradient
variable:	Ш*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	Ш: *
	_noinline(:I E

_output_shapes
:	Ш
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ѓУ
	
while_body_1791382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ќ @
1while_lstm_cell_split_1_readvariableop_resource_0:	 =
)while_lstm_cell_readvariableop_resource_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ќ >
/while_lstm_cell_split_1_readvariableop_resource:	 ;
'while_lstm_cell_readvariableop_resource:
Ш Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ј
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќb
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ё
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯ­
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>з
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    д
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ў
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЊ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ќ *
dtype0ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ш
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Н
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШj
while/lstm_cell/ReluReluwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ќ	
ї
E__inference_dense_94_layer_call_and_return_conditional_losses_1790056

inputs1
matmul_readvariableop_resource:	Ш-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш*
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
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ы	
Ш
while_cond_1789827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1789827___redundant_placeholder05
1while_while_cond_1789827___redundant_placeholder15
1while_while_cond_1789827___redundant_placeholder25
1while_while_cond_1789827___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ѓУ
	
while_body_1789828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ќ @
1while_lstm_cell_split_1_readvariableop_resource_0:	 =
)while_lstm_cell_readvariableop_resource_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ќ >
/while_lstm_cell_split_1_readvariableop_resource:	 ;
'while_lstm_cell_readvariableop_resource:
Ш Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ј
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќb
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ё
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯ­
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>з
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    д
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ў
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЊ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ќ *
dtype0ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ш
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Н
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШj
while/lstm_cell/ReluReluwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
­Я

D__inference_lstm_94_layer_call_and_return_conditional_losses_1791585

inputs;
'lstm_cell_split_readvariableop_resource:
ќ 8
)lstm_cell_split_1_readvariableop_resource:	 5
!lstm_cell_readvariableop_resource:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЁ
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Х
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0Ф
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
: *
dtype0Ж
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/ReluRelulstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/Relu_1Relulstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1791382*
condR
while_cond_1791381*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЇ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџќ
 
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
р

D__inference_lstm_94_layer_call_and_return_conditional_losses_1790319

inputs;
'lstm_cell_split_readvariableop_resource:
ќ 8
)lstm_cell_split_1_readvariableop_resource:	 5
!lstm_cell_readvariableop_resource:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0Ф
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
: *
dtype0Ж
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/ReluRelulstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/Relu_1Relulstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1790180*
condR
while_cond_1790179*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЇ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџќ
 
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
­Я

D__inference_lstm_94_layer_call_and_return_conditional_losses_1790031

inputs;
'lstm_cell_split_readvariableop_resource:
ќ 8
)lstm_cell_split_1_readvariableop_resource:	 5
!lstm_cell_readvariableop_resource:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileI
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЁ
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Х
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќs
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ы
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯЅ
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ы
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0Ф
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
: *
dtype0Ж
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/ReluRelulstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/Relu_1Relulstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1789828*
condR
while_cond_1789827*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЇ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџќ
 
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
Я
і
+__inference_lstm_cell_layer_call_fn_1791899

inputs
states_0
states_1
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identity

identity_1

identity_2ЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789481p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџќ:џџџџџџџџџШ:џџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_1:'#
!
_user_specified_name	1791887:'#
!
_user_specified_name	1791889:'#
!
_user_specified_name	1791891
Ђ

ќ
/__inference_sequential_94_layer_call_fn_1790362
lstm_94_input
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
	unknown_2:	Ш
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_94_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ: *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790068o
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
":џџџџџџџџџќ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:џџџџџџџџџќ
'
_user_specified_namelstm_94_input:'#
!
_user_specified_name	1790349:'#
!
_user_specified_name	1790351:'#
!
_user_specified_name	1790353:'#
!
_user_specified_name	1790355:'#
!
_user_specified_name	1790357
Ж
к
__inference_loss_fn_0_1791865a
Mlstm_94_lstm_cell_recurrent_kernel_regularizer_l2loss_readvariableop_resource:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpд
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpMlstm_94_lstm_cell_recurrent_kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: t
IdentityIdentity6lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: i
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
A
Ц
D__inference_lstm_94_layer_call_and_return_conditional_losses_1789365

inputs%
lstm_cell_1789277:
ќ  
lstm_cell_1789279:	 %
lstm_cell_1789281:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂ!lstm_cell/StatefulPartitionedCallЂwhileI
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_mask№
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1789277lstm_cell_1789279lstm_cell_1789281*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789276n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1789277lstm_cell_1789279lstm_cell_1789281*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1789291*
condR
while_cond_1789290*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_cell_1789281* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
 
_user_specified_nameinputs:'#
!
_user_specified_name	1789277:'#
!
_user_specified_name	1789279:'#
!
_user_specified_name	1789281
Ы	
Ш
while_cond_1790179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1790179___redundant_placeholder05
1while_while_cond_1790179___redundant_placeholder15
1while_while_cond_1790179___redundant_placeholder25
1while_while_cond_1790179___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
їu
	
while_body_1791695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ќ @
1while_lstm_cell_split_1_readvariableop_resource_0:	 =
)while_lstm_cell_readvariableop_resource_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ќ >
/while_lstm_cell_split_1_readvariableop_resource:	 ;
'while_lstm_cell_readvariableop_resource:
Ш Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ј
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ў
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЅ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ќ *
dtype0ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ш
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Н
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШj
while/lstm_cell/ReluReluwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ч
щ
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790556
inputs_0
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identity

identity_1ЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1789570Ї
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *9
f4R2
0__inference_lstm_94_activity_regularizer_1789096p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
"
_user_specified_name
inputs_0:'#
!
_user_specified_name	1790546:'#
!
_user_specified_name	1790548:'#
!
_user_specified_name	1790550
А
M
$__inference__update_step_xla_1790476
gradient
variable:	 *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	: : *
	_noinline(:E A

_output_shapes	
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

№
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789276

inputs

states
states_11
split_readvariableop_resource:
ќ .
split_1_readvariableop_resource:	 +
readvariableop_resource:
Ш 
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>­
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>­
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::эЯ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>­
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќU
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::эЯ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>­
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШV
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
mulMulinputsdropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0І
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
: *
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_4Mulstatesdropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_5Mulstatesdropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_6Mulstatesdropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_7Mulstatesdropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_9MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШe
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШу
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџќ:џџџџџџџџџШ:џџџџџџџџџШ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ј
G
0__inference_lstm_94_activity_regularizer_1789096
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
A
Ц
D__inference_lstm_94_layer_call_and_return_conditional_losses_1789570

inputs%
lstm_cell_1789482:
ќ  
lstm_cell_1789484:	 %
lstm_cell_1789486:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂ!lstm_cell/StatefulPartitionedCallЂwhileI
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_mask№
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1789482lstm_cell_1789484lstm_cell_1789486*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789481n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1789482lstm_cell_1789484lstm_cell_1789486*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1789496*
condR
while_cond_1789495*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_cell_1789486* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
 
_user_specified_nameinputs:'#
!
_user_specified_name	1789482:'#
!
_user_specified_name	1789484:'#
!
_user_specified_name	1789486
ю#
Л
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790068
lstm_94_input#
lstm_94_1790032:
ќ 
lstm_94_1790034:	 #
lstm_94_1790036:
Ш #
dense_94_1790057:	Ш
dense_94_1790059:
identity

identity_1Ђ dense_94/StatefulPartitionedCallЂlstm_94/StatefulPartitionedCallЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp
lstm_94/StatefulPartitionedCallStatefulPartitionedCalllstm_94_inputlstm_94_1790032lstm_94_1790034lstm_94_1790036*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790031Ы
+lstm_94/ActivityRegularizer/PartitionedCallPartitionedCall(lstm_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *9
f4R2
0__inference_lstm_94_activity_regularizer_1789096
!lstm_94/ActivityRegularizer/ShapeShape(lstm_94/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::эЯy
/lstm_94/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_94/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_94/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
)lstm_94/ActivityRegularizer/strided_sliceStridedSlice*lstm_94/ActivityRegularizer/Shape:output:08lstm_94/ActivityRegularizer/strided_slice/stack:output:0:lstm_94/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_94/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
 lstm_94/ActivityRegularizer/CastCast2lstm_94/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ћ
#lstm_94/ActivityRegularizer/truedivRealDiv4lstm_94/ActivityRegularizer/PartitionedCall:output:0$lstm_94/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_94/StatefulPartitionedCallStatefulPartitionedCall(lstm_94/StatefulPartitionedCall:output:0dense_94_1790057dense_94_1790059*
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
GPU2*0J 8 *N
fIRG
E__inference_dense_94_layer_call_and_return_conditional_losses_1790056
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_94_1790036* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_94/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџg

Identity_1Identity'lstm_94/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: Ў
NoOpNoOp!^dense_94/StatefulPartitionedCall ^lstm_94/StatefulPartitionedCallE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџќ: : : : : 2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2B
lstm_94/StatefulPartitionedCalllstm_94/StatefulPartitionedCall2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:[ W
,
_output_shapes
:џџџџџџџџџќ
'
_user_specified_namelstm_94_input:'#
!
_user_specified_name	1790032:'#
!
_user_specified_name	1790034:'#
!
_user_specified_name	1790036:'#
!
_user_specified_name	1790057:'#
!
_user_specified_name	1790059


D__inference_lstm_94_layer_call_and_return_conditional_losses_1791208
inputs_0;
'lstm_cell_split_readvariableop_resource:
ќ 8
)lstm_cell_split_1_readvariableop_resource:	 5
!lstm_cell_readvariableop_resource:
Ш 
identityЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂlstm_cell/ReadVariableOpЂlstm_cell/ReadVariableOp_1Ђlstm_cell/ReadVariableOp_2Ђlstm_cell/ReadVariableOp_3Ђlstm_cell/split/ReadVariableOpЂ lstm_cell/split_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
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
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
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
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќR
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
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::эЯ^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::эЯ`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0Ф
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
: *
dtype0Ж
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell/ReluRelulstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Љ
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
lstm_cell/Relu_1Relulstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1791069*
condR
while_cond_1791068*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ј
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЇ
NoOpNoOpE^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 2
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
П
R
$__inference__update_step_xla_1790471
gradient
variable:
Ш *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
Ш : *
	_noinline(:J F
 
_output_shapes
:
Ш 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
­
L
$__inference__update_step_xla_1790486
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
Ч
щ
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790543
inputs_0
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identity

identity_1ЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1789365Ї
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *9
f4R2
0__inference_lstm_94_activity_regularizer_1789096p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
"
_user_specified_name
inputs_0:'#
!
_user_specified_name	1790533:'#
!
_user_specified_name	1790535:'#
!
_user_specified_name	1790537
ЅM
№
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789481

inputs

states
states_11
split_readvariableop_resource:
ќ .
split_1_readvariableop_resource:	 +
readvariableop_resource:
Ш 
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќU
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШY
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0І
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
: *
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ]
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ]
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ]
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ]
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_9MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШe
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШу
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџќ:џџџџџџџџџШ:џџџџџџџџџШ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ы	
Ш
while_cond_1791694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1791694___redundant_placeholder05
1while_while_cond_1791694___redundant_placeholder15
1while_while_cond_1791694___redundant_placeholder25
1while_while_cond_1791694___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ј

*__inference_dense_94_layer_call_fn_1791847

inputs
unknown:	Ш
	unknown_0:
identityЂStatefulPartitionedCallн
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
GPU2*0J 8 *N
fIRG
E__inference_dense_94_layer_call_and_return_conditional_losses_1790056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:'#
!
_user_specified_name	1791841:'#
!
_user_specified_name	1791843
ѓУ
	
while_body_1790756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ќ @
1while_lstm_cell_split_1_readvariableop_resource_0:	 =
)while_lstm_cell_readvariableop_resource_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ќ >
/while_lstm_cell_split_1_readvariableop_resource:	 ;
'while_lstm_cell_readvariableop_resource:
Ш Ђwhile/lstm_cell/ReadVariableOpЂ while/lstm_cell/ReadVariableOp_1Ђ while/lstm_cell/ReadVariableOp_2Ђ while/lstm_cell/ReadVariableOp_3Ђ$while/lstm_cell/split/ReadVariableOpЂ&while/lstm_cell/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯd
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ј
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќb
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ё
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯ­
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>з
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    д
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *OьФ?Ѕ
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33Г>н
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџќf
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџќr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::эЯf
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ў
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ї
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::эЯБ
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>н
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШf
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    м
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЊ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќЎ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџќa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ќ *
dtype0ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ш
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_split
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Н
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШj
while/lstm_cell/ReluReluwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_mask
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
]
а
#__inference__traced_restore_1792337
file_prefix3
 assignvariableop_dense_94_kernel:	Ш.
 assignvariableop_1_dense_94_bias:?
+assignvariableop_2_lstm_94_lstm_cell_kernel:
ќ I
5assignvariableop_3_lstm_94_lstm_cell_recurrent_kernel:
Ш 8
)assignvariableop_4_lstm_94_lstm_cell_bias:	 &
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: F
2assignvariableop_7_adam_m_lstm_94_lstm_cell_kernel:
ќ F
2assignvariableop_8_adam_v_lstm_94_lstm_cell_kernel:
ќ P
<assignvariableop_9_adam_m_lstm_94_lstm_cell_recurrent_kernel:
Ш Q
=assignvariableop_10_adam_v_lstm_94_lstm_cell_recurrent_kernel:
Ш @
1assignvariableop_11_adam_m_lstm_94_lstm_cell_bias:	 @
1assignvariableop_12_adam_v_lstm_94_lstm_cell_bias:	 =
*assignvariableop_13_adam_m_dense_94_kernel:	Ш=
*assignvariableop_14_adam_v_dense_94_kernel:	Ш6
(assignvariableop_15_adam_m_dense_94_bias:6
(assignvariableop_16_adam_v_dense_94_bias:#
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
:Г
AssignVariableOpAssignVariableOp assignvariableop_dense_94_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_94_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp+assignvariableop_2_lstm_94_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_3AssignVariableOp5assignvariableop_3_lstm_94_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_4AssignVariableOp)assignvariableop_4_lstm_94_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
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
:Щ
AssignVariableOp_7AssignVariableOp2assignvariableop_7_adam_m_lstm_94_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_8AssignVariableOp2assignvariableop_8_adam_v_lstm_94_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_9AssignVariableOp<assignvariableop_9_adam_m_lstm_94_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_10AssignVariableOp=assignvariableop_10_adam_v_lstm_94_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_11AssignVariableOp1assignvariableop_11_adam_m_lstm_94_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_12AssignVariableOp1assignvariableop_12_adam_v_lstm_94_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_m_dense_94_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_v_dense_94_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_dense_94_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_dense_94_biasIdentity_16:output:0"/device:CPU:0*&
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
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_94/kernel:-)
'
_user_specified_namedense_94/bias:84
2
_user_specified_namelstm_94/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_94/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_94/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_94/lstm_cell/kernel:?	;
9
_user_specified_name!Adam/v/lstm_94/lstm_cell/kernel:I
E
C
_user_specified_name+)Adam/m/lstm_94/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_94/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_94/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_94/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_94/kernel:62
0
_user_specified_nameAdam/v/dense_94/kernel:40
.
_user_specified_nameAdam/m/dense_94/bias:40
.
_user_specified_nameAdam/v/dense_94/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
НІ

(sequential_94_lstm_94_while_body_1788938H
Dsequential_94_lstm_94_while_sequential_94_lstm_94_while_loop_counterN
Jsequential_94_lstm_94_while_sequential_94_lstm_94_while_maximum_iterations+
'sequential_94_lstm_94_while_placeholder-
)sequential_94_lstm_94_while_placeholder_1-
)sequential_94_lstm_94_while_placeholder_2-
)sequential_94_lstm_94_while_placeholder_3G
Csequential_94_lstm_94_while_sequential_94_lstm_94_strided_slice_1_0
sequential_94_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_94_tensorarrayunstack_tensorlistfromtensor_0Y
Esequential_94_lstm_94_while_lstm_cell_split_readvariableop_resource_0:
ќ V
Gsequential_94_lstm_94_while_lstm_cell_split_1_readvariableop_resource_0:	 S
?sequential_94_lstm_94_while_lstm_cell_readvariableop_resource_0:
Ш (
$sequential_94_lstm_94_while_identity*
&sequential_94_lstm_94_while_identity_1*
&sequential_94_lstm_94_while_identity_2*
&sequential_94_lstm_94_while_identity_3*
&sequential_94_lstm_94_while_identity_4*
&sequential_94_lstm_94_while_identity_5E
Asequential_94_lstm_94_while_sequential_94_lstm_94_strided_slice_1
}sequential_94_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_94_tensorarrayunstack_tensorlistfromtensorW
Csequential_94_lstm_94_while_lstm_cell_split_readvariableop_resource:
ќ T
Esequential_94_lstm_94_while_lstm_cell_split_1_readvariableop_resource:	 Q
=sequential_94_lstm_94_while_lstm_cell_readvariableop_resource:
Ш Ђ4sequential_94/lstm_94/while/lstm_cell/ReadVariableOpЂ6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_1Ђ6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_2Ђ6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_3Ђ:sequential_94/lstm_94/while/lstm_cell/split/ReadVariableOpЂ<sequential_94/lstm_94/while/lstm_cell/split_1/ReadVariableOp
Msequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   
?sequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_94_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_94_tensorarrayunstack_tensorlistfromtensor_0'sequential_94_lstm_94_while_placeholderVsequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0Й
5sequential_94/lstm_94/while/lstm_cell/ones_like/ShapeShapeFsequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::эЯz
5sequential_94/lstm_94/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ъ
/sequential_94/lstm_94/while/lstm_cell/ones_likeFill>sequential_94/lstm_94/while/lstm_cell/ones_like/Shape:output:0>sequential_94/lstm_94/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
7sequential_94/lstm_94/while/lstm_cell/ones_like_1/ShapeShape)sequential_94_lstm_94_while_placeholder_2*
T0*
_output_shapes
::эЯ|
7sequential_94/lstm_94/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?№
1sequential_94/lstm_94/while/lstm_cell/ones_like_1Fill@sequential_94/lstm_94/while/lstm_cell/ones_like_1/Shape:output:0@sequential_94/lstm_94/while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШх
)sequential_94/lstm_94/while/lstm_cell/mulMulFsequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_94/lstm_94/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќч
+sequential_94/lstm_94/while/lstm_cell/mul_1MulFsequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_94/lstm_94/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќч
+sequential_94/lstm_94/while/lstm_cell/mul_2MulFsequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_94/lstm_94/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќч
+sequential_94/lstm_94/while/lstm_cell/mul_3MulFsequential_94/lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_94/lstm_94/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќw
5sequential_94/lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
:sequential_94/lstm_94/while/lstm_cell/split/ReadVariableOpReadVariableOpEsequential_94_lstm_94_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ќ *
dtype0
+sequential_94/lstm_94/while/lstm_cell/splitSplit>sequential_94/lstm_94/while/lstm_cell/split/split_dim:output:0Bsequential_94/lstm_94/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitЮ
,sequential_94/lstm_94/while/lstm_cell/MatMulMatMul-sequential_94/lstm_94/while/lstm_cell/mul:z:04sequential_94/lstm_94/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШв
.sequential_94/lstm_94/while/lstm_cell/MatMul_1MatMul/sequential_94/lstm_94/while/lstm_cell/mul_1:z:04sequential_94/lstm_94/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШв
.sequential_94/lstm_94/while/lstm_cell/MatMul_2MatMul/sequential_94/lstm_94/while/lstm_cell/mul_2:z:04sequential_94/lstm_94/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШв
.sequential_94/lstm_94/while/lstm_cell/MatMul_3MatMul/sequential_94/lstm_94/while/lstm_cell/mul_3:z:04sequential_94/lstm_94/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШy
7sequential_94/lstm_94/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : С
<sequential_94/lstm_94/while/lstm_cell/split_1/ReadVariableOpReadVariableOpGsequential_94_lstm_94_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
: *
dtype0
-sequential_94/lstm_94/while/lstm_cell/split_1Split@sequential_94/lstm_94/while/lstm_cell/split_1/split_dim:output:0Dsequential_94/lstm_94/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_splitл
-sequential_94/lstm_94/while/lstm_cell/BiasAddBiasAdd6sequential_94/lstm_94/while/lstm_cell/MatMul:product:06sequential_94/lstm_94/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШп
/sequential_94/lstm_94/while/lstm_cell/BiasAdd_1BiasAdd8sequential_94/lstm_94/while/lstm_cell/MatMul_1:product:06sequential_94/lstm_94/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШп
/sequential_94/lstm_94/while/lstm_cell/BiasAdd_2BiasAdd8sequential_94/lstm_94/while/lstm_cell/MatMul_2:product:06sequential_94/lstm_94/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШп
/sequential_94/lstm_94/while/lstm_cell/BiasAdd_3BiasAdd8sequential_94/lstm_94/while/lstm_cell/MatMul_3:product:06sequential_94/lstm_94/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШЬ
+sequential_94/lstm_94/while/lstm_cell/mul_4Mul)sequential_94_lstm_94_while_placeholder_2:sequential_94/lstm_94/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЬ
+sequential_94/lstm_94/while/lstm_cell/mul_5Mul)sequential_94_lstm_94_while_placeholder_2:sequential_94/lstm_94/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЬ
+sequential_94/lstm_94/while/lstm_cell/mul_6Mul)sequential_94_lstm_94_while_placeholder_2:sequential_94/lstm_94/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЬ
+sequential_94/lstm_94/while/lstm_cell/mul_7Mul)sequential_94_lstm_94_while_placeholder_2:sequential_94/lstm_94/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЖ
4sequential_94/lstm_94/while/lstm_cell/ReadVariableOpReadVariableOp?sequential_94_lstm_94_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0
9sequential_94/lstm_94/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
;sequential_94/lstm_94/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   
;sequential_94/lstm_94/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ћ
3sequential_94/lstm_94/while/lstm_cell/strided_sliceStridedSlice<sequential_94/lstm_94/while/lstm_cell/ReadVariableOp:value:0Bsequential_94/lstm_94/while/lstm_cell/strided_slice/stack:output:0Dsequential_94/lstm_94/while/lstm_cell/strided_slice/stack_1:output:0Dsequential_94/lstm_94/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskк
.sequential_94/lstm_94/while/lstm_cell/MatMul_4MatMul/sequential_94/lstm_94/while/lstm_cell/mul_4:z:0<sequential_94/lstm_94/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШз
)sequential_94/lstm_94/while/lstm_cell/addAddV26sequential_94/lstm_94/while/lstm_cell/BiasAdd:output:08sequential_94/lstm_94/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
-sequential_94/lstm_94/while/lstm_cell/SigmoidSigmoid-sequential_94/lstm_94/while/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШИ
6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_1ReadVariableOp?sequential_94_lstm_94_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0
;sequential_94/lstm_94/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   
=sequential_94/lstm_94/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
=sequential_94/lstm_94/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
5sequential_94/lstm_94/while/lstm_cell/strided_slice_1StridedSlice>sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_1:value:0Dsequential_94/lstm_94/while/lstm_cell/strided_slice_1/stack:output:0Fsequential_94/lstm_94/while/lstm_cell/strided_slice_1/stack_1:output:0Fsequential_94/lstm_94/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskм
.sequential_94/lstm_94/while/lstm_cell/MatMul_5MatMul/sequential_94/lstm_94/while/lstm_cell/mul_5:z:0>sequential_94/lstm_94/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШл
+sequential_94/lstm_94/while/lstm_cell/add_1AddV28sequential_94/lstm_94/while/lstm_cell/BiasAdd_1:output:08sequential_94/lstm_94/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
/sequential_94/lstm_94/while/lstm_cell/Sigmoid_1Sigmoid/sequential_94/lstm_94/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
+sequential_94/lstm_94/while/lstm_cell/mul_8Mul3sequential_94/lstm_94/while/lstm_cell/Sigmoid_1:y:0)sequential_94_lstm_94_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШИ
6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_2ReadVariableOp?sequential_94_lstm_94_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0
;sequential_94/lstm_94/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      
=sequential_94/lstm_94/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  
=sequential_94/lstm_94/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
5sequential_94/lstm_94/while/lstm_cell/strided_slice_2StridedSlice>sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_2:value:0Dsequential_94/lstm_94/while/lstm_cell/strided_slice_2/stack:output:0Fsequential_94/lstm_94/while/lstm_cell/strided_slice_2/stack_1:output:0Fsequential_94/lstm_94/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskм
.sequential_94/lstm_94/while/lstm_cell/MatMul_6MatMul/sequential_94/lstm_94/while/lstm_cell/mul_6:z:0>sequential_94/lstm_94/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШл
+sequential_94/lstm_94/while/lstm_cell/add_2AddV28sequential_94/lstm_94/while/lstm_cell/BiasAdd_2:output:08sequential_94/lstm_94/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*sequential_94/lstm_94/while/lstm_cell/ReluRelu/sequential_94/lstm_94/while/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШв
+sequential_94/lstm_94/while/lstm_cell/mul_9Mul1sequential_94/lstm_94/while/lstm_cell/Sigmoid:y:08sequential_94/lstm_94/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШЩ
+sequential_94/lstm_94/while/lstm_cell/add_3AddV2/sequential_94/lstm_94/while/lstm_cell/mul_8:z:0/sequential_94/lstm_94/while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШИ
6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_3ReadVariableOp?sequential_94_lstm_94_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0
;sequential_94/lstm_94/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  
=sequential_94/lstm_94/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
=sequential_94/lstm_94/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
5sequential_94/lstm_94/while/lstm_cell/strided_slice_3StridedSlice>sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_3:value:0Dsequential_94/lstm_94/while/lstm_cell/strided_slice_3/stack:output:0Fsequential_94/lstm_94/while/lstm_cell/strided_slice_3/stack_1:output:0Fsequential_94/lstm_94/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskм
.sequential_94/lstm_94/while/lstm_cell/MatMul_7MatMul/sequential_94/lstm_94/while/lstm_cell/mul_7:z:0>sequential_94/lstm_94/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШл
+sequential_94/lstm_94/while/lstm_cell/add_4AddV28sequential_94/lstm_94/while/lstm_cell/BiasAdd_3:output:08sequential_94/lstm_94/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
/sequential_94/lstm_94/while/lstm_cell/Sigmoid_2Sigmoid/sequential_94/lstm_94/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,sequential_94/lstm_94/while/lstm_cell/Relu_1Relu/sequential_94/lstm_94/while/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШз
,sequential_94/lstm_94/while/lstm_cell/mul_10Mul3sequential_94/lstm_94/while/lstm_cell/Sigmoid_2:y:0:sequential_94/lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
Fsequential_94/lstm_94/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : У
@sequential_94/lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_94_lstm_94_while_placeholder_1Osequential_94/lstm_94/while/TensorArrayV2Write/TensorListSetItem/index:output:00sequential_94/lstm_94/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential_94/lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_94/lstm_94/while/addAddV2'sequential_94_lstm_94_while_placeholder*sequential_94/lstm_94/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_94/lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential_94/lstm_94/while/add_1AddV2Dsequential_94_lstm_94_while_sequential_94_lstm_94_while_loop_counter,sequential_94/lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_94/lstm_94/while/IdentityIdentity%sequential_94/lstm_94/while/add_1:z:0!^sequential_94/lstm_94/while/NoOp*
T0*
_output_shapes
: Т
&sequential_94/lstm_94/while/Identity_1IdentityJsequential_94_lstm_94_while_sequential_94_lstm_94_while_maximum_iterations!^sequential_94/lstm_94/while/NoOp*
T0*
_output_shapes
: 
&sequential_94/lstm_94/while/Identity_2Identity#sequential_94/lstm_94/while/add:z:0!^sequential_94/lstm_94/while/NoOp*
T0*
_output_shapes
: Ш
&sequential_94/lstm_94/while/Identity_3IdentityPsequential_94/lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_94/lstm_94/while/NoOp*
T0*
_output_shapes
: К
&sequential_94/lstm_94/while/Identity_4Identity0sequential_94/lstm_94/while/lstm_cell/mul_10:z:0!^sequential_94/lstm_94/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЙ
&sequential_94/lstm_94/while/Identity_5Identity/sequential_94/lstm_94/while/lstm_cell/add_3:z:0!^sequential_94/lstm_94/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
 sequential_94/lstm_94/while/NoOpNoOp5^sequential_94/lstm_94/while/lstm_cell/ReadVariableOp7^sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_17^sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_27^sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_3;^sequential_94/lstm_94/while/lstm_cell/split/ReadVariableOp=^sequential_94/lstm_94/while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "U
$sequential_94_lstm_94_while_identity-sequential_94/lstm_94/while/Identity:output:0"Y
&sequential_94_lstm_94_while_identity_1/sequential_94/lstm_94/while/Identity_1:output:0"Y
&sequential_94_lstm_94_while_identity_2/sequential_94/lstm_94/while/Identity_2:output:0"Y
&sequential_94_lstm_94_while_identity_3/sequential_94/lstm_94/while/Identity_3:output:0"Y
&sequential_94_lstm_94_while_identity_4/sequential_94/lstm_94/while/Identity_4:output:0"Y
&sequential_94_lstm_94_while_identity_5/sequential_94/lstm_94/while/Identity_5:output:0"
=sequential_94_lstm_94_while_lstm_cell_readvariableop_resource?sequential_94_lstm_94_while_lstm_cell_readvariableop_resource_0"
Esequential_94_lstm_94_while_lstm_cell_split_1_readvariableop_resourceGsequential_94_lstm_94_while_lstm_cell_split_1_readvariableop_resource_0"
Csequential_94_lstm_94_while_lstm_cell_split_readvariableop_resourceEsequential_94_lstm_94_while_lstm_cell_split_readvariableop_resource_0"
Asequential_94_lstm_94_while_sequential_94_lstm_94_strided_slice_1Csequential_94_lstm_94_while_sequential_94_lstm_94_strided_slice_1_0"
}sequential_94_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_94_tensorarrayunstack_tensorlistfromtensorsequential_94_lstm_94_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2l
4sequential_94/lstm_94/while/lstm_cell/ReadVariableOp4sequential_94/lstm_94/while/lstm_cell/ReadVariableOp2p
6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_16sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_12p
6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_26sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_22p
6sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_36sequential_94/lstm_94/while/lstm_cell/ReadVariableOp_32x
:sequential_94/lstm_94/while/lstm_cell/split/ReadVariableOp:sequential_94/lstm_94/while/lstm_cell/split/ReadVariableOp2|
<sequential_94/lstm_94/while/lstm_cell/split_1/ReadVariableOp<sequential_94/lstm_94/while/lstm_cell/split_1/ReadVariableOp:` \

_output_shapes
: 
B
_user_specified_name*(sequential_94/lstm_94/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_94/lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:]Y

_output_shapes
: 
?
_user_specified_name'%sequential_94/lstm_94/strided_slice_1:uq

_output_shapes
: 
W
_user_specified_name?=sequential_94/lstm_94/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ђ

ќ
/__inference_sequential_94_layer_call_fn_1790378
lstm_94_input
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
	unknown_2:	Ш
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_94_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ: *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790346o
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
":џџџџџџџџџќ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:џџџџџџџџџќ
'
_user_specified_namelstm_94_input:'#
!
_user_specified_name	1790365:'#
!
_user_specified_name	1790367:'#
!
_user_specified_name	1790369:'#
!
_user_specified_name	1790371:'#
!
_user_specified_name	1790373
э	
ђ
%__inference_signature_wrapper_1790457
lstm_94_input
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
	unknown_2:	Ш
	unknown_3:
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCalllstm_94_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1789089o
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
":џџџџџџџџџќ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:џџџџџџџџџќ
'
_user_specified_namelstm_94_input:'#
!
_user_specified_name	1790445:'#
!
_user_specified_name	1790447:'#
!
_user_specified_name	1790449:'#
!
_user_specified_name	1790451:'#
!
_user_specified_name	1790453
Ы	
Ш
while_cond_1791381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1791381___redundant_placeholder05
1while_while_cond_1791381___redundant_placeholder15
1while_while_cond_1791381___redundant_placeholder25
1while_while_cond_1791381___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ы	
Ш
while_cond_1791068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1791068___redundant_placeholder05
1while_while_cond_1791068___redundant_placeholder15
1while_while_cond_1791068___redundant_placeholder25
1while_while_cond_1791068___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ы	
Ш
while_cond_1789495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1789495___redundant_placeholder05
1while_while_cond_1789495___redundant_placeholder15
1while_while_cond_1789495___redundant_placeholder25
1while_while_cond_1789495___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
й
И
)__inference_lstm_94_layer_call_fn_1790519

inputs
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790031p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:'#
!
_user_specified_name	1790511:'#
!
_user_specified_name	1790513:'#
!
_user_specified_name	1790515
Џ
ч
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790582

inputs
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identity

identity_1ЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790319Ї
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU2*0J 8 *9
f4R2
0__inference_lstm_94_activity_regularizer_1789096p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:'#
!
_user_specified_name	1790572:'#
!
_user_specified_name	1790574:'#
!
_user_specified_name	1790576
Ы	
Ш
while_cond_1789290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1789290___redundant_placeholder05
1while_while_cond_1789290___redundant_placeholder15
1while_while_cond_1789290___redundant_placeholder25
1while_while_cond_1789290___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ы	
Ш
while_cond_1790755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1790755___redundant_placeholder05
1while_while_cond_1790755___redundant_placeholder15
1while_while_cond_1790755___redundant_placeholder25
1while_while_cond_1790755___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ё
К
)__inference_lstm_94_layer_call_fn_1790508
inputs_0
unknown:
ќ 
	unknown_0:	 
	unknown_1:
Ш 
identityЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_94_layer_call_and_return_conditional_losses_1789570p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџќ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџќ
"
_user_specified_name
inputs_0:'#
!
_user_specified_name	1790500:'#
!
_user_specified_name	1790502:'#
!
_user_specified_name	1790504
&
й
while_body_1789291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1789315_0:
ќ (
while_lstm_cell_1789317_0:	 -
while_lstm_cell_1789319_0:
Ш 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1789315:
ќ &
while_lstm_cell_1789317:	 +
while_lstm_cell_1789319:
Ш Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџќ*
element_dtype0Ў
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1789315_0while_lstm_cell_1789317_0while_lstm_cell_1789319_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1789276r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1789315while_lstm_cell_1789315_0"4
while_lstm_cell_1789317while_lstm_cell_1789317_0"4
while_lstm_cell_1789319while_lstm_cell_1789319_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:'#
!
_user_specified_name	1789315:'	#
!
_user_specified_name	1789317:'
#
!
_user_specified_name	1789319
ЕM
ђ
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792135

inputs
states_0
states_11
split_readvariableop_resource:
ќ .
split_1_readvariableop_resource:	 +
readvariableop_resource:
Ш 
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3ЂDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЂsplit/ReadVariableOpЂsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::эЯT
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќW
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::эЯV
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШY
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0І
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
: *
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ_
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ_
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_9MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШe
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ў
5lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<й
2lstm_94/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_94/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШу
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџќ:џџџџџџџџџШ:џџџџџџџџџШ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
Dlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_94/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџќ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
гЩ
џ
"__inference__wrapped_model_1789089
lstm_94_inputQ
=sequential_94_lstm_94_lstm_cell_split_readvariableop_resource:
ќ N
?sequential_94_lstm_94_lstm_cell_split_1_readvariableop_resource:	 K
7sequential_94_lstm_94_lstm_cell_readvariableop_resource:
Ш H
5sequential_94_dense_94_matmul_readvariableop_resource:	ШD
6sequential_94_dense_94_biasadd_readvariableop_resource:
identityЂ-sequential_94/dense_94/BiasAdd/ReadVariableOpЂ,sequential_94/dense_94/MatMul/ReadVariableOpЂ.sequential_94/lstm_94/lstm_cell/ReadVariableOpЂ0sequential_94/lstm_94/lstm_cell/ReadVariableOp_1Ђ0sequential_94/lstm_94/lstm_cell/ReadVariableOp_2Ђ0sequential_94/lstm_94/lstm_cell/ReadVariableOp_3Ђ4sequential_94/lstm_94/lstm_cell/split/ReadVariableOpЂ6sequential_94/lstm_94/lstm_cell/split_1/ReadVariableOpЂsequential_94/lstm_94/whilef
sequential_94/lstm_94/ShapeShapelstm_94_input*
T0*
_output_shapes
::эЯs
)sequential_94/lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_94/lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_94/lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_94/lstm_94/strided_sliceStridedSlice$sequential_94/lstm_94/Shape:output:02sequential_94/lstm_94/strided_slice/stack:output:04sequential_94/lstm_94/strided_slice/stack_1:output:04sequential_94/lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_94/lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ШЕ
"sequential_94/lstm_94/zeros/packedPack,sequential_94/lstm_94/strided_slice:output:0-sequential_94/lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_94/lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Џ
sequential_94/lstm_94/zerosFill+sequential_94/lstm_94/zeros/packed:output:0*sequential_94/lstm_94/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
&sequential_94/lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ШЙ
$sequential_94/lstm_94/zeros_1/packedPack,sequential_94/lstm_94/strided_slice:output:0/sequential_94/lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_94/lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
sequential_94/lstm_94/zeros_1Fill-sequential_94/lstm_94/zeros_1/packed:output:0,sequential_94/lstm_94/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
$sequential_94/lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
sequential_94/lstm_94/transpose	Transposelstm_94_input-sequential_94/lstm_94/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџќ~
sequential_94/lstm_94/Shape_1Shape#sequential_94/lstm_94/transpose:y:0*
T0*
_output_shapes
::эЯu
+sequential_94/lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_94/lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_94/lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_94/lstm_94/strided_slice_1StridedSlice&sequential_94/lstm_94/Shape_1:output:04sequential_94/lstm_94/strided_slice_1/stack:output:06sequential_94/lstm_94/strided_slice_1/stack_1:output:06sequential_94/lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_94/lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential_94/lstm_94/TensorArrayV2TensorListReserve:sequential_94/lstm_94/TensorArrayV2/element_shape:output:0.sequential_94/lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential_94/lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџќ   Ђ
=sequential_94/lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_94/lstm_94/transpose:y:0Tsequential_94/lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential_94/lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_94/lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_94/lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
%sequential_94/lstm_94/strided_slice_2StridedSlice#sequential_94/lstm_94/transpose:y:04sequential_94/lstm_94/strided_slice_2/stack:output:06sequential_94/lstm_94/strided_slice_2/stack_1:output:06sequential_94/lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџќ*
shrink_axis_mask
/sequential_94/lstm_94/lstm_cell/ones_like/ShapeShape.sequential_94/lstm_94/strided_slice_2:output:0*
T0*
_output_shapes
::эЯt
/sequential_94/lstm_94/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?и
)sequential_94/lstm_94/lstm_cell/ones_likeFill8sequential_94/lstm_94/lstm_cell/ones_like/Shape:output:08sequential_94/lstm_94/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџќ
1sequential_94/lstm_94/lstm_cell/ones_like_1/ShapeShape$sequential_94/lstm_94/zeros:output:0*
T0*
_output_shapes
::эЯv
1sequential_94/lstm_94/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?о
+sequential_94/lstm_94/lstm_cell/ones_like_1Fill:sequential_94/lstm_94/lstm_cell/ones_like_1/Shape:output:0:sequential_94/lstm_94/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШС
#sequential_94/lstm_94/lstm_cell/mulMul.sequential_94/lstm_94/strided_slice_2:output:02sequential_94/lstm_94/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќУ
%sequential_94/lstm_94/lstm_cell/mul_1Mul.sequential_94/lstm_94/strided_slice_2:output:02sequential_94/lstm_94/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќУ
%sequential_94/lstm_94/lstm_cell/mul_2Mul.sequential_94/lstm_94/strided_slice_2:output:02sequential_94/lstm_94/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќУ
%sequential_94/lstm_94/lstm_cell/mul_3Mul.sequential_94/lstm_94/strided_slice_2:output:02sequential_94/lstm_94/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:џџџџџџџџџќq
/sequential_94/lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
4sequential_94/lstm_94/lstm_cell/split/ReadVariableOpReadVariableOp=sequential_94_lstm_94_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ќ *
dtype0
%sequential_94/lstm_94/lstm_cell/splitSplit8sequential_94/lstm_94/lstm_cell/split/split_dim:output:0<sequential_94/lstm_94/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
ќШ:
ќШ:
ќШ:
ќШ*
	num_splitМ
&sequential_94/lstm_94/lstm_cell/MatMulMatMul'sequential_94/lstm_94/lstm_cell/mul:z:0.sequential_94/lstm_94/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШР
(sequential_94/lstm_94/lstm_cell/MatMul_1MatMul)sequential_94/lstm_94/lstm_cell/mul_1:z:0.sequential_94/lstm_94/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШР
(sequential_94/lstm_94/lstm_cell/MatMul_2MatMul)sequential_94/lstm_94/lstm_cell/mul_2:z:0.sequential_94/lstm_94/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШР
(sequential_94/lstm_94/lstm_cell/MatMul_3MatMul)sequential_94/lstm_94/lstm_cell/mul_3:z:0.sequential_94/lstm_94/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШs
1sequential_94/lstm_94/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Г
6sequential_94/lstm_94/lstm_cell/split_1/ReadVariableOpReadVariableOp?sequential_94_lstm_94_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
: *
dtype0ј
'sequential_94/lstm_94/lstm_cell/split_1Split:sequential_94/lstm_94/lstm_cell/split_1/split_dim:output:0>sequential_94/lstm_94/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ш:Ш:Ш:Ш*
	num_splitЩ
'sequential_94/lstm_94/lstm_cell/BiasAddBiasAdd0sequential_94/lstm_94/lstm_cell/MatMul:product:00sequential_94/lstm_94/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЭ
)sequential_94/lstm_94/lstm_cell/BiasAdd_1BiasAdd2sequential_94/lstm_94/lstm_cell/MatMul_1:product:00sequential_94/lstm_94/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:џџџџџџџџџШЭ
)sequential_94/lstm_94/lstm_cell/BiasAdd_2BiasAdd2sequential_94/lstm_94/lstm_cell/MatMul_2:product:00sequential_94/lstm_94/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:џџџџџџџџџШЭ
)sequential_94/lstm_94/lstm_cell/BiasAdd_3BiasAdd2sequential_94/lstm_94/lstm_cell/MatMul_3:product:00sequential_94/lstm_94/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:џџџџџџџџџШЛ
%sequential_94/lstm_94/lstm_cell/mul_4Mul$sequential_94/lstm_94/zeros:output:04sequential_94/lstm_94/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЛ
%sequential_94/lstm_94/lstm_cell/mul_5Mul$sequential_94/lstm_94/zeros:output:04sequential_94/lstm_94/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЛ
%sequential_94/lstm_94/lstm_cell/mul_6Mul$sequential_94/lstm_94/zeros:output:04sequential_94/lstm_94/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЛ
%sequential_94/lstm_94/lstm_cell/mul_7Mul$sequential_94/lstm_94/zeros:output:04sequential_94/lstm_94/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЈ
.sequential_94/lstm_94/lstm_cell/ReadVariableOpReadVariableOp7sequential_94_lstm_94_lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
3sequential_94/lstm_94/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
5sequential_94/lstm_94/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ш   
5sequential_94/lstm_94/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
-sequential_94/lstm_94/lstm_cell/strided_sliceStridedSlice6sequential_94/lstm_94/lstm_cell/ReadVariableOp:value:0<sequential_94/lstm_94/lstm_cell/strided_slice/stack:output:0>sequential_94/lstm_94/lstm_cell/strided_slice/stack_1:output:0>sequential_94/lstm_94/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskШ
(sequential_94/lstm_94/lstm_cell/MatMul_4MatMul)sequential_94/lstm_94/lstm_cell/mul_4:z:06sequential_94/lstm_94/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
#sequential_94/lstm_94/lstm_cell/addAddV20sequential_94/lstm_94/lstm_cell/BiasAdd:output:02sequential_94/lstm_94/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
'sequential_94/lstm_94/lstm_cell/SigmoidSigmoid'sequential_94/lstm_94/lstm_cell/add:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЊ
0sequential_94/lstm_94/lstm_cell/ReadVariableOp_1ReadVariableOp7sequential_94_lstm_94_lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
5sequential_94/lstm_94/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ш   
7sequential_94/lstm_94/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
7sequential_94/lstm_94/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_94/lstm_94/lstm_cell/strided_slice_1StridedSlice8sequential_94/lstm_94/lstm_cell/ReadVariableOp_1:value:0>sequential_94/lstm_94/lstm_cell/strided_slice_1/stack:output:0@sequential_94/lstm_94/lstm_cell/strided_slice_1/stack_1:output:0@sequential_94/lstm_94/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskЪ
(sequential_94/lstm_94/lstm_cell/MatMul_5MatMul)sequential_94/lstm_94/lstm_cell/mul_5:z:08sequential_94/lstm_94/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЩ
%sequential_94/lstm_94/lstm_cell/add_1AddV22sequential_94/lstm_94/lstm_cell/BiasAdd_1:output:02sequential_94/lstm_94/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)sequential_94/lstm_94/lstm_cell/Sigmoid_1Sigmoid)sequential_94/lstm_94/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЖ
%sequential_94/lstm_94/lstm_cell/mul_8Mul-sequential_94/lstm_94/lstm_cell/Sigmoid_1:y:0&sequential_94/lstm_94/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЊ
0sequential_94/lstm_94/lstm_cell/ReadVariableOp_2ReadVariableOp7sequential_94_lstm_94_lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
5sequential_94/lstm_94/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      
7sequential_94/lstm_94/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  
7sequential_94/lstm_94/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_94/lstm_94/lstm_cell/strided_slice_2StridedSlice8sequential_94/lstm_94/lstm_cell/ReadVariableOp_2:value:0>sequential_94/lstm_94/lstm_cell/strided_slice_2/stack:output:0@sequential_94/lstm_94/lstm_cell/strided_slice_2/stack_1:output:0@sequential_94/lstm_94/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskЪ
(sequential_94/lstm_94/lstm_cell/MatMul_6MatMul)sequential_94/lstm_94/lstm_cell/mul_6:z:08sequential_94/lstm_94/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЩ
%sequential_94/lstm_94/lstm_cell/add_2AddV22sequential_94/lstm_94/lstm_cell/BiasAdd_2:output:02sequential_94/lstm_94/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$sequential_94/lstm_94/lstm_cell/ReluRelu)sequential_94/lstm_94/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџШР
%sequential_94/lstm_94/lstm_cell/mul_9Mul+sequential_94/lstm_94/lstm_cell/Sigmoid:y:02sequential_94/lstm_94/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШЗ
%sequential_94/lstm_94/lstm_cell/add_3AddV2)sequential_94/lstm_94/lstm_cell/mul_8:z:0)sequential_94/lstm_94/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЊ
0sequential_94/lstm_94/lstm_cell/ReadVariableOp_3ReadVariableOp7sequential_94_lstm_94_lstm_cell_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
5sequential_94/lstm_94/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  
7sequential_94/lstm_94/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7sequential_94/lstm_94/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_94/lstm_94/lstm_cell/strided_slice_3StridedSlice8sequential_94/lstm_94/lstm_cell/ReadVariableOp_3:value:0>sequential_94/lstm_94/lstm_cell/strided_slice_3/stack:output:0@sequential_94/lstm_94/lstm_cell/strided_slice_3/stack_1:output:0@sequential_94/lstm_94/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ШШ*

begin_mask*
end_maskЪ
(sequential_94/lstm_94/lstm_cell/MatMul_7MatMul)sequential_94/lstm_94/lstm_cell/mul_7:z:08sequential_94/lstm_94/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЩ
%sequential_94/lstm_94/lstm_cell/add_4AddV22sequential_94/lstm_94/lstm_cell/BiasAdd_3:output:02sequential_94/lstm_94/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)sequential_94/lstm_94/lstm_cell/Sigmoid_2Sigmoid)sequential_94/lstm_94/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
&sequential_94/lstm_94/lstm_cell/Relu_1Relu)sequential_94/lstm_94/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
&sequential_94/lstm_94/lstm_cell/mul_10Mul-sequential_94/lstm_94/lstm_cell/Sigmoid_2:y:04sequential_94/lstm_94/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
3sequential_94/lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   t
2sequential_94/lstm_94/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_94/lstm_94/TensorArrayV2_1TensorListReserve<sequential_94/lstm_94/TensorArrayV2_1/element_shape:output:0;sequential_94/lstm_94/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential_94/lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_94/lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential_94/lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_94/lstm_94/whileWhile1sequential_94/lstm_94/while/loop_counter:output:07sequential_94/lstm_94/while/maximum_iterations:output:0#sequential_94/lstm_94/time:output:0.sequential_94/lstm_94/TensorArrayV2_1:handle:0$sequential_94/lstm_94/zeros:output:0&sequential_94/lstm_94/zeros_1:output:0.sequential_94/lstm_94/strided_slice_1:output:0Msequential_94/lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_94_lstm_94_lstm_cell_split_readvariableop_resource?sequential_94_lstm_94_lstm_cell_split_1_readvariableop_resource7sequential_94_lstm_94_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*4
body,R*
(sequential_94_lstm_94_while_body_1788938*4
cond,R*
(sequential_94_lstm_94_while_cond_1788937*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
Fsequential_94/lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   
8sequential_94/lstm_94/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_94/lstm_94/while:output:3Osequential_94/lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0*
num_elements~
+sequential_94/lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential_94/lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_94/lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
%sequential_94/lstm_94/strided_slice_3StridedSliceAsequential_94/lstm_94/TensorArrayV2Stack/TensorListStack:tensor:04sequential_94/lstm_94/strided_slice_3/stack:output:06sequential_94/lstm_94/strided_slice_3/stack_1:output:06sequential_94/lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask{
&sequential_94/lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
!sequential_94/lstm_94/transpose_1	TransposeAsequential_94/lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_94/lstm_94/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШq
sequential_94/lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
0sequential_94/lstm_94/ActivityRegularizer/L2LossL2Loss.sequential_94/lstm_94/strided_slice_3:output:0*
T0*
_output_shapes
: t
/sequential_94/lstm_94/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Ъ
-sequential_94/lstm_94/ActivityRegularizer/mulMul8sequential_94/lstm_94/ActivityRegularizer/mul/x:output:09sequential_94/lstm_94/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: 
/sequential_94/lstm_94/ActivityRegularizer/ShapeShape.sequential_94/lstm_94/strided_slice_3:output:0*
T0*
_output_shapes
::эЯ
=sequential_94/lstm_94/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?sequential_94/lstm_94/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?sequential_94/lstm_94/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
7sequential_94/lstm_94/ActivityRegularizer/strided_sliceStridedSlice8sequential_94/lstm_94/ActivityRegularizer/Shape:output:0Fsequential_94/lstm_94/ActivityRegularizer/strided_slice/stack:output:0Hsequential_94/lstm_94/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_94/lstm_94/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЈ
.sequential_94/lstm_94/ActivityRegularizer/CastCast@sequential_94/lstm_94/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ф
1sequential_94/lstm_94/ActivityRegularizer/truedivRealDiv1sequential_94/lstm_94/ActivityRegularizer/mul:z:02sequential_94/lstm_94/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Ѓ
,sequential_94/dense_94/MatMul/ReadVariableOpReadVariableOp5sequential_94_dense_94_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0П
sequential_94/dense_94/MatMulMatMul.sequential_94/lstm_94/strided_slice_3:output:04sequential_94/dense_94/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_94/dense_94/BiasAdd/ReadVariableOpReadVariableOp6sequential_94_dense_94_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_94/dense_94/BiasAddBiasAdd'sequential_94/dense_94/MatMul:product:05sequential_94/dense_94/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_94/dense_94/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџй
NoOpNoOp.^sequential_94/dense_94/BiasAdd/ReadVariableOp-^sequential_94/dense_94/MatMul/ReadVariableOp/^sequential_94/lstm_94/lstm_cell/ReadVariableOp1^sequential_94/lstm_94/lstm_cell/ReadVariableOp_11^sequential_94/lstm_94/lstm_cell/ReadVariableOp_21^sequential_94/lstm_94/lstm_cell/ReadVariableOp_35^sequential_94/lstm_94/lstm_cell/split/ReadVariableOp7^sequential_94/lstm_94/lstm_cell/split_1/ReadVariableOp^sequential_94/lstm_94/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџќ: : : : : 2^
-sequential_94/dense_94/BiasAdd/ReadVariableOp-sequential_94/dense_94/BiasAdd/ReadVariableOp2\
,sequential_94/dense_94/MatMul/ReadVariableOp,sequential_94/dense_94/MatMul/ReadVariableOp2`
.sequential_94/lstm_94/lstm_cell/ReadVariableOp.sequential_94/lstm_94/lstm_cell/ReadVariableOp2d
0sequential_94/lstm_94/lstm_cell/ReadVariableOp_10sequential_94/lstm_94/lstm_cell/ReadVariableOp_12d
0sequential_94/lstm_94/lstm_cell/ReadVariableOp_20sequential_94/lstm_94/lstm_cell/ReadVariableOp_22d
0sequential_94/lstm_94/lstm_cell/ReadVariableOp_30sequential_94/lstm_94/lstm_cell/ReadVariableOp_32l
4sequential_94/lstm_94/lstm_cell/split/ReadVariableOp4sequential_94/lstm_94/lstm_cell/split/ReadVariableOp2p
6sequential_94/lstm_94/lstm_cell/split_1/ReadVariableOp6sequential_94/lstm_94/lstm_cell/split_1/ReadVariableOp2:
sequential_94/lstm_94/whilesequential_94/lstm_94/while:[ W
,
_output_shapes
:џџџџџџџџџќ
'
_user_specified_namelstm_94_input:($
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
і

(sequential_94_lstm_94_while_cond_1788937H
Dsequential_94_lstm_94_while_sequential_94_lstm_94_while_loop_counterN
Jsequential_94_lstm_94_while_sequential_94_lstm_94_while_maximum_iterations+
'sequential_94_lstm_94_while_placeholder-
)sequential_94_lstm_94_while_placeholder_1-
)sequential_94_lstm_94_while_placeholder_2-
)sequential_94_lstm_94_while_placeholder_3J
Fsequential_94_lstm_94_while_less_sequential_94_lstm_94_strided_slice_1a
]sequential_94_lstm_94_while_sequential_94_lstm_94_while_cond_1788937___redundant_placeholder0a
]sequential_94_lstm_94_while_sequential_94_lstm_94_while_cond_1788937___redundant_placeholder1a
]sequential_94_lstm_94_while_sequential_94_lstm_94_while_cond_1788937___redundant_placeholder2a
]sequential_94_lstm_94_while_sequential_94_lstm_94_while_cond_1788937___redundant_placeholder3(
$sequential_94_lstm_94_while_identity
К
 sequential_94/lstm_94/while/LessLess'sequential_94_lstm_94_while_placeholderFsequential_94_lstm_94_while_less_sequential_94_lstm_94_strided_slice_1*
T0*
_output_shapes
: w
$sequential_94/lstm_94/while/IdentityIdentity$sequential_94/lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_94_lstm_94_while_identity-sequential_94/lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: :::::` \

_output_shapes
: 
B
_user_specified_name*(sequential_94/lstm_94/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_94/lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:]Y

_output_shapes
: 
?
_user_specified_name'%sequential_94/lstm_94/strided_slice_1:

_output_shapes
:"ЪL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*М
serving_defaultЈ
L
lstm_94_input;
serving_default_lstm_94_input:0џџџџџџџџџќ<
dense_940
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:§К
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
б
%trace_0
&trace_12
/__inference_sequential_94_layer_call_fn_1790362
/__inference_sequential_94_layer_call_fn_1790378Е
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

'trace_0
(trace_12а
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790068
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790346Е
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
гBа
"__inference__wrapped_model_1789089lstm_94_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
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
ж

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
8activity_regularizer_fn
*&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ф
:trace_0
;trace_1
<trace_2
=trace_32љ
)__inference_lstm_94_layer_call_fn_1790497
)__inference_lstm_94_layer_call_fn_1790508
)__inference_lstm_94_layer_call_fn_1790519
)__inference_lstm_94_layer_call_fn_1790530Ъ
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
 z:trace_0z;trace_1z<trace_2z=trace_3
р
>trace_0
?trace_1
@trace_2
Atrace_32ѕ
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790543
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790556
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790569
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790582Ъ
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
 z>trace_0z?trace_1z@trace_2zAtrace_3
"
_generic_user_object
ј
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H_random_generator
I
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
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ф
Otrace_02Ч
*__inference_dense_94_layer_call_fn_1791847
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
 zOtrace_0
џ
Ptrace_02т
E__inference_dense_94_layer_call_and_return_conditional_losses_1791857
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
 zPtrace_0
": 	Ш2dense_94/kernel
:2dense_94/bias
,:*
ќ 2lstm_94/lstm_cell/kernel
6:4
Ш 2"lstm_94/lstm_cell/recurrent_kernel
%:# 2lstm_94/lstm_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§Bњ
/__inference_sequential_94_layer_call_fn_1790362lstm_94_input"Е
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
 
§Bњ
/__inference_sequential_94_layer_call_fn_1790378lstm_94_input"Е
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
 
B
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790068lstm_94_input"Е
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
 
B
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790346lstm_94_input"Е
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
 
n
*0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
R0
T1
V2
X3
Z4"
trackable_list_wrapper
C
S0
U1
W2
Y3
[4"
trackable_list_wrapper
ѕ
\trace_0
]trace_1
^trace_2
_trace_3
`trace_42№
$__inference__update_step_xla_1790466
$__inference__update_step_xla_1790471
$__inference__update_step_xla_1790476
$__inference__update_step_xla_1790481
$__inference__update_step_xla_1790486Џ
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
 0z\trace_0z]trace_1z^trace_2z_trace_3z`trace_4
вBЯ
%__inference_signature_wrapper_1790457lstm_94_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ю
atrace_02Б
__inference_loss_fn_0_1791865
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
annotationsЊ *Ђ zatrace_0
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
ё
btrace_02д
0__inference_lstm_94_activity_regularizer_1789096
В
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	zbtrace_0
а
ctrace_0
dtrace_1
etrace_2
ftrace_32х
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790959
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791208
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791585
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791834Ъ
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
 zctrace_0zdtrace_1zetrace_2zftrace_3
B
)__inference_lstm_94_layer_call_fn_1790497inputs_0"Ъ
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
 
B
)__inference_lstm_94_layer_call_fn_1790508inputs_0"Ъ
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
 
B
)__inference_lstm_94_layer_call_fn_1790519inputs"Ъ
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
 
B
)__inference_lstm_94_layer_call_fn_1790530inputs"Ъ
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
 
ІBЃ
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790543inputs_0"Ъ
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
 
ІBЃ
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790556inputs_0"Ъ
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
 
ЄBЁ
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790569inputs"Ъ
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
 
ЄBЁ
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790582inputs"Ъ
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
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
Ч
ltrace_0
mtrace_12
+__inference_lstm_cell_layer_call_fn_1791882
+__inference_lstm_cell_layer_call_fn_1791899Г
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
 zltrace_0zmtrace_1
§
ntrace_0
otrace_12Ц
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792049
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792135Г
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
 zntrace_0zotrace_1
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
дBб
*__inference_dense_94_layer_call_fn_1791847inputs"
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
яBь
E__inference_dense_94_layer_call_and_return_conditional_losses_1791857inputs"
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
p	variables
q	keras_api
	rtotal
	scount"
_tf_keras_metric
1:/
ќ 2Adam/m/lstm_94/lstm_cell/kernel
1:/
ќ 2Adam/v/lstm_94/lstm_cell/kernel
;:9
Ш 2)Adam/m/lstm_94/lstm_cell/recurrent_kernel
;:9
Ш 2)Adam/v/lstm_94/lstm_cell/recurrent_kernel
*:( 2Adam/m/lstm_94/lstm_cell/bias
*:( 2Adam/v/lstm_94/lstm_cell/bias
':%	Ш2Adam/m/dense_94/kernel
':%	Ш2Adam/v/dense_94/kernel
 :2Adam/m/dense_94/bias
 :2Adam/v/dense_94/bias
яBь
$__inference__update_step_xla_1790466gradientvariable"­
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
яBь
$__inference__update_step_xla_1790471gradientvariable"­
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
яBь
$__inference__update_step_xla_1790476gradientvariable"­
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
яBь
$__inference__update_step_xla_1790481gradientvariable"­
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
яBь
$__inference__update_step_xla_1790486gradientvariable"­
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
ДBБ
__inference_loss_fn_0_1791865"
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
мBй
0__inference_lstm_94_activity_regularizer_1789096x"
В
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	
ЂB
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790959inputs_0"Ъ
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
 
ЂB
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791208inputs_0"Ъ
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
 
 B
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791585inputs"Ъ
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
 
 B
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791834inputs"Ъ
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
 
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
B
+__inference_lstm_cell_layer_call_fn_1791882inputsstates_0states_1"Г
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
B
+__inference_lstm_cell_layer_call_fn_1791899inputsstates_0states_1"Г
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
B
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792049inputsstates_0states_1"Г
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
B
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792135inputsstates_0states_1"Г
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
.
r0
s1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
:  (2total
:  (2count
$__inference__update_step_xla_1790466rlЂi
bЂ_

gradient
ќ 
63	Ђ
њ
ќ 

p
` VariableSpec 
`рЦлУѕк>
Њ "
 
$__inference__update_step_xla_1790471rlЂi
bЂ_

gradient
Ш 
63	Ђ
њ
Ш 

p
` VariableSpec 
`ркУѕк>
Њ "
 
$__inference__update_step_xla_1790476hbЂ_
XЂU

gradient 
1.	Ђ
њ 

p
` VariableSpec 
` ТВл>
Њ "
 
$__inference__update_step_xla_1790481pjЂg
`Ђ]

gradient	Ш
52	Ђ
њ	Ш

p
` VariableSpec 
`РИёык>
Њ "
 
$__inference__update_step_xla_1790486f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`РЧёык>
Њ "
 
"__inference__wrapped_model_1789089y;Ђ8
1Ђ.
,)
lstm_94_inputџџџџџџџџџќ
Њ "3Њ0
.
dense_94"
dense_94џџџџџџџџџ­
E__inference_dense_94_layer_call_and_return_conditional_losses_1791857d0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
*__inference_dense_94_layer_call_fn_1791847Y0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ "!
unknownџџџџџџџџџE
__inference_loss_fn_0_1791865$Ђ

Ђ 
Њ "
unknown c
0__inference_lstm_94_activity_regularizer_1789096/Ђ
Ђ
	
x
Њ "
unknown ш
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790543PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџќ

 
p

 
Њ "BЂ?
# 
tensor_0џџџџџџџџџШ



tensor_1_0 ш
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790556PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџќ

 
p 

 
Њ "BЂ?
# 
tensor_0џџџџџџџџџШ



tensor_1_0 и
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790569@Ђ=
6Ђ3
%"
inputsџџџџџџџџџќ

 
p

 
Њ "BЂ?
# 
tensor_0џџџџџџџџџШ



tensor_1_0 и
H__inference_lstm_94_layer_call_and_return_all_conditional_losses_1790582@Ђ=
6Ђ3
%"
inputsџџџџџџџџџќ

 
p 

 
Њ "BЂ?
# 
tensor_0џџџџџџџџџШ



tensor_1_0 Я
D__inference_lstm_94_layer_call_and_return_conditional_losses_1790959PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџќ

 
p

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџШ
 Я
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791208PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџќ

 
p 

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџШ
 О
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791585v@Ђ=
6Ђ3
%"
inputsџџџџџџџџџќ

 
p

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџШ
 О
D__inference_lstm_94_layer_call_and_return_conditional_losses_1791834v@Ђ=
6Ђ3
%"
inputsџџџџџџџџџќ

 
p 

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџШ
 Ј
)__inference_lstm_94_layer_call_fn_1790497{PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџќ

 
p

 
Њ ""
unknownџџџџџџџџџШЈ
)__inference_lstm_94_layer_call_fn_1790508{PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџќ

 
p 

 
Њ ""
unknownџџџџџџџџџШ
)__inference_lstm_94_layer_call_fn_1790519k@Ђ=
6Ђ3
%"
inputsџџџџџџџџџќ

 
p

 
Њ ""
unknownџџџџџџџџџШ
)__inference_lstm_94_layer_call_fn_1790530k@Ђ=
6Ђ3
%"
inputsџџџџџџџџџќ

 
p 

 
Њ ""
unknownџџџџџџџџџШч
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792049Ђ
yЂv
!
inputsџџџџџџџџџќ
MЂJ
# 
states_0џџџџџџџџџШ
# 
states_1џџџџџџџџџШ
p
Њ "Ђ
Ђ~
%"

tensor_0_0џџџџџџџџџШ
UR
'$
tensor_0_1_0џџџџџџџџџШ
'$
tensor_0_1_1џџџџџџџџџШ
 ч
F__inference_lstm_cell_layer_call_and_return_conditional_losses_1792135Ђ
yЂv
!
inputsџџџџџџџџџќ
MЂJ
# 
states_0џџџџџџџџџШ
# 
states_1џџџџџџџџџШ
p 
Њ "Ђ
Ђ~
%"

tensor_0_0џџџџџџџџџШ
UR
'$
tensor_0_1_0џџџџџџџџџШ
'$
tensor_0_1_1џџџџџџџџџШ
 Й
+__inference_lstm_cell_layer_call_fn_1791882Ђ
yЂv
!
inputsџџџџџџџџџќ
MЂJ
# 
states_0џџџџџџџџџШ
# 
states_1џџџџџџџџџШ
p
Њ "{Ђx
# 
tensor_0џџџџџџџџџШ
QN
%"

tensor_1_0џџџџџџџџџШ
%"

tensor_1_1џџџџџџџџџШЙ
+__inference_lstm_cell_layer_call_fn_1791899Ђ
yЂv
!
inputsџџџџџџџџџќ
MЂJ
# 
states_0џџџџџџџџџШ
# 
states_1џџџџџџџџџШ
p 
Њ "{Ђx
# 
tensor_0џџџџџџџџџШ
QN
%"

tensor_1_0џџџџџџџџџШ
%"

tensor_1_1џџџџџџџџџШо
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790068CЂ@
9Ђ6
,)
lstm_94_inputџџџџџџџџџќ
p

 
Њ "AЂ>
"
tensor_0џџџџџџџџџ



tensor_1_0 о
J__inference_sequential_94_layer_call_and_return_conditional_losses_1790346CЂ@
9Ђ6
,)
lstm_94_inputџџџџџџџџџќ
p 

 
Њ "AЂ>
"
tensor_0џџџџџџџџџ



tensor_1_0 Ђ
/__inference_sequential_94_layer_call_fn_1790362oCЂ@
9Ђ6
,)
lstm_94_inputџџџџџџџџџќ
p

 
Њ "!
unknownџџџџџџџџџЂ
/__inference_sequential_94_layer_call_fn_1790378oCЂ@
9Ђ6
,)
lstm_94_inputџџџџџџџџџќ
p 

 
Њ "!
unknownџџџџџџџџџД
%__inference_signature_wrapper_1790457LЂI
Ђ 
BЊ?
=
lstm_94_input,)
lstm_94_inputџџџџџџџџџќ"3Њ0
.
dense_94"
dense_94џџџџџџџџџ