	
б
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
 "serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8ё
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

Adam/v/dense_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/dense_107/bias
{
)Adam/v/dense_107/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_107/bias*
_output_shapes
:*
dtype0

Adam/m/dense_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/dense_107/bias
{
)Adam/m/dense_107/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_107/bias*
_output_shapes
:*
dtype0

Adam/v/dense_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/v/dense_107/kernel

+Adam/v/dense_107/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_107/kernel*
_output_shapes

:
*
dtype0

Adam/m/dense_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/m/dense_107/kernel

+Adam/m/dense_107/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_107/kernel*
_output_shapes

:
*
dtype0

Adam/v/lstm_107/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*/
shared_name Adam/v/lstm_107/lstm_cell/bias

2Adam/v/lstm_107/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_107/lstm_cell/bias*
_output_shapes
:(*
dtype0

Adam/m/lstm_107/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*/
shared_name Adam/m/lstm_107/lstm_cell/bias

2Adam/m/lstm_107/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_107/lstm_cell/bias*
_output_shapes
:(*
dtype0
А
*Adam/v/lstm_107/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*;
shared_name,*Adam/v/lstm_107/lstm_cell/recurrent_kernel
Љ
>Adam/v/lstm_107/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/lstm_107/lstm_cell/recurrent_kernel*
_output_shapes

:
(*
dtype0
А
*Adam/m/lstm_107/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*;
shared_name,*Adam/m/lstm_107/lstm_cell/recurrent_kernel
Љ
>Adam/m/lstm_107/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/lstm_107/lstm_cell/recurrent_kernel*
_output_shapes

:
(*
dtype0

 Adam/v/lstm_107/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ(*1
shared_name" Adam/v/lstm_107/lstm_cell/kernel

4Adam/v/lstm_107/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp Adam/v/lstm_107/lstm_cell/kernel*
_output_shapes
:	ћ(*
dtype0

 Adam/m/lstm_107/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ(*1
shared_name" Adam/m/lstm_107/lstm_cell/kernel

4Adam/m/lstm_107/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp Adam/m/lstm_107/lstm_cell/kernel*
_output_shapes
:	ћ(*
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

lstm_107/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*(
shared_namelstm_107/lstm_cell/bias

+lstm_107/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_107/lstm_cell/bias*
_output_shapes
:(*
dtype0
Ђ
#lstm_107/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*4
shared_name%#lstm_107/lstm_cell/recurrent_kernel

7lstm_107/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_107/lstm_cell/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_107/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ(**
shared_namelstm_107/lstm_cell/kernel

-lstm_107/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_107/lstm_cell/kernel*
_output_shapes
:	ћ(*
dtype0
t
dense_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_107/bias
m
"dense_107/bias/Read/ReadVariableOpReadVariableOpdense_107/bias*
_output_shapes
:*
dtype0
|
dense_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_107/kernel
u
$dense_107/kernel/Read/ReadVariableOpReadVariableOpdense_107/kernel*
_output_shapes

:
*
dtype0

serving_default_lstm_107_inputPlaceholder*,
_output_shapes
:џџџџџџџџџћ*
dtype0*!
shape:џџџџџџџџџћ
Т
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_107_inputlstm_107/lstm_cell/kernel#lstm_107/lstm_cell/recurrent_kernellstm_107/lstm_cell/biasdense_107/kerneldense_107/bias*
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
%__inference_signature_wrapper_1437338

NoOpNoOp
Є(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*п'
valueе'Bв' BЫ'
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
`Z
VARIABLE_VALUEdense_107/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_107/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_107/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_107/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_107/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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
ke
VARIABLE_VALUE Adam/m/lstm_107/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_107/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/m/lstm_107/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/v/lstm_107/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_107/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_107/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_107/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_107/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_107/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_107/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
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

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_107/kerneldense_107/biaslstm_107/lstm_cell/kernel#lstm_107/lstm_cell/recurrent_kernellstm_107/lstm_cell/bias	iterationlearning_rate Adam/m/lstm_107/lstm_cell/kernel Adam/v/lstm_107/lstm_cell/kernel*Adam/m/lstm_107/lstm_cell/recurrent_kernel*Adam/v/lstm_107/lstm_cell/recurrent_kernelAdam/m/lstm_107/lstm_cell/biasAdam/v/lstm_107/lstm_cell/biasAdam/m/dense_107/kernelAdam/v/dense_107/kernelAdam/m/dense_107/biasAdam/v/dense_107/biastotalcountConst* 
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
 __inference__traced_save_1437758

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_107/kerneldense_107/biaslstm_107/lstm_cell/kernel#lstm_107/lstm_cell/recurrent_kernellstm_107/lstm_cell/bias	iterationlearning_rate Adam/m/lstm_107/lstm_cell/kernel Adam/v/lstm_107/lstm_cell/kernel*Adam/m/lstm_107/lstm_cell/recurrent_kernel*Adam/v/lstm_107/lstm_cell/recurrent_kernelAdam/m/lstm_107/lstm_cell/biasAdam/v/lstm_107/lstm_cell/biasAdam/m/dense_107/kernelAdam/v/dense_107/kernelAdam/m/dense_107/biasAdam/v/dense_107/biastotalcount*
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
#__inference__traced_restore_1437824ъ 
Њb

E__inference_lstm_107_layer_call_and_return_conditional_losses_1437237

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ(<
*lstm_cell_matmul_1_readvariableop_resource:
(7
)lstm_cell_biasadd_readvariableop_resource:(
identityЂ;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
value	B :
s
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
:џџџџџџџџџ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
:џџџџџџџџџ
c
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ([
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ
e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѕ
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
,lstm_107/lstm_cell/kernel/Regularizer/L2LossL2LossClstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+lstm_107/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<О
)lstm_107/lstm_cell/kernel/Regularizer/mulMul4lstm_107/lstm_cell/kernel/Regularizer/mul/x:output:05lstm_107/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
NoOpNoOp<^lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2z
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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


љ
0__inference_sequential_107_layer_call_fn_1437285
lstm_107_input
unknown:	ћ(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_107_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
GPU2*0J 8 *T
fORM
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437255o
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
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:џџџџџџџџџћ
(
_user_specified_namelstm_107_input:'#
!
_user_specified_name	1437273:'#
!
_user_specified_name	1437275:'#
!
_user_specified_name	1437277:'#
!
_user_specified_name	1437279:'#
!
_user_specified_name	1437281
Ќ
ж
"__inference__wrapped_model_1437003
lstm_107_inputS
@sequential_107_lstm_107_lstm_cell_matmul_readvariableop_resource:	ћ(T
Bsequential_107_lstm_107_lstm_cell_matmul_1_readvariableop_resource:
(O
Asequential_107_lstm_107_lstm_cell_biasadd_readvariableop_resource:(I
7sequential_107_dense_107_matmul_readvariableop_resource:
F
8sequential_107_dense_107_biasadd_readvariableop_resource:
identityЂ/sequential_107/dense_107/BiasAdd/ReadVariableOpЂ.sequential_107/dense_107/MatMul/ReadVariableOpЂ8sequential_107/lstm_107/lstm_cell/BiasAdd/ReadVariableOpЂ:sequential_107/lstm_107/lstm_cell/BiasAdd_1/ReadVariableOpЂ:sequential_107/lstm_107/lstm_cell/BiasAdd_2/ReadVariableOpЂ7sequential_107/lstm_107/lstm_cell/MatMul/ReadVariableOpЂ9sequential_107/lstm_107/lstm_cell/MatMul_1/ReadVariableOpЂ9sequential_107/lstm_107/lstm_cell/MatMul_2/ReadVariableOpЂ9sequential_107/lstm_107/lstm_cell/MatMul_3/ReadVariableOpЂ9sequential_107/lstm_107/lstm_cell/MatMul_4/ReadVariableOpЂ9sequential_107/lstm_107/lstm_cell/MatMul_5/ReadVariableOpi
sequential_107/lstm_107/ShapeShapelstm_107_input*
T0*
_output_shapes
::эЯu
+sequential_107/lstm_107/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_107/lstm_107/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_107/lstm_107/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_107/lstm_107/strided_sliceStridedSlice&sequential_107/lstm_107/Shape:output:04sequential_107/lstm_107/strided_slice/stack:output:06sequential_107/lstm_107/strided_slice/stack_1:output:06sequential_107/lstm_107/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_107/lstm_107/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Л
$sequential_107/lstm_107/zeros/packedPack.sequential_107/lstm_107/strided_slice:output:0/sequential_107/lstm_107/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_107/lstm_107/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_107/lstm_107/zerosFill-sequential_107/lstm_107/zeros/packed:output:0,sequential_107/lstm_107/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
(sequential_107/lstm_107/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
П
&sequential_107/lstm_107/zeros_1/packedPack.sequential_107/lstm_107/strided_slice:output:01sequential_107/lstm_107/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_107/lstm_107/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_107/lstm_107/zeros_1Fill/sequential_107/lstm_107/zeros_1/packed:output:0.sequential_107/lstm_107/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
&sequential_107/lstm_107/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          І
!sequential_107/lstm_107/transpose	Transposelstm_107_input/sequential_107/lstm_107/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџћ
sequential_107/lstm_107/Shape_1Shape%sequential_107/lstm_107/transpose:y:0*
T0*
_output_shapes
::эЯw
-sequential_107/lstm_107/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_107/lstm_107/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_107/lstm_107/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_107/lstm_107/strided_slice_1StridedSlice(sequential_107/lstm_107/Shape_1:output:06sequential_107/lstm_107/strided_slice_1/stack:output:08sequential_107/lstm_107/strided_slice_1/stack_1:output:08sequential_107/lstm_107/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЖ
sequential_107/lstm_107/unstackUnpack%sequential_107/lstm_107/transpose:y:0*
T0*P
_output_shapes>
<:џџџџџџџџџћ:џџџџџџџџџћ:џџџџџџџџџћ*	
numЙ
7sequential_107/lstm_107/lstm_cell/MatMul/ReadVariableOpReadVariableOp@sequential_107_lstm_107_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0Я
(sequential_107/lstm_107/lstm_cell/MatMulMatMul(sequential_107/lstm_107/unstack:output:0?sequential_107/lstm_107/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(М
9sequential_107/lstm_107/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBsequential_107_lstm_107_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0б
*sequential_107/lstm_107/lstm_cell/MatMul_1MatMul&sequential_107/lstm_107/zeros:output:0Asequential_107/lstm_107/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ъ
%sequential_107/lstm_107/lstm_cell/addAddV22sequential_107/lstm_107/lstm_cell/MatMul:product:04sequential_107/lstm_107/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ж
8sequential_107/lstm_107/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAsequential_107_lstm_107_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0г
)sequential_107/lstm_107/lstm_cell/BiasAddBiasAdd)sequential_107/lstm_107/lstm_cell/add:z:0@sequential_107/lstm_107/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(s
1sequential_107/lstm_107/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'sequential_107/lstm_107/lstm_cell/splitSplit:sequential_107/lstm_107/lstm_cell/split/split_dim:output:02sequential_107/lstm_107/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
)sequential_107/lstm_107/lstm_cell/SigmoidSigmoid0sequential_107/lstm_107/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_107/lstm_107/lstm_cell/Sigmoid_1Sigmoid0sequential_107/lstm_107/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Й
%sequential_107/lstm_107/lstm_cell/mulMul/sequential_107/lstm_107/lstm_cell/Sigmoid_1:y:0(sequential_107/lstm_107/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

&sequential_107/lstm_107/lstm_cell/TanhTanh0sequential_107/lstm_107/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Л
'sequential_107/lstm_107/lstm_cell/mul_1Mul-sequential_107/lstm_107/lstm_cell/Sigmoid:y:0*sequential_107/lstm_107/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
К
'sequential_107/lstm_107/lstm_cell/add_1AddV2)sequential_107/lstm_107/lstm_cell/mul:z:0+sequential_107/lstm_107/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_107/lstm_107/lstm_cell/Sigmoid_2Sigmoid0sequential_107/lstm_107/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

(sequential_107/lstm_107/lstm_cell/Tanh_1Tanh+sequential_107/lstm_107/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
П
'sequential_107/lstm_107/lstm_cell/mul_2Mul/sequential_107/lstm_107/lstm_cell/Sigmoid_2:y:0,sequential_107/lstm_107/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
Л
9sequential_107/lstm_107/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp@sequential_107_lstm_107_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0г
*sequential_107/lstm_107/lstm_cell/MatMul_2MatMul(sequential_107/lstm_107/unstack:output:1Asequential_107/lstm_107/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(М
9sequential_107/lstm_107/lstm_cell/MatMul_3/ReadVariableOpReadVariableOpBsequential_107_lstm_107_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0ж
*sequential_107/lstm_107/lstm_cell/MatMul_3MatMul+sequential_107/lstm_107/lstm_cell/mul_2:z:0Asequential_107/lstm_107/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ю
'sequential_107/lstm_107/lstm_cell/add_2AddV24sequential_107/lstm_107/lstm_cell/MatMul_2:product:04sequential_107/lstm_107/lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
:sequential_107/lstm_107/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOpAsequential_107_lstm_107_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0й
+sequential_107/lstm_107/lstm_cell/BiasAdd_1BiasAdd+sequential_107/lstm_107/lstm_cell/add_2:z:0Bsequential_107/lstm_107/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(u
3sequential_107/lstm_107/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
)sequential_107/lstm_107/lstm_cell/split_1Split<sequential_107/lstm_107/lstm_cell/split_1/split_dim:output:04sequential_107/lstm_107/lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
+sequential_107/lstm_107/lstm_cell/Sigmoid_3Sigmoid2sequential_107/lstm_107/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_107/lstm_107/lstm_cell/Sigmoid_4Sigmoid2sequential_107/lstm_107/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
О
'sequential_107/lstm_107/lstm_cell/mul_3Mul/sequential_107/lstm_107/lstm_cell/Sigmoid_4:y:0+sequential_107/lstm_107/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

(sequential_107/lstm_107/lstm_cell/Tanh_2Tanh2sequential_107/lstm_107/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
П
'sequential_107/lstm_107/lstm_cell/mul_4Mul/sequential_107/lstm_107/lstm_cell/Sigmoid_3:y:0,sequential_107/lstm_107/lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
М
'sequential_107/lstm_107/lstm_cell/add_3AddV2+sequential_107/lstm_107/lstm_cell/mul_3:z:0+sequential_107/lstm_107/lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_107/lstm_107/lstm_cell/Sigmoid_5Sigmoid2sequential_107/lstm_107/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

(sequential_107/lstm_107/lstm_cell/Tanh_3Tanh+sequential_107/lstm_107/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
П
'sequential_107/lstm_107/lstm_cell/mul_5Mul/sequential_107/lstm_107/lstm_cell/Sigmoid_5:y:0,sequential_107/lstm_107/lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
Л
9sequential_107/lstm_107/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp@sequential_107_lstm_107_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0г
*sequential_107/lstm_107/lstm_cell/MatMul_4MatMul(sequential_107/lstm_107/unstack:output:2Asequential_107/lstm_107/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(М
9sequential_107/lstm_107/lstm_cell/MatMul_5/ReadVariableOpReadVariableOpBsequential_107_lstm_107_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0ж
*sequential_107/lstm_107/lstm_cell/MatMul_5MatMul+sequential_107/lstm_107/lstm_cell/mul_5:z:0Asequential_107/lstm_107/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ю
'sequential_107/lstm_107/lstm_cell/add_4AddV24sequential_107/lstm_107/lstm_cell/MatMul_4:product:04sequential_107/lstm_107/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
:sequential_107/lstm_107/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOpAsequential_107_lstm_107_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0й
+sequential_107/lstm_107/lstm_cell/BiasAdd_2BiasAdd+sequential_107/lstm_107/lstm_cell/add_4:z:0Bsequential_107/lstm_107/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(u
3sequential_107/lstm_107/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
)sequential_107/lstm_107/lstm_cell/split_2Split<sequential_107/lstm_107/lstm_cell/split_2/split_dim:output:04sequential_107/lstm_107/lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
+sequential_107/lstm_107/lstm_cell/Sigmoid_6Sigmoid2sequential_107/lstm_107/lstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_107/lstm_107/lstm_cell/Sigmoid_7Sigmoid2sequential_107/lstm_107/lstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
О
'sequential_107/lstm_107/lstm_cell/mul_6Mul/sequential_107/lstm_107/lstm_cell/Sigmoid_7:y:0+sequential_107/lstm_107/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

(sequential_107/lstm_107/lstm_cell/Tanh_4Tanh2sequential_107/lstm_107/lstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
П
'sequential_107/lstm_107/lstm_cell/mul_7Mul/sequential_107/lstm_107/lstm_cell/Sigmoid_6:y:0,sequential_107/lstm_107/lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
М
'sequential_107/lstm_107/lstm_cell/add_5AddV2+sequential_107/lstm_107/lstm_cell/mul_6:z:0+sequential_107/lstm_107/lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_107/lstm_107/lstm_cell/Sigmoid_8Sigmoid2sequential_107/lstm_107/lstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

(sequential_107/lstm_107/lstm_cell/Tanh_5Tanh+sequential_107/lstm_107/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
П
'sequential_107/lstm_107/lstm_cell/mul_8Mul/sequential_107/lstm_107/lstm_cell/Sigmoid_8:y:0,sequential_107/lstm_107/lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

sequential_107/lstm_107/stackPack+sequential_107/lstm_107/lstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ
}
(sequential_107/lstm_107/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
#sequential_107/lstm_107/transpose_1	Transpose&sequential_107/lstm_107/stack:output:01sequential_107/lstm_107/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
s
sequential_107/lstm_107/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    І
.sequential_107/dense_107/MatMul/ReadVariableOpReadVariableOp7sequential_107_dense_107_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Р
sequential_107/dense_107/MatMulMatMul+sequential_107/lstm_107/lstm_cell/mul_8:z:06sequential_107/dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
/sequential_107/dense_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_107_dense_107_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
 sequential_107/dense_107/BiasAddBiasAdd)sequential_107/dense_107/MatMul:product:07sequential_107/dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
IdentityIdentity)sequential_107/dense_107/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
NoOpNoOp0^sequential_107/dense_107/BiasAdd/ReadVariableOp/^sequential_107/dense_107/MatMul/ReadVariableOp9^sequential_107/lstm_107/lstm_cell/BiasAdd/ReadVariableOp;^sequential_107/lstm_107/lstm_cell/BiasAdd_1/ReadVariableOp;^sequential_107/lstm_107/lstm_cell/BiasAdd_2/ReadVariableOp8^sequential_107/lstm_107/lstm_cell/MatMul/ReadVariableOp:^sequential_107/lstm_107/lstm_cell/MatMul_1/ReadVariableOp:^sequential_107/lstm_107/lstm_cell/MatMul_2/ReadVariableOp:^sequential_107/lstm_107/lstm_cell/MatMul_3/ReadVariableOp:^sequential_107/lstm_107/lstm_cell/MatMul_4/ReadVariableOp:^sequential_107/lstm_107/lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2b
/sequential_107/dense_107/BiasAdd/ReadVariableOp/sequential_107/dense_107/BiasAdd/ReadVariableOp2`
.sequential_107/dense_107/MatMul/ReadVariableOp.sequential_107/dense_107/MatMul/ReadVariableOp2t
8sequential_107/lstm_107/lstm_cell/BiasAdd/ReadVariableOp8sequential_107/lstm_107/lstm_cell/BiasAdd/ReadVariableOp2x
:sequential_107/lstm_107/lstm_cell/BiasAdd_1/ReadVariableOp:sequential_107/lstm_107/lstm_cell/BiasAdd_1/ReadVariableOp2x
:sequential_107/lstm_107/lstm_cell/BiasAdd_2/ReadVariableOp:sequential_107/lstm_107/lstm_cell/BiasAdd_2/ReadVariableOp2r
7sequential_107/lstm_107/lstm_cell/MatMul/ReadVariableOp7sequential_107/lstm_107/lstm_cell/MatMul/ReadVariableOp2v
9sequential_107/lstm_107/lstm_cell/MatMul_1/ReadVariableOp9sequential_107/lstm_107/lstm_cell/MatMul_1/ReadVariableOp2v
9sequential_107/lstm_107/lstm_cell/MatMul_2/ReadVariableOp9sequential_107/lstm_107/lstm_cell/MatMul_2/ReadVariableOp2v
9sequential_107/lstm_107/lstm_cell/MatMul_3/ReadVariableOp9sequential_107/lstm_107/lstm_cell/MatMul_3/ReadVariableOp2v
9sequential_107/lstm_107/lstm_cell/MatMul_4/ReadVariableOp9sequential_107/lstm_107/lstm_cell/MatMul_4/ReadVariableOp2v
9sequential_107/lstm_107/lstm_cell/MatMul_5/ReadVariableOp9sequential_107/lstm_107/lstm_cell/MatMul_5/ReadVariableOp:\ X
,
_output_shapes
:џџџџџџџџџћ
(
_user_specified_namelstm_107_input:($
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
Й
P
$__inference__update_step_xla_1437352
gradient
variable:
(*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:
(: *
	_noinline(:H D

_output_shapes

:
(
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њb

E__inference_lstm_107_layer_call_and_return_conditional_losses_1437490

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ(<
*lstm_cell_matmul_1_readvariableop_resource:
(7
)lstm_cell_biasadd_readvariableop_resource:(
identityЂ;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
value	B :
s
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
:џџџџџџџџџ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
:џџџџџџџџџ
c
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ([
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ
e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѕ
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
,lstm_107/lstm_cell/kernel/Regularizer/L2LossL2LossClstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+lstm_107/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<О
)lstm_107/lstm_cell/kernel/Regularizer/mulMul4lstm_107/lstm_cell/kernel/Regularizer/mul/x:output:05lstm_107/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
NoOpNoOp<^lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2z
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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

І
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437134
lstm_107_input#
lstm_107_1437107:	ћ("
lstm_107_1437109:
(
lstm_107_1437111:(#
dense_107_1437124:

dense_107_1437126:
identityЂ!dense_107/StatefulPartitionedCallЂ lstm_107/StatefulPartitionedCallЂ;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp
 lstm_107/StatefulPartitionedCallStatefulPartitionedCalllstm_107_inputlstm_107_1437107lstm_107_1437109lstm_107_1437111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437106
!dense_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_107/StatefulPartitionedCall:output:0dense_107_1437124dense_107_1437126*
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
GPU2*0J 8 *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_1437123
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_107_1437107*
_output_shapes
:	ћ(*
dtype0
,lstm_107/lstm_cell/kernel/Regularizer/L2LossL2LossClstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+lstm_107/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<О
)lstm_107/lstm_cell/kernel/Regularizer/mulMul4lstm_107/lstm_cell/kernel/Regularizer/mul/x:output:05lstm_107/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_107/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
NoOpNoOp"^dense_107/StatefulPartitionedCall!^lstm_107/StatefulPartitionedCall<^lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2D
 lstm_107/StatefulPartitionedCall lstm_107/StatefulPartitionedCall2z
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:\ X
,
_output_shapes
:џџџџџџџџџћ
(
_user_specified_namelstm_107_input:'#
!
_user_specified_name	1437107:'#
!
_user_specified_name	1437109:'#
!
_user_specified_name	1437111:'#
!
_user_specified_name	1437124:'#
!
_user_specified_name	1437126


љ
0__inference_sequential_107_layer_call_fn_1437270
lstm_107_input
unknown:	ћ(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_107_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
GPU2*0J 8 *T
fORM
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437134o
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
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:џџџџџџџџџћ
(
_user_specified_namelstm_107_input:'#
!
_user_specified_name	1437258:'#
!
_user_specified_name	1437260:'#
!
_user_specified_name	1437262:'#
!
_user_specified_name	1437264:'#
!
_user_specified_name	1437266
е
Е
*__inference_lstm_107_layer_call_fn_1437378

inputs
unknown:	ћ(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437106o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	1437370:'#
!
_user_specified_name	1437372:'#
!
_user_specified_name	1437374
љ	
ї
F__inference_dense_107_layer_call_and_return_conditional_losses_1437614

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
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
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њb

E__inference_lstm_107_layer_call_and_return_conditional_losses_1437591

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ(<
*lstm_cell_matmul_1_readvariableop_resource:
(7
)lstm_cell_biasadd_readvariableop_resource:(
identityЂ;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
value	B :
s
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
:џџџџџџџџџ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
:џџџџџџџџџ
c
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ([
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ
e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѕ
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
,lstm_107/lstm_cell/kernel/Regularizer/L2LossL2LossClstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+lstm_107/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<О
)lstm_107/lstm_cell/kernel/Regularizer/mulMul4lstm_107/lstm_cell/kernel/Regularizer/mul/x:output:05lstm_107/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
NoOpNoOp<^lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2z
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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
ї

+__inference_dense_107_layer_call_fn_1437604

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallо
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
GPU2*0J 8 *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_1437123o
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
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:'#
!
_user_specified_name	1437598:'#
!
_user_specified_name	1437600
­
L
$__inference__update_step_xla_1437357
gradient
variable:(*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:(: *
	_noinline(:D @

_output_shapes
:(
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
е
Е
*__inference_lstm_107_layer_call_fn_1437389

inputs
unknown:	ћ(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
<
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	1437381:'#
!
_user_specified_name	1437383:'#
!
_user_specified_name	1437385
Њb

E__inference_lstm_107_layer_call_and_return_conditional_losses_1437106

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ(<
*lstm_cell_matmul_1_readvariableop_resource:
(7
)lstm_cell_biasadd_readvariableop_resource:(
identityЂ;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
value	B :
s
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
:џџџџџџџџџ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
:џџџџџџџџџ
c
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ([
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
_
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ
e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ѕ
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
,lstm_107/lstm_cell/kernel/Regularizer/L2LossL2LossClstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+lstm_107/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<О
)lstm_107/lstm_cell/kernel/Regularizer/mulMul4lstm_107/lstm_cell/kernel/Regularizer/mul/x:output:05lstm_107/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
NoOpNoOp<^lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2z
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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
Е

Ч
__inference_loss_fn_0_1437622W
Dlstm_107_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource:	ћ(
identityЂ;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpС
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpDlstm_107_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	ћ(*
dtype0
,lstm_107/lstm_cell/kernel/Regularizer/L2LossL2LossClstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+lstm_107/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<О
)lstm_107/lstm_cell/kernel/Regularizer/mulMul4lstm_107/lstm_cell/kernel/Regularizer/mul/x:output:05lstm_107/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: k
IdentityIdentity-lstm_107/lstm_cell/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp<^lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
]
а
#__inference__traced_restore_1437824
file_prefix3
!assignvariableop_dense_107_kernel:
/
!assignvariableop_1_dense_107_bias:?
,assignvariableop_2_lstm_107_lstm_cell_kernel:	ћ(H
6assignvariableop_3_lstm_107_lstm_cell_recurrent_kernel:
(8
*assignvariableop_4_lstm_107_lstm_cell_bias:(&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: F
3assignvariableop_7_adam_m_lstm_107_lstm_cell_kernel:	ћ(F
3assignvariableop_8_adam_v_lstm_107_lstm_cell_kernel:	ћ(O
=assignvariableop_9_adam_m_lstm_107_lstm_cell_recurrent_kernel:
(P
>assignvariableop_10_adam_v_lstm_107_lstm_cell_recurrent_kernel:
(@
2assignvariableop_11_adam_m_lstm_107_lstm_cell_bias:(@
2assignvariableop_12_adam_v_lstm_107_lstm_cell_bias:(=
+assignvariableop_13_adam_m_dense_107_kernel:
=
+assignvariableop_14_adam_v_dense_107_kernel:
7
)assignvariableop_15_adam_m_dense_107_bias:7
)assignvariableop_16_adam_v_dense_107_bias:#
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
:Д
AssignVariableOpAssignVariableOp!assignvariableop_dense_107_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_107_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_2AssignVariableOp,assignvariableop_2_lstm_107_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_3AssignVariableOp6assignvariableop_3_lstm_107_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp*assignvariableop_4_lstm_107_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
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
:Ъ
AssignVariableOp_7AssignVariableOp3assignvariableop_7_adam_m_lstm_107_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_8AssignVariableOp3assignvariableop_8_adam_v_lstm_107_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_9AssignVariableOp=assignvariableop_9_adam_m_lstm_107_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_10AssignVariableOp>assignvariableop_10_adam_v_lstm_107_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_m_lstm_107_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_12AssignVariableOp2assignvariableop_12_adam_v_lstm_107_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_m_dense_107_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_v_dense_107_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_m_dense_107_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_v_dense_107_biasIdentity_16:output:0"/device:CPU:0*&
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
_user_specified_namefile_prefix:0,
*
_user_specified_namedense_107/kernel:.*
(
_user_specified_namedense_107/bias:95
3
_user_specified_namelstm_107/lstm_cell/kernel:C?
=
_user_specified_name%#lstm_107/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_107/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:@<
:
_user_specified_name" Adam/m/lstm_107/lstm_cell/kernel:@	<
:
_user_specified_name" Adam/v/lstm_107/lstm_cell/kernel:J
F
D
_user_specified_name,*Adam/m/lstm_107/lstm_cell/recurrent_kernel:JF
D
_user_specified_name,*Adam/v/lstm_107/lstm_cell/recurrent_kernel:>:
8
_user_specified_name Adam/m/lstm_107/lstm_cell/bias:>:
8
_user_specified_name Adam/v/lstm_107/lstm_cell/bias:73
1
_user_specified_nameAdam/m/dense_107/kernel:73
1
_user_specified_nameAdam/v/dense_107/kernel:51
/
_user_specified_nameAdam/m/dense_107/bias:51
/
_user_specified_nameAdam/v/dense_107/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
М
Q
$__inference__update_step_xla_1437347
gradient
variable:	ћ(*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	ћ(: *
	_noinline(:I E

_output_shapes
:	ћ(
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
љ	
ї
F__inference_dense_107_layer_call_and_return_conditional_losses_1437123

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
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
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­
L
$__inference__update_step_xla_1437367
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

І
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437255
lstm_107_input#
lstm_107_1437238:	ћ("
lstm_107_1437240:
(
lstm_107_1437242:(#
dense_107_1437245:

dense_107_1437247:
identityЂ!dense_107/StatefulPartitionedCallЂ lstm_107/StatefulPartitionedCallЂ;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp
 lstm_107/StatefulPartitionedCallStatefulPartitionedCalllstm_107_inputlstm_107_1437238lstm_107_1437240lstm_107_1437242*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437237
!dense_107/StatefulPartitionedCallStatefulPartitionedCall)lstm_107/StatefulPartitionedCall:output:0dense_107_1437245dense_107_1437247*
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
GPU2*0J 8 *O
fJRH
F__inference_dense_107_layer_call_and_return_conditional_losses_1437123
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_107_1437238*
_output_shapes
:	ћ(*
dtype0
,lstm_107/lstm_cell/kernel/Regularizer/L2LossL2LossClstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+lstm_107/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<О
)lstm_107/lstm_cell/kernel/Regularizer/mulMul4lstm_107/lstm_cell/kernel/Regularizer/mul/x:output:05lstm_107/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_107/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
NoOpNoOp"^dense_107/StatefulPartitionedCall!^lstm_107/StatefulPartitionedCall<^lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2D
 lstm_107/StatefulPartitionedCall lstm_107/StatefulPartitionedCall2z
;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;lstm_107/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:\ X
,
_output_shapes
:џџџџџџџџџћ
(
_user_specified_namelstm_107_input:'#
!
_user_specified_name	1437238:'#
!
_user_specified_name	1437240:'#
!
_user_specified_name	1437242:'#
!
_user_specified_name	1437245:'#
!
_user_specified_name	1437247
Й
P
$__inference__update_step_xla_1437362
gradient
variable:
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:
: *
	_noinline(:H D

_output_shapes

:

"
_user_specified_name
gradient:($
"
_user_specified_name
variable

Ї
 __inference__traced_save_1437758
file_prefix9
'read_disablecopyonread_dense_107_kernel:
5
'read_1_disablecopyonread_dense_107_bias:E
2read_2_disablecopyonread_lstm_107_lstm_cell_kernel:	ћ(N
<read_3_disablecopyonread_lstm_107_lstm_cell_recurrent_kernel:
(>
0read_4_disablecopyonread_lstm_107_lstm_cell_bias:(,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: L
9read_7_disablecopyonread_adam_m_lstm_107_lstm_cell_kernel:	ћ(L
9read_8_disablecopyonread_adam_v_lstm_107_lstm_cell_kernel:	ћ(U
Cread_9_disablecopyonread_adam_m_lstm_107_lstm_cell_recurrent_kernel:
(V
Dread_10_disablecopyonread_adam_v_lstm_107_lstm_cell_recurrent_kernel:
(F
8read_11_disablecopyonread_adam_m_lstm_107_lstm_cell_bias:(F
8read_12_disablecopyonread_adam_v_lstm_107_lstm_cell_bias:(C
1read_13_disablecopyonread_adam_m_dense_107_kernel:
C
1read_14_disablecopyonread_adam_v_dense_107_kernel:
=
/read_15_disablecopyonread_adam_m_dense_107_bias:=
/read_16_disablecopyonread_adam_v_dense_107_bias:)
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
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_dense_107_kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_dense_107_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:
{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_107_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_107_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_lstm_107_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Г
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_lstm_107_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ћ(*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ћ(d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	ћ(
Read_3/DisableCopyOnReadDisableCopyOnRead<read_3_disablecopyonread_lstm_107_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 М
Read_3/ReadVariableOpReadVariableOp<read_3_disablecopyonread_lstm_107_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
(*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
(c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:
(
Read_4/DisableCopyOnReadDisableCopyOnRead0read_4_disablecopyonread_lstm_107_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_4/ReadVariableOpReadVariableOp0read_4_disablecopyonread_lstm_107_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:(v
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
: 
Read_7/DisableCopyOnReadDisableCopyOnRead9read_7_disablecopyonread_adam_m_lstm_107_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 К
Read_7/ReadVariableOpReadVariableOp9read_7_disablecopyonread_adam_m_lstm_107_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ћ(*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ћ(f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	ћ(
Read_8/DisableCopyOnReadDisableCopyOnRead9read_8_disablecopyonread_adam_v_lstm_107_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 К
Read_8/ReadVariableOpReadVariableOp9read_8_disablecopyonread_adam_v_lstm_107_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ћ(*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ћ(f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	ћ(
Read_9/DisableCopyOnReadDisableCopyOnReadCread_9_disablecopyonread_adam_m_lstm_107_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 У
Read_9/ReadVariableOpReadVariableOpCread_9_disablecopyonread_adam_m_lstm_107_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
(*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
(e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:
(
Read_10/DisableCopyOnReadDisableCopyOnReadDread_10_disablecopyonread_adam_v_lstm_107_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_10/ReadVariableOpReadVariableOpDread_10_disablecopyonread_adam_v_lstm_107_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
(*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
(e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:
(
Read_11/DisableCopyOnReadDisableCopyOnRead8read_11_disablecopyonread_adam_m_lstm_107_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ж
Read_11/ReadVariableOpReadVariableOp8read_11_disablecopyonread_adam_m_lstm_107_lstm_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:(
Read_12/DisableCopyOnReadDisableCopyOnRead8read_12_disablecopyonread_adam_v_lstm_107_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ж
Read_12/ReadVariableOpReadVariableOp8read_12_disablecopyonread_adam_v_lstm_107_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:(
Read_13/DisableCopyOnReadDisableCopyOnRead1read_13_disablecopyonread_adam_m_dense_107_kernel"/device:CPU:0*
_output_shapes
 Г
Read_13/ReadVariableOpReadVariableOp1read_13_disablecopyonread_adam_m_dense_107_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:

Read_14/DisableCopyOnReadDisableCopyOnRead1read_14_disablecopyonread_adam_v_dense_107_kernel"/device:CPU:0*
_output_shapes
 Г
Read_14/ReadVariableOpReadVariableOp1read_14_disablecopyonread_adam_v_dense_107_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:

Read_15/DisableCopyOnReadDisableCopyOnRead/read_15_disablecopyonread_adam_m_dense_107_bias"/device:CPU:0*
_output_shapes
 ­
Read_15/ReadVariableOpReadVariableOp/read_15_disablecopyonread_adam_m_dense_107_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
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
:
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_v_dense_107_bias"/device:CPU:0*
_output_shapes
 ­
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_v_dense_107_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
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
_user_specified_namefile_prefix:0,
*
_user_specified_namedense_107/kernel:.*
(
_user_specified_namedense_107/bias:95
3
_user_specified_namelstm_107/lstm_cell/kernel:C?
=
_user_specified_name%#lstm_107/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_107/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:@<
:
_user_specified_name" Adam/m/lstm_107/lstm_cell/kernel:@	<
:
_user_specified_name" Adam/v/lstm_107/lstm_cell/kernel:J
F
D
_user_specified_name,*Adam/m/lstm_107/lstm_cell/recurrent_kernel:JF
D
_user_specified_name,*Adam/v/lstm_107/lstm_cell/recurrent_kernel:>:
8
_user_specified_name Adam/m/lstm_107/lstm_cell/bias:>:
8
_user_specified_name Adam/v/lstm_107/lstm_cell/bias:73
1
_user_specified_nameAdam/m/dense_107/kernel:73
1
_user_specified_nameAdam/v/dense_107/kernel:51
/
_user_specified_nameAdam/m/dense_107/bias:51
/
_user_specified_nameAdam/v/dense_107/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
ы	
ю
%__inference_signature_wrapper_1437338
lstm_107_input
unknown:	ћ(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCalllstm_107_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
"__inference__wrapped_model_1437003o
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
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:џџџџџџџџџћ
(
_user_specified_namelstm_107_input:'#
!
_user_specified_name	1437326:'#
!
_user_specified_name	1437328:'#
!
_user_specified_name	1437330:'#
!
_user_specified_name	1437332:'#
!
_user_specified_name	1437334"ЇL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*П
serving_defaultЋ
N
lstm_107_input<
 serving_default_lstm_107_input:0џџџџџџџџџћ=
	dense_1070
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Ўy
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
г
%trace_0
&trace_12
0__inference_sequential_107_layer_call_fn_1437270
0__inference_sequential_107_layer_call_fn_1437285Е
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

'trace_0
(trace_12в
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437134
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437255Е
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
дBб
"__inference__wrapped_model_1437003lstm_107_input"
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
м
8trace_0
9trace_12Ѕ
*__inference_lstm_107_layer_call_fn_1437378
*__inference_lstm_107_layer_call_fn_1437389Ъ
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

:trace_0
;trace_12л
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437490
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437591Ъ
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
х
Itrace_02Ш
+__inference_dense_107_layer_call_fn_1437604
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

Jtrace_02у
F__inference_dense_107_layer_call_and_return_conditional_losses_1437614
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
": 
2dense_107/kernel
:2dense_107/bias
,:*	ћ(2lstm_107/lstm_cell/kernel
5:3
(2#lstm_107/lstm_cell/recurrent_kernel
%:#(2lstm_107/lstm_cell/bias
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
іBѓ
0__inference_sequential_107_layer_call_fn_1437270lstm_107_input"Ќ
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
іBѓ
0__inference_sequential_107_layer_call_fn_1437285lstm_107_input"Ќ
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
B
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437134lstm_107_input"Ќ
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
B
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437255lstm_107_input"Ќ
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
ѕ
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3
Ztrace_42№
$__inference__update_step_xla_1437347
$__inference__update_step_xla_1437352
$__inference__update_step_xla_1437357
$__inference__update_step_xla_1437362
$__inference__update_step_xla_1437367Џ
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
пBм
%__inference_signature_wrapper_1437338lstm_107_input" 
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 #

kwonlyargs
jlstm_107_input
kwonlydefaults
 
annotationsЊ *
 
Ю
[trace_02Б
__inference_loss_fn_0_1437622
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
љBі
*__inference_lstm_107_layer_call_fn_1437378inputs"Н
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
љBі
*__inference_lstm_107_layer_call_fn_1437389inputs"Н
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
B
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437490inputs"Н
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
B
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437591inputs"Н
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
еBв
+__inference_dense_107_layer_call_fn_1437604inputs"
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
№Bэ
F__inference_dense_107_layer_call_and_return_conditional_losses_1437614inputs"
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
1:/	ћ(2 Adam/m/lstm_107/lstm_cell/kernel
1:/	ћ(2 Adam/v/lstm_107/lstm_cell/kernel
::8
(2*Adam/m/lstm_107/lstm_cell/recurrent_kernel
::8
(2*Adam/v/lstm_107/lstm_cell/recurrent_kernel
*:((2Adam/m/lstm_107/lstm_cell/bias
*:((2Adam/v/lstm_107/lstm_cell/bias
':%
2Adam/m/dense_107/kernel
':%
2Adam/v/dense_107/kernel
!:2Adam/m/dense_107/bias
!:2Adam/v/dense_107/bias
яBь
$__inference__update_step_xla_1437347gradientvariable"­
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
$__inference__update_step_xla_1437352gradientvariable"­
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
$__inference__update_step_xla_1437357gradientvariable"­
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
$__inference__update_step_xla_1437362gradientvariable"­
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
$__inference__update_step_xla_1437367gradientvariable"­
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
__inference_loss_fn_0_1437622"
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
:  (2count
$__inference__update_step_xla_1437347pjЂg
`Ђ]

gradient	ћ(
52	Ђ
њ	ћ(

p
` VariableSpec 
`рдю њ>
Њ "
 
$__inference__update_step_xla_1437352nhЂe
^Ђ[

gradient
(
41	Ђ
њ
(

p
` VariableSpec 
` ўЏ њ>
Њ "
 
$__inference__update_step_xla_1437357f`Ђ]
VЂS

gradient(
0-	Ђ
њ(

p
` VariableSpec 
`РЛ њ>
Њ "
 
$__inference__update_step_xla_1437362nhЂe
^Ђ[

gradient

41	Ђ
њ


p
` VariableSpec 
`РшК№Йњ>
Њ "
 
$__inference__update_step_xla_1437367f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
` Л№Йњ>
Њ "
 Ђ
"__inference__wrapped_model_1437003|<Ђ9
2Ђ/
-*
lstm_107_inputџџџџџџџџџћ
Њ "5Њ2
0
	dense_107# 
	dense_107џџџџџџџџџ­
F__inference_dense_107_layer_call_and_return_conditional_losses_1437614c/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
+__inference_dense_107_layer_call_fn_1437604X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "!
unknownџџџџџџџџџE
__inference_loss_fn_0_1437622$Ђ

Ђ 
Њ "
unknown О
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437490u@Ђ=
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
tensor_0џџџџџџџџџ

 О
E__inference_lstm_107_layer_call_and_return_conditional_losses_1437591u@Ђ=
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
tensor_0џџџџџџџџџ

 
*__inference_lstm_107_layer_call_fn_1437378j@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p

 
Њ "!
unknownџџџџџџџџџ

*__inference_lstm_107_layer_call_fn_1437389j@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p 

 
Њ "!
unknownџџџџџџџџџ
Ъ
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437134{DЂA
:Ђ7
-*
lstm_107_inputџџџџџџџџџћ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ъ
K__inference_sequential_107_layer_call_and_return_conditional_losses_1437255{DЂA
:Ђ7
-*
lstm_107_inputџџџџџџџџџћ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Є
0__inference_sequential_107_layer_call_fn_1437270pDЂA
:Ђ7
-*
lstm_107_inputџџџџџџџџџћ
p

 
Њ "!
unknownџџџџџџџџџЄ
0__inference_sequential_107_layer_call_fn_1437285pDЂA
:Ђ7
-*
lstm_107_inputџџџџџџџџџћ
p 

 
Њ "!
unknownџџџџџџџџџИ
%__inference_signature_wrapper_1437338NЂK
Ђ 
DЊA
?
lstm_107_input-*
lstm_107_inputџџџџџџџџџћ"5Њ2
0
	dense_107# 
	dense_107џџџџџџџџџ