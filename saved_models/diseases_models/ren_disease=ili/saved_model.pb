ћ	
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
 "serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8ќ
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
Adam/v/dense_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_95/bias
y
(Adam/v/dense_95/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_95/bias*
_output_shapes
:*
dtype0

Adam/m/dense_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_95/bias
y
(Adam/m/dense_95/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_95/bias*
_output_shapes
:*
dtype0

Adam/v/dense_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_95/kernel

*Adam/v/dense_95/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_95/kernel*
_output_shapes

:*
dtype0

Adam/m/dense_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_95/kernel

*Adam/m/dense_95/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_95/kernel*
_output_shapes

:*
dtype0

Adam/v/lstm_95/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/v/lstm_95/lstm_cell/bias

1Adam/v/lstm_95/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_95/lstm_cell/bias*
_output_shapes
:*
dtype0

Adam/m/lstm_95/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/m/lstm_95/lstm_cell/bias

1Adam/m/lstm_95/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_95/lstm_cell/bias*
_output_shapes
:*
dtype0
Ў
)Adam/v/lstm_95/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)Adam/v/lstm_95/lstm_cell/recurrent_kernel
Ї
=Adam/v/lstm_95/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/v/lstm_95/lstm_cell/recurrent_kernel*
_output_shapes

:*
dtype0
Ў
)Adam/m/lstm_95/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)Adam/m/lstm_95/lstm_cell/recurrent_kernel
Ї
=Adam/m/lstm_95/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/m/lstm_95/lstm_cell/recurrent_kernel*
_output_shapes

:*
dtype0

Adam/v/lstm_95/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ*0
shared_name!Adam/v/lstm_95/lstm_cell/kernel

3Adam/v/lstm_95/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_95/lstm_cell/kernel*
_output_shapes
:	ћ*
dtype0

Adam/m/lstm_95/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ*0
shared_name!Adam/m/lstm_95/lstm_cell/kernel

3Adam/m/lstm_95/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_95/lstm_cell/kernel*
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

lstm_95/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namelstm_95/lstm_cell/bias
}
*lstm_95/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_95/lstm_cell/bias*
_output_shapes
:*
dtype0
 
"lstm_95/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"lstm_95/lstm_cell/recurrent_kernel

6lstm_95/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp"lstm_95/lstm_cell/recurrent_kernel*
_output_shapes

:*
dtype0

lstm_95/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ћ*)
shared_namelstm_95/lstm_cell/kernel

,lstm_95/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_95/lstm_cell/kernel*
_output_shapes
:	ћ*
dtype0
r
dense_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_95/bias
k
!dense_95/bias/Read/ReadVariableOpReadVariableOpdense_95/bias*
_output_shapes
:*
dtype0
z
dense_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_95/kernel
s
#dense_95/kernel/Read/ReadVariableOpReadVariableOpdense_95/kernel*
_output_shapes

:*
dtype0

serving_default_lstm_95_inputPlaceholder*,
_output_shapes
:џџџџџџџџџћ*
dtype0*!
shape:џџџџџџџџџћ
М
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_95_inputlstm_95/lstm_cell/kernel"lstm_95/lstm_cell/recurrent_kernellstm_95/lstm_cell/biasdense_95/kerneldense_95/bias*
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
%__inference_signature_wrapper_1279274

NoOpNoOp
(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*а'
valueЦ'BУ' BМ'
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
_Y
VARIABLE_VALUEdense_95/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_95/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_95/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"lstm_95/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUElstm_95/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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
jd
VARIABLE_VALUEAdam/m/lstm_95/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_95/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/m/lstm_95/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/v/lstm_95/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/lstm_95/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/lstm_95/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_95/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_95/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_95/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_95/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
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

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_95/kerneldense_95/biaslstm_95/lstm_cell/kernel"lstm_95/lstm_cell/recurrent_kernellstm_95/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_95/lstm_cell/kernelAdam/v/lstm_95/lstm_cell/kernel)Adam/m/lstm_95/lstm_cell/recurrent_kernel)Adam/v/lstm_95/lstm_cell/recurrent_kernelAdam/m/lstm_95/lstm_cell/biasAdam/v/lstm_95/lstm_cell/biasAdam/m/dense_95/kernelAdam/v/dense_95/kernelAdam/m/dense_95/biasAdam/v/dense_95/biastotalcountConst* 
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
 __inference__traced_save_1279694
§
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_95/kerneldense_95/biaslstm_95/lstm_cell/kernel"lstm_95/lstm_cell/recurrent_kernellstm_95/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_95/lstm_cell/kernelAdam/v/lstm_95/lstm_cell/kernel)Adam/m/lstm_95/lstm_cell/recurrent_kernel)Adam/v/lstm_95/lstm_cell/recurrent_kernelAdam/m/lstm_95/lstm_cell/biasAdam/v/lstm_95/lstm_cell/biasAdam/m/dense_95/kernelAdam/v/dense_95/kernelAdam/m/dense_95/biasAdam/v/dense_95/biastotalcount*
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
#__inference__traced_restore_1279760ћ
М
Q
$__inference__update_step_xla_1279283
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
г
Д
)__inference_lstm_95_layer_call_fn_1279314

inputs
unknown:	ћ
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallщ
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
GPU2*0J 8 *M
fHRF
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279042o
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	1279306:'#
!
_user_specified_name	1279308:'#
!
_user_specified_name	1279310
ш	
э
%__inference_signature_wrapper_1279274
lstm_95_input
unknown:	ћ
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCalllstm_95_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
"__inference__wrapped_model_1278939o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:џџџџџџџџџћ
'
_user_specified_namelstm_95_input:'#
!
_user_specified_name	1279262:'#
!
_user_specified_name	1279264:'#
!
_user_specified_name	1279266:'#
!
_user_specified_name	1279268:'#
!
_user_specified_name	1279270
b

D__inference_lstm_95_layer_call_and_return_conditional_losses_1279527

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
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
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
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
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
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
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
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
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
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
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
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
:џџџџџџџџџw
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџa
stackPacklstm_cell/mul_8:z:0*
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
 *    Є
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
+lstm_95/lstm_cell/kernel/Regularizer/L2LossL2LossBlstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: o
*lstm_95/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Л
(lstm_95/lstm_cell/kernel/Regularizer/mulMul3lstm_95/lstm_cell/kernel/Regularizer/mul/x:output:04lstm_95/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЂ
NoOpNoOp;^lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2x
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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
Й
P
$__inference__update_step_xla_1279298
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
ј	
і
E__inference_dense_95_layer_call_and_return_conditional_losses_1279550

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
ё\
С
#__inference__traced_restore_1279760
file_prefix2
 assignvariableop_dense_95_kernel:.
 assignvariableop_1_dense_95_bias:>
+assignvariableop_2_lstm_95_lstm_cell_kernel:	ћG
5assignvariableop_3_lstm_95_lstm_cell_recurrent_kernel:7
)assignvariableop_4_lstm_95_lstm_cell_bias:&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: E
2assignvariableop_7_adam_m_lstm_95_lstm_cell_kernel:	ћE
2assignvariableop_8_adam_v_lstm_95_lstm_cell_kernel:	ћN
<assignvariableop_9_adam_m_lstm_95_lstm_cell_recurrent_kernel:O
=assignvariableop_10_adam_v_lstm_95_lstm_cell_recurrent_kernel:?
1assignvariableop_11_adam_m_lstm_95_lstm_cell_bias:?
1assignvariableop_12_adam_v_lstm_95_lstm_cell_bias:<
*assignvariableop_13_adam_m_dense_95_kernel:<
*assignvariableop_14_adam_v_dense_95_kernel:6
(assignvariableop_15_adam_m_dense_95_bias:6
(assignvariableop_16_adam_v_dense_95_bias:#
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
AssignVariableOpAssignVariableOp assignvariableop_dense_95_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_95_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp+assignvariableop_2_lstm_95_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_3AssignVariableOp5assignvariableop_3_lstm_95_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_4AssignVariableOp)assignvariableop_4_lstm_95_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
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
AssignVariableOp_7AssignVariableOp2assignvariableop_7_adam_m_lstm_95_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_8AssignVariableOp2assignvariableop_8_adam_v_lstm_95_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_9AssignVariableOp<assignvariableop_9_adam_m_lstm_95_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_10AssignVariableOp=assignvariableop_10_adam_v_lstm_95_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_11AssignVariableOp1assignvariableop_11_adam_m_lstm_95_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_12AssignVariableOp1assignvariableop_12_adam_v_lstm_95_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_m_dense_95_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_v_dense_95_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_dense_95_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_dense_95_biasIdentity_16:output:0"/device:CPU:0*&
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
_user_specified_namedense_95/kernel:-)
'
_user_specified_namedense_95/bias:84
2
_user_specified_namelstm_95/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_95/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_95/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_95/lstm_cell/kernel:?	;
9
_user_specified_name!Adam/v/lstm_95/lstm_cell/kernel:I
E
C
_user_specified_name+)Adam/m/lstm_95/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_95/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_95/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_95/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_95/kernel:62
0
_user_specified_nameAdam/v/dense_95/kernel:40
.
_user_specified_nameAdam/m/dense_95/bias:40
.
_user_specified_nameAdam/v/dense_95/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
ѕ

*__inference_dense_95_layer_call_fn_1279540

inputs
unknown:
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
E__inference_dense_95_layer_call_and_return_conditional_losses_1279059o
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	1279534:'#
!
_user_specified_name	1279536
г
Д
)__inference_lstm_95_layer_call_fn_1279325

inputs
unknown:	ћ
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallщ
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
GPU2*0J 8 *M
fHRF
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279173o
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
 
_user_specified_nameinputs:'#
!
_user_specified_name	1279317:'#
!
_user_specified_name	1279319:'#
!
_user_specified_name	1279321
Ш

 __inference__traced_save_1279694
file_prefix8
&read_disablecopyonread_dense_95_kernel:4
&read_1_disablecopyonread_dense_95_bias:D
1read_2_disablecopyonread_lstm_95_lstm_cell_kernel:	ћM
;read_3_disablecopyonread_lstm_95_lstm_cell_recurrent_kernel:=
/read_4_disablecopyonread_lstm_95_lstm_cell_bias:,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: K
8read_7_disablecopyonread_adam_m_lstm_95_lstm_cell_kernel:	ћK
8read_8_disablecopyonread_adam_v_lstm_95_lstm_cell_kernel:	ћT
Bread_9_disablecopyonread_adam_m_lstm_95_lstm_cell_recurrent_kernel:U
Cread_10_disablecopyonread_adam_v_lstm_95_lstm_cell_recurrent_kernel:E
7read_11_disablecopyonread_adam_m_lstm_95_lstm_cell_bias:E
7read_12_disablecopyonread_adam_v_lstm_95_lstm_cell_bias:B
0read_13_disablecopyonread_adam_m_dense_95_kernel:B
0read_14_disablecopyonread_adam_v_dense_95_kernel:<
.read_15_disablecopyonread_adam_m_dense_95_bias:<
.read_16_disablecopyonread_adam_v_dense_95_bias:)
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
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_95_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_95_kernel^Read/DisableCopyOnRead"/device:CPU:0*
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

:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_95_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_95_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnRead1read_2_disablecopyonread_lstm_95_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 В
Read_2/ReadVariableOpReadVariableOp1read_2_disablecopyonread_lstm_95_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
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
:	ћ
Read_3/DisableCopyOnReadDisableCopyOnRead;read_3_disablecopyonread_lstm_95_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Л
Read_3/ReadVariableOpReadVariableOp;read_3_disablecopyonread_lstm_95_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
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

:
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_lstm_95_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ћ
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_lstm_95_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
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
: 
Read_7/DisableCopyOnReadDisableCopyOnRead8read_7_disablecopyonread_adam_m_lstm_95_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Й
Read_7/ReadVariableOpReadVariableOp8read_7_disablecopyonread_adam_m_lstm_95_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
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
:	ћ
Read_8/DisableCopyOnReadDisableCopyOnRead8read_8_disablecopyonread_adam_v_lstm_95_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Й
Read_8/ReadVariableOpReadVariableOp8read_8_disablecopyonread_adam_v_lstm_95_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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
:	ћ
Read_9/DisableCopyOnReadDisableCopyOnReadBread_9_disablecopyonread_adam_m_lstm_95_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Т
Read_9/ReadVariableOpReadVariableOpBread_9_disablecopyonread_adam_m_lstm_95_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
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

:
Read_10/DisableCopyOnReadDisableCopyOnReadCread_10_disablecopyonread_adam_v_lstm_95_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Х
Read_10/ReadVariableOpReadVariableOpCread_10_disablecopyonread_adam_v_lstm_95_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
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

:
Read_11/DisableCopyOnReadDisableCopyOnRead7read_11_disablecopyonread_adam_m_lstm_95_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Е
Read_11/ReadVariableOpReadVariableOp7read_11_disablecopyonread_adam_m_lstm_95_lstm_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
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
:
Read_12/DisableCopyOnReadDisableCopyOnRead7read_12_disablecopyonread_adam_v_lstm_95_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Е
Read_12/ReadVariableOpReadVariableOp7read_12_disablecopyonread_adam_v_lstm_95_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
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
:
Read_13/DisableCopyOnReadDisableCopyOnRead0read_13_disablecopyonread_adam_m_dense_95_kernel"/device:CPU:0*
_output_shapes
 В
Read_13/ReadVariableOpReadVariableOp0read_13_disablecopyonread_adam_m_dense_95_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
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

:
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_v_dense_95_kernel"/device:CPU:0*
_output_shapes
 В
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_v_dense_95_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
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

:
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_m_dense_95_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_m_dense_95_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
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
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_v_dense_95_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_v_dense_95_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
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
_user_specified_namedense_95/kernel:-)
'
_user_specified_namedense_95/bias:84
2
_user_specified_namelstm_95/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_95/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_95/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_95/lstm_cell/kernel:?	;
9
_user_specified_name!Adam/v/lstm_95/lstm_cell/kernel:I
E
C
_user_specified_name+)Adam/m/lstm_95/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_95/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_95/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_95/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_95/kernel:62
0
_user_specified_nameAdam/v/dense_95/kernel:40
.
_user_specified_nameAdam/m/dense_95/bias:40
.
_user_specified_nameAdam/v/dense_95/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
b

D__inference_lstm_95_layer_call_and_return_conditional_losses_1279173

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
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
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
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
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
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
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
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
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
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
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
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
:џџџџџџџџџw
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџa
stackPacklstm_cell/mul_8:z:0*
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
 *    Є
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
+lstm_95/lstm_cell/kernel/Regularizer/L2LossL2LossBlstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: o
*lstm_95/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Л
(lstm_95/lstm_cell/kernel/Regularizer/mulMul3lstm_95/lstm_cell/kernel/Regularizer/mul/x:output:04lstm_95/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЂ
NoOpNoOp;^lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2x
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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


ї
/__inference_sequential_95_layer_call_fn_1279221
lstm_95_input
unknown:	ћ
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_95_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
GPU2*0J 8 *S
fNRL
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279191o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:џџџџџџџџџћ
'
_user_specified_namelstm_95_input:'#
!
_user_specified_name	1279209:'#
!
_user_specified_name	1279211:'#
!
_user_specified_name	1279213:'#
!
_user_specified_name	1279215:'#
!
_user_specified_name	1279217
ђ

J__inference_sequential_95_layer_call_and_return_conditional_losses_1279191
lstm_95_input"
lstm_95_1279174:	ћ!
lstm_95_1279176:
lstm_95_1279178:"
dense_95_1279181:
dense_95_1279183:
identityЂ dense_95/StatefulPartitionedCallЂlstm_95/StatefulPartitionedCallЂ:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp
lstm_95/StatefulPartitionedCallStatefulPartitionedCalllstm_95_inputlstm_95_1279174lstm_95_1279176lstm_95_1279178*
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
GPU2*0J 8 *M
fHRF
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279173
 dense_95/StatefulPartitionedCallStatefulPartitionedCall(lstm_95/StatefulPartitionedCall:output:0dense_95_1279181dense_95_1279183*
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
E__inference_dense_95_layer_call_and_return_conditional_losses_1279059
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_95_1279174*
_output_shapes
:	ћ*
dtype0
+lstm_95/lstm_cell/kernel/Regularizer/L2LossL2LossBlstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: o
*lstm_95/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Л
(lstm_95/lstm_cell/kernel/Regularizer/mulMul3lstm_95/lstm_cell/kernel/Regularizer/mul/x:output:04lstm_95/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_95/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp!^dense_95/StatefulPartitionedCall ^lstm_95/StatefulPartitionedCall;^lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2B
lstm_95/StatefulPartitionedCalllstm_95/StatefulPartitionedCall2x
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:[ W
,
_output_shapes
:џџџџџџџџџћ
'
_user_specified_namelstm_95_input:'#
!
_user_specified_name	1279174:'#
!
_user_specified_name	1279176:'#
!
_user_specified_name	1279178:'#
!
_user_specified_name	1279181:'#
!
_user_specified_name	1279183
ј	
і
E__inference_dense_95_layer_call_and_return_conditional_losses_1279059

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
ђ

J__inference_sequential_95_layer_call_and_return_conditional_losses_1279070
lstm_95_input"
lstm_95_1279043:	ћ!
lstm_95_1279045:
lstm_95_1279047:"
dense_95_1279060:
dense_95_1279062:
identityЂ dense_95/StatefulPartitionedCallЂlstm_95/StatefulPartitionedCallЂ:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp
lstm_95/StatefulPartitionedCallStatefulPartitionedCalllstm_95_inputlstm_95_1279043lstm_95_1279045lstm_95_1279047*
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
GPU2*0J 8 *M
fHRF
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279042
 dense_95/StatefulPartitionedCallStatefulPartitionedCall(lstm_95/StatefulPartitionedCall:output:0dense_95_1279060dense_95_1279062*
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
E__inference_dense_95_layer_call_and_return_conditional_losses_1279059
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_95_1279043*
_output_shapes
:	ћ*
dtype0
+lstm_95/lstm_cell/kernel/Regularizer/L2LossL2LossBlstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: o
*lstm_95/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Л
(lstm_95/lstm_cell/kernel/Regularizer/mulMul3lstm_95/lstm_cell/kernel/Regularizer/mul/x:output:04lstm_95/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_95/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp!^dense_95/StatefulPartitionedCall ^lstm_95/StatefulPartitionedCall;^lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2D
 dense_95/StatefulPartitionedCall dense_95/StatefulPartitionedCall2B
lstm_95/StatefulPartitionedCalllstm_95/StatefulPartitionedCall2x
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:[ W
,
_output_shapes
:џџџџџџџџџћ
'
_user_specified_namelstm_95_input:'#
!
_user_specified_name	1279043:'#
!
_user_specified_name	1279045:'#
!
_user_specified_name	1279047:'#
!
_user_specified_name	1279060:'#
!
_user_specified_name	1279062
­
L
$__inference__update_step_xla_1279303
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
b

D__inference_lstm_95_layer_call_and_return_conditional_losses_1279042

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
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
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
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
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
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
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
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
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
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
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
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
:џџџџџџџџџw
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџa
stackPacklstm_cell/mul_8:z:0*
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
 *    Є
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
+lstm_95/lstm_cell/kernel/Regularizer/L2LossL2LossBlstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: o
*lstm_95/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Л
(lstm_95/lstm_cell/kernel/Regularizer/mulMul3lstm_95/lstm_cell/kernel/Regularizer/mul/x:output:04lstm_95/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЂ
NoOpNoOp;^lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2x
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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


ї
/__inference_sequential_95_layer_call_fn_1279206
lstm_95_input
unknown:	ћ
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_95_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
GPU2*0J 8 *S
fNRL
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279070o
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:џџџџџџџџџћ
'
_user_specified_namelstm_95_input:'#
!
_user_specified_name	1279194:'#
!
_user_specified_name	1279196:'#
!
_user_specified_name	1279198:'#
!
_user_specified_name	1279200:'#
!
_user_specified_name	1279202
Ї

Х
__inference_loss_fn_0_1279558V
Clstm_95_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource:	ћ
identityЂ:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpП
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpClstm_95_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
+lstm_95/lstm_cell/kernel/Regularizer/L2LossL2LossBlstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: o
*lstm_95/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Л
(lstm_95/lstm_cell/kernel/Regularizer/mulMul3lstm_95/lstm_cell/kernel/Regularizer/mul/x:output:04lstm_95/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: j
IdentityIdentity,lstm_95/lstm_cell/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: _
NoOpNoOp;^lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
b

D__inference_lstm_95_layer_call_and_return_conditional_losses_1279426

inputs;
(lstm_cell_matmul_readvariableop_resource:	ћ<
*lstm_cell_matmul_1_readvariableop_resource:7
)lstm_cell_biasadd_readvariableop_resource:
identityЂ:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpЂ lstm_cell/BiasAdd/ReadVariableOpЂ"lstm_cell/BiasAdd_1/ReadVariableOpЂ"lstm_cell/BiasAdd_2/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂ!lstm_cell/MatMul_2/ReadVariableOpЂ!lstm_cell/MatMul_3/ReadVariableOpЂ!lstm_cell/MatMul_4/ReadVariableOpЂ!lstm_cell/MatMul_5/ReadVariableOpI
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
num
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
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
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџs
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
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
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
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
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
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
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
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
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџf
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџt
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
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
:џџџџџџџџџw
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџa
stackPacklstm_cell/mul_8:z:0*
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
 *    Є
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0
+lstm_95/lstm_cell/kernel/Regularizer/L2LossL2LossBlstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: o
*lstm_95/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ<Л
(lstm_95/lstm_cell/kernel/Regularizer/mulMul3lstm_95/lstm_cell/kernel/Regularizer/mul/x:output:04lstm_95/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЂ
NoOpNoOp;^lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџћ: : : 2x
:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:lstm_95/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp2D
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
­
L
$__inference__update_step_xla_1279293
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
Й
P
$__inference__update_step_xla_1279288
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
Щ
Е
"__inference__wrapped_model_1278939
lstm_95_inputQ
>sequential_95_lstm_95_lstm_cell_matmul_readvariableop_resource:	ћR
@sequential_95_lstm_95_lstm_cell_matmul_1_readvariableop_resource:M
?sequential_95_lstm_95_lstm_cell_biasadd_readvariableop_resource:G
5sequential_95_dense_95_matmul_readvariableop_resource:D
6sequential_95_dense_95_biasadd_readvariableop_resource:
identityЂ-sequential_95/dense_95/BiasAdd/ReadVariableOpЂ,sequential_95/dense_95/MatMul/ReadVariableOpЂ6sequential_95/lstm_95/lstm_cell/BiasAdd/ReadVariableOpЂ8sequential_95/lstm_95/lstm_cell/BiasAdd_1/ReadVariableOpЂ8sequential_95/lstm_95/lstm_cell/BiasAdd_2/ReadVariableOpЂ5sequential_95/lstm_95/lstm_cell/MatMul/ReadVariableOpЂ7sequential_95/lstm_95/lstm_cell/MatMul_1/ReadVariableOpЂ7sequential_95/lstm_95/lstm_cell/MatMul_2/ReadVariableOpЂ7sequential_95/lstm_95/lstm_cell/MatMul_3/ReadVariableOpЂ7sequential_95/lstm_95/lstm_cell/MatMul_4/ReadVariableOpЂ7sequential_95/lstm_95/lstm_cell/MatMul_5/ReadVariableOpf
sequential_95/lstm_95/ShapeShapelstm_95_input*
T0*
_output_shapes
::эЯs
)sequential_95/lstm_95/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_95/lstm_95/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_95/lstm_95/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_95/lstm_95/strided_sliceStridedSlice$sequential_95/lstm_95/Shape:output:02sequential_95/lstm_95/strided_slice/stack:output:04sequential_95/lstm_95/strided_slice/stack_1:output:04sequential_95/lstm_95/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_95/lstm_95/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Е
"sequential_95/lstm_95/zeros/packedPack,sequential_95/lstm_95/strided_slice:output:0-sequential_95/lstm_95/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_95/lstm_95/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_95/lstm_95/zerosFill+sequential_95/lstm_95/zeros/packed:output:0*sequential_95/lstm_95/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
&sequential_95/lstm_95/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Й
$sequential_95/lstm_95/zeros_1/packedPack,sequential_95/lstm_95/strided_slice:output:0/sequential_95/lstm_95/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_95/lstm_95/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_95/lstm_95/zeros_1Fill-sequential_95/lstm_95/zeros_1/packed:output:0,sequential_95/lstm_95/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџy
$sequential_95/lstm_95/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
sequential_95/lstm_95/transpose	Transposelstm_95_input-sequential_95/lstm_95/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџћ~
sequential_95/lstm_95/Shape_1Shape#sequential_95/lstm_95/transpose:y:0*
T0*
_output_shapes
::эЯu
+sequential_95/lstm_95/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_95/lstm_95/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_95/lstm_95/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_95/lstm_95/strided_slice_1StridedSlice&sequential_95/lstm_95/Shape_1:output:04sequential_95/lstm_95/strided_slice_1/stack:output:06sequential_95/lstm_95/strided_slice_1/stack_1:output:06sequential_95/lstm_95/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskВ
sequential_95/lstm_95/unstackUnpack#sequential_95/lstm_95/transpose:y:0*
T0*P
_output_shapes>
<:џџџџџџџџџћ:џџџџџџџџџћ:џџџџџџџџџћ*	
numЕ
5sequential_95/lstm_95/lstm_cell/MatMul/ReadVariableOpReadVariableOp>sequential_95_lstm_95_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0Щ
&sequential_95/lstm_95/lstm_cell/MatMulMatMul&sequential_95/lstm_95/unstack:output:0=sequential_95/lstm_95/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
7sequential_95/lstm_95/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp@sequential_95_lstm_95_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ы
(sequential_95/lstm_95/lstm_cell/MatMul_1MatMul$sequential_95/lstm_95/zeros:output:0?sequential_95/lstm_95/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџФ
#sequential_95/lstm_95/lstm_cell/addAddV20sequential_95/lstm_95/lstm_cell/MatMul:product:02sequential_95/lstm_95/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџВ
6sequential_95/lstm_95/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?sequential_95_lstm_95_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
'sequential_95/lstm_95/lstm_cell/BiasAddBiasAdd'sequential_95/lstm_95/lstm_cell/add:z:0>sequential_95/lstm_95/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџq
/sequential_95/lstm_95/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_95/lstm_95/lstm_cell/splitSplit8sequential_95/lstm_95/lstm_cell/split/split_dim:output:00sequential_95/lstm_95/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
'sequential_95/lstm_95/lstm_cell/SigmoidSigmoid.sequential_95/lstm_95/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential_95/lstm_95/lstm_cell/Sigmoid_1Sigmoid.sequential_95/lstm_95/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџГ
#sequential_95/lstm_95/lstm_cell/mulMul-sequential_95/lstm_95/lstm_cell/Sigmoid_1:y:0&sequential_95/lstm_95/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
$sequential_95/lstm_95/lstm_cell/TanhTanh.sequential_95/lstm_95/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџЕ
%sequential_95/lstm_95/lstm_cell/mul_1Mul+sequential_95/lstm_95/lstm_cell/Sigmoid:y:0(sequential_95/lstm_95/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџД
%sequential_95/lstm_95/lstm_cell/add_1AddV2'sequential_95/lstm_95/lstm_cell/mul:z:0)sequential_95/lstm_95/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential_95/lstm_95/lstm_cell/Sigmoid_2Sigmoid.sequential_95/lstm_95/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_95/lstm_95/lstm_cell/Tanh_1Tanh)sequential_95/lstm_95/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЙ
%sequential_95/lstm_95/lstm_cell/mul_2Mul-sequential_95/lstm_95/lstm_cell/Sigmoid_2:y:0*sequential_95/lstm_95/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
7sequential_95/lstm_95/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp>sequential_95_lstm_95_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0Э
(sequential_95/lstm_95/lstm_cell/MatMul_2MatMul&sequential_95/lstm_95/unstack:output:1?sequential_95/lstm_95/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
7sequential_95/lstm_95/lstm_cell/MatMul_3/ReadVariableOpReadVariableOp@sequential_95_lstm_95_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0а
(sequential_95/lstm_95/lstm_cell/MatMul_3MatMul)sequential_95/lstm_95/lstm_cell/mul_2:z:0?sequential_95/lstm_95/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџШ
%sequential_95/lstm_95/lstm_cell/add_2AddV22sequential_95/lstm_95/lstm_cell/MatMul_2:product:02sequential_95/lstm_95/lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:џџџџџџџџџД
8sequential_95/lstm_95/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp?sequential_95_lstm_95_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0г
)sequential_95/lstm_95/lstm_cell/BiasAdd_1BiasAdd)sequential_95/lstm_95/lstm_cell/add_2:z:0@sequential_95/lstm_95/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџs
1sequential_95/lstm_95/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'sequential_95/lstm_95/lstm_cell/split_1Split:sequential_95/lstm_95/lstm_cell/split_1/split_dim:output:02sequential_95/lstm_95/lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
)sequential_95/lstm_95/lstm_cell/Sigmoid_3Sigmoid0sequential_95/lstm_95/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential_95/lstm_95/lstm_cell/Sigmoid_4Sigmoid0sequential_95/lstm_95/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџИ
%sequential_95/lstm_95/lstm_cell/mul_3Mul-sequential_95/lstm_95/lstm_cell/Sigmoid_4:y:0)sequential_95/lstm_95/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_95/lstm_95/lstm_cell/Tanh_2Tanh0sequential_95/lstm_95/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџЙ
%sequential_95/lstm_95/lstm_cell/mul_4Mul-sequential_95/lstm_95/lstm_cell/Sigmoid_3:y:0*sequential_95/lstm_95/lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџЖ
%sequential_95/lstm_95/lstm_cell/add_3AddV2)sequential_95/lstm_95/lstm_cell/mul_3:z:0)sequential_95/lstm_95/lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential_95/lstm_95/lstm_cell/Sigmoid_5Sigmoid0sequential_95/lstm_95/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_95/lstm_95/lstm_cell/Tanh_3Tanh)sequential_95/lstm_95/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџЙ
%sequential_95/lstm_95/lstm_cell/mul_5Mul-sequential_95/lstm_95/lstm_cell/Sigmoid_5:y:0*sequential_95/lstm_95/lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
7sequential_95/lstm_95/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp>sequential_95_lstm_95_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	ћ*
dtype0Э
(sequential_95/lstm_95/lstm_cell/MatMul_4MatMul&sequential_95/lstm_95/unstack:output:2?sequential_95/lstm_95/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
7sequential_95/lstm_95/lstm_cell/MatMul_5/ReadVariableOpReadVariableOp@sequential_95_lstm_95_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0а
(sequential_95/lstm_95/lstm_cell/MatMul_5MatMul)sequential_95/lstm_95/lstm_cell/mul_5:z:0?sequential_95/lstm_95/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџШ
%sequential_95/lstm_95/lstm_cell/add_4AddV22sequential_95/lstm_95/lstm_cell/MatMul_4:product:02sequential_95/lstm_95/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџД
8sequential_95/lstm_95/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp?sequential_95_lstm_95_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0г
)sequential_95/lstm_95/lstm_cell/BiasAdd_2BiasAdd)sequential_95/lstm_95/lstm_cell/add_4:z:0@sequential_95/lstm_95/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџs
1sequential_95/lstm_95/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'sequential_95/lstm_95/lstm_cell/split_2Split:sequential_95/lstm_95/lstm_cell/split_2/split_dim:output:02sequential_95/lstm_95/lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
)sequential_95/lstm_95/lstm_cell/Sigmoid_6Sigmoid0sequential_95/lstm_95/lstm_cell/split_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential_95/lstm_95/lstm_cell/Sigmoid_7Sigmoid0sequential_95/lstm_95/lstm_cell/split_2:output:1*
T0*'
_output_shapes
:џџџџџџџџџИ
%sequential_95/lstm_95/lstm_cell/mul_6Mul-sequential_95/lstm_95/lstm_cell/Sigmoid_7:y:0)sequential_95/lstm_95/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_95/lstm_95/lstm_cell/Tanh_4Tanh0sequential_95/lstm_95/lstm_cell/split_2:output:2*
T0*'
_output_shapes
:џџџџџџџџџЙ
%sequential_95/lstm_95/lstm_cell/mul_7Mul-sequential_95/lstm_95/lstm_cell/Sigmoid_6:y:0*sequential_95/lstm_95/lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџЖ
%sequential_95/lstm_95/lstm_cell/add_5AddV2)sequential_95/lstm_95/lstm_cell/mul_6:z:0)sequential_95/lstm_95/lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential_95/lstm_95/lstm_cell/Sigmoid_8Sigmoid0sequential_95/lstm_95/lstm_cell/split_2:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_95/lstm_95/lstm_cell/Tanh_5Tanh)sequential_95/lstm_95/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџЙ
%sequential_95/lstm_95/lstm_cell/mul_8Mul-sequential_95/lstm_95/lstm_cell/Sigmoid_8:y:0*sequential_95/lstm_95/lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_95/lstm_95/stackPack)sequential_95/lstm_95/lstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:џџџџџџџџџ{
&sequential_95/lstm_95/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
!sequential_95/lstm_95/transpose_1	Transpose$sequential_95/lstm_95/stack:output:0/sequential_95/lstm_95/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџq
sequential_95/lstm_95/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
,sequential_95/dense_95/MatMul/ReadVariableOpReadVariableOp5sequential_95_dense_95_matmul_readvariableop_resource*
_output_shapes

:*
dtype0К
sequential_95/dense_95/MatMulMatMul)sequential_95/lstm_95/lstm_cell/mul_8:z:04sequential_95/dense_95/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_95/dense_95/BiasAdd/ReadVariableOpReadVariableOp6sequential_95_dense_95_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_95/dense_95/BiasAddBiasAdd'sequential_95/dense_95/MatMul:product:05sequential_95/dense_95/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_95/dense_95/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp.^sequential_95/dense_95/BiasAdd/ReadVariableOp-^sequential_95/dense_95/MatMul/ReadVariableOp7^sequential_95/lstm_95/lstm_cell/BiasAdd/ReadVariableOp9^sequential_95/lstm_95/lstm_cell/BiasAdd_1/ReadVariableOp9^sequential_95/lstm_95/lstm_cell/BiasAdd_2/ReadVariableOp6^sequential_95/lstm_95/lstm_cell/MatMul/ReadVariableOp8^sequential_95/lstm_95/lstm_cell/MatMul_1/ReadVariableOp8^sequential_95/lstm_95/lstm_cell/MatMul_2/ReadVariableOp8^sequential_95/lstm_95/lstm_cell/MatMul_3/ReadVariableOp8^sequential_95/lstm_95/lstm_cell/MatMul_4/ReadVariableOp8^sequential_95/lstm_95/lstm_cell/MatMul_5/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":џџџџџџџџџћ: : : : : 2^
-sequential_95/dense_95/BiasAdd/ReadVariableOp-sequential_95/dense_95/BiasAdd/ReadVariableOp2\
,sequential_95/dense_95/MatMul/ReadVariableOp,sequential_95/dense_95/MatMul/ReadVariableOp2p
6sequential_95/lstm_95/lstm_cell/BiasAdd/ReadVariableOp6sequential_95/lstm_95/lstm_cell/BiasAdd/ReadVariableOp2t
8sequential_95/lstm_95/lstm_cell/BiasAdd_1/ReadVariableOp8sequential_95/lstm_95/lstm_cell/BiasAdd_1/ReadVariableOp2t
8sequential_95/lstm_95/lstm_cell/BiasAdd_2/ReadVariableOp8sequential_95/lstm_95/lstm_cell/BiasAdd_2/ReadVariableOp2n
5sequential_95/lstm_95/lstm_cell/MatMul/ReadVariableOp5sequential_95/lstm_95/lstm_cell/MatMul/ReadVariableOp2r
7sequential_95/lstm_95/lstm_cell/MatMul_1/ReadVariableOp7sequential_95/lstm_95/lstm_cell/MatMul_1/ReadVariableOp2r
7sequential_95/lstm_95/lstm_cell/MatMul_2/ReadVariableOp7sequential_95/lstm_95/lstm_cell/MatMul_2/ReadVariableOp2r
7sequential_95/lstm_95/lstm_cell/MatMul_3/ReadVariableOp7sequential_95/lstm_95/lstm_cell/MatMul_3/ReadVariableOp2r
7sequential_95/lstm_95/lstm_cell/MatMul_4/ReadVariableOp7sequential_95/lstm_95/lstm_cell/MatMul_4/ReadVariableOp2r
7sequential_95/lstm_95/lstm_cell/MatMul_5/ReadVariableOp7sequential_95/lstm_95/lstm_cell/MatMul_5/ReadVariableOp:[ W
,
_output_shapes
:џџџџџџџџџћ
'
_user_specified_namelstm_95_input:($
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
resource"ЇL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*М
serving_defaultЈ
L
lstm_95_input;
serving_default_lstm_95_input:0џџџџџџџџџћ<
dense_950
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:яx
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
/__inference_sequential_95_layer_call_fn_1279206
/__inference_sequential_95_layer_call_fn_1279221Е
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
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279070
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279191Е
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
"__inference__wrapped_model_1278939lstm_95_input"
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
к
8trace_0
9trace_12Ѓ
)__inference_lstm_95_layer_call_fn_1279314
)__inference_lstm_95_layer_call_fn_1279325Ъ
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

:trace_0
;trace_12й
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279426
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279527Ъ
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
ф
Itrace_02Ч
*__inference_dense_95_layer_call_fn_1279540
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
џ
Jtrace_02т
E__inference_dense_95_layer_call_and_return_conditional_losses_1279550
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
!:2dense_95/kernel
:2dense_95/bias
+:)	ћ2lstm_95/lstm_cell/kernel
4:22"lstm_95/lstm_cell/recurrent_kernel
$:"2lstm_95/lstm_cell/bias
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
єBё
/__inference_sequential_95_layer_call_fn_1279206lstm_95_input"Ќ
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
єBё
/__inference_sequential_95_layer_call_fn_1279221lstm_95_input"Ќ
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
B
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279070lstm_95_input"Ќ
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
B
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279191lstm_95_input"Ќ
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
$__inference__update_step_xla_1279283
$__inference__update_step_xla_1279288
$__inference__update_step_xla_1279293
$__inference__update_step_xla_1279298
$__inference__update_step_xla_1279303Џ
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
нBк
%__inference_signature_wrapper_1279274lstm_95_input"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 "

kwonlyargs
jlstm_95_input
kwonlydefaults
 
annotationsЊ *
 
Ю
[trace_02Б
__inference_loss_fn_0_1279558
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
јBѕ
)__inference_lstm_95_layer_call_fn_1279314inputs"Н
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
јBѕ
)__inference_lstm_95_layer_call_fn_1279325inputs"Н
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
B
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279426inputs"Н
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
B
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279527inputs"Н
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
дBб
*__inference_dense_95_layer_call_fn_1279540inputs"
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
E__inference_dense_95_layer_call_and_return_conditional_losses_1279550inputs"
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
0:.	ћ2Adam/m/lstm_95/lstm_cell/kernel
0:.	ћ2Adam/v/lstm_95/lstm_cell/kernel
9:72)Adam/m/lstm_95/lstm_cell/recurrent_kernel
9:72)Adam/v/lstm_95/lstm_cell/recurrent_kernel
):'2Adam/m/lstm_95/lstm_cell/bias
):'2Adam/v/lstm_95/lstm_cell/bias
&:$2Adam/m/dense_95/kernel
&:$2Adam/v/dense_95/kernel
 :2Adam/m/dense_95/bias
 :2Adam/v/dense_95/bias
яBь
$__inference__update_step_xla_1279283gradientvariable"­
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
$__inference__update_step_xla_1279288gradientvariable"­
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
$__inference__update_step_xla_1279293gradientvariable"­
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
$__inference__update_step_xla_1279298gradientvariable"­
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
$__inference__update_step_xla_1279303gradientvariable"­
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
__inference_loss_fn_0_1279558"
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
$__inference__update_step_xla_1279283pjЂg
`Ђ]

gradient	ћ
52	Ђ
њ	ћ

p
` VariableSpec 
` ФьЁњ>
Њ "
 
$__inference__update_step_xla_1279288nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`рсэЁњ>
Њ "
 
$__inference__update_step_xla_1279293f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`РєХ њ>
Њ "
 
$__inference__update_step_xla_1279298nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`РЉ њ>
Њ "
 
$__inference__update_step_xla_1279303f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`р њ>
Њ "
 
"__inference__wrapped_model_1278939y;Ђ8
1Ђ.
,)
lstm_95_inputџџџџџџџџџћ
Њ "3Њ0
.
dense_95"
dense_95џџџџџџџџџЌ
E__inference_dense_95_layer_call_and_return_conditional_losses_1279550c/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
*__inference_dense_95_layer_call_fn_1279540X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџE
__inference_loss_fn_0_1279558$Ђ

Ђ 
Њ "
unknown Н
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279426u@Ђ=
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
 Н
D__inference_lstm_95_layer_call_and_return_conditional_losses_1279527u@Ђ=
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
 
)__inference_lstm_95_layer_call_fn_1279314j@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p

 
Њ "!
unknownџџџџџџџџџ
)__inference_lstm_95_layer_call_fn_1279325j@Ђ=
6Ђ3
%"
inputsџџџџџџџџџћ

 
p 

 
Њ "!
unknownџџџџџџџџџШ
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279070zCЂ@
9Ђ6
,)
lstm_95_inputџџџџџџџџџћ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ш
J__inference_sequential_95_layer_call_and_return_conditional_losses_1279191zCЂ@
9Ђ6
,)
lstm_95_inputџџџџџџџџџћ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ђ
/__inference_sequential_95_layer_call_fn_1279206oCЂ@
9Ђ6
,)
lstm_95_inputџџџџџџџџџћ
p

 
Њ "!
unknownџџџџџџџџџЂ
/__inference_sequential_95_layer_call_fn_1279221oCЂ@
9Ђ6
,)
lstm_95_inputџџџџџџџџџћ
p 

 
Њ "!
unknownџџџџџџџџџД
%__inference_signature_wrapper_1279274LЂI
Ђ 
BЊ?
=
lstm_95_input,)
lstm_95_inputџџџџџџџџџћ"3Њ0
.
dense_95"
dense_95џџџџџџџџџ