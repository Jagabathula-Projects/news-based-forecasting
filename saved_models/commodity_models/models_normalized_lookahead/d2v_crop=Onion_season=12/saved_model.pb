╗└
жЎ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
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
resourceИ
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
output"out_typeКэout_type"	
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
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
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628√Г
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
А
Adam/v/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_13/bias
y
(Adam/v/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_13/bias
y
(Adam/m/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/bias*
_output_shapes
:*
dtype0
Й
Adam/v/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*'
shared_nameAdam/v/dense_13/kernel
В
*Adam/v/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/kernel*
_output_shapes
:	╚*
dtype0
Й
Adam/m/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*'
shared_nameAdam/m/dense_13/kernel
В
*Adam/m/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/kernel*
_output_shapes
:	╚*
dtype0
У
Adam/v/lstm_13/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*.
shared_nameAdam/v/lstm_13/lstm_cell/bias
М
1Adam/v/lstm_13/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_13/lstm_cell/bias*
_output_shapes	
:а*
dtype0
У
Adam/m/lstm_13/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*.
shared_nameAdam/m/lstm_13/lstm_cell/bias
М
1Adam/m/lstm_13/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_13/lstm_cell/bias*
_output_shapes	
:а*
dtype0
░
)Adam/v/lstm_13/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*:
shared_name+)Adam/v/lstm_13/lstm_cell/recurrent_kernel
й
=Adam/v/lstm_13/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/v/lstm_13/lstm_cell/recurrent_kernel* 
_output_shapes
:
╚а*
dtype0
░
)Adam/m/lstm_13/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*:
shared_name+)Adam/m/lstm_13/lstm_cell/recurrent_kernel
й
=Adam/m/lstm_13/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)Adam/m/lstm_13/lstm_cell/recurrent_kernel* 
_output_shapes
:
╚а*
dtype0
Ь
Adam/v/lstm_13/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
№а*0
shared_name!Adam/v/lstm_13/lstm_cell/kernel
Х
3Adam/v/lstm_13/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_13/lstm_cell/kernel* 
_output_shapes
:
№а*
dtype0
Ь
Adam/m/lstm_13/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
№а*0
shared_name!Adam/m/lstm_13/lstm_cell/kernel
Х
3Adam/m/lstm_13/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_13/lstm_cell/kernel* 
_output_shapes
:
№а*
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
Е
lstm_13/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*'
shared_namelstm_13/lstm_cell/bias
~
*lstm_13/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell/bias*
_output_shapes	
:а*
dtype0
в
"lstm_13/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*3
shared_name$"lstm_13/lstm_cell/recurrent_kernel
Ы
6lstm_13/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp"lstm_13/lstm_cell/recurrent_kernel* 
_output_shapes
:
╚а*
dtype0
О
lstm_13/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
№а*)
shared_namelstm_13/lstm_cell/kernel
З
,lstm_13/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell/kernel* 
_output_shapes
:
№а*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
{
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚* 
shared_namedense_13/kernel
t
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes
:	╚*
dtype0
К
serving_default_lstm_13_inputPlaceholder*,
_output_shapes
:         №*
dtype0*!
shape:         №
╗
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_13_inputlstm_13/lstm_cell/kernellstm_13/lstm_cell/bias"lstm_13/lstm_cell/recurrent_kerneldense_13/kerneldense_13/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_351546

NoOpNoOp
Э)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╪(
value╬(B╦( B─(
Ъ
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
┴
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
ж
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
░
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
Б
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
Я

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
6
8trace_0
9trace_1
:trace_2
;trace_3* 
6
<trace_0
=trace_1
>trace_2
?trace_3* 
* 
у
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator
G
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
У
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Mtrace_0* 

Ntrace_0* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_13/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"lstm_13/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUElstm_13/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

O0*
* 
* 
* 
* 
* 
* 
R
*0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
P0
R1
T2
V3
X4*
'
Q0
S1
U2
W3
Y4*
C
Ztrace_0
[trace_1
\trace_2
]trace_3
^trace_4* 
* 

_trace_0* 
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
У
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

etrace_0
ftrace_1* 

gtrace_0
htrace_1* 
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
i	variables
j	keras_api
	ktotal
	lcount*
jd
VARIABLE_VALUEAdam/m/lstm_13/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_13/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/m/lstm_13/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/v/lstm_13/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/lstm_13/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/lstm_13/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_13/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_13/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_13/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_13/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
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
k0
l1*

i	variables*
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
Б
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_13/kerneldense_13/biaslstm_13/lstm_cell/kernel"lstm_13/lstm_cell/recurrent_kernellstm_13/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_13/lstm_cell/kernelAdam/v/lstm_13/lstm_cell/kernel)Adam/m/lstm_13/lstm_cell/recurrent_kernel)Adam/v/lstm_13/lstm_cell/recurrent_kernelAdam/m/lstm_13/lstm_cell/biasAdam/v/lstm_13/lstm_cell/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biastotalcountConst* 
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_353308
№
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_13/kerneldense_13/biaslstm_13/lstm_cell/kernel"lstm_13/lstm_cell/recurrent_kernellstm_13/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_13/lstm_cell/kernelAdam/v/lstm_13/lstm_cell/kernel)Adam/m/lstm_13/lstm_cell/recurrent_kernel)Adam/v/lstm_13/lstm_cell/recurrent_kernelAdam/m/lstm_13/lstm_cell/biasAdam/v/lstm_13/lstm_cell/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biastotalcount*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_353374┴б
я%
╥
while_body_350452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_350476_0:
№а'
while_lstm_cell_350478_0:	а,
while_lstm_cell_350480_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_350476:
№а%
while_lstm_cell_350478:	а*
while_lstm_cell_350480:
╚аИв'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0к
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_350476_0while_lstm_cell_350478_0while_lstm_cell_350480_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350437r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ╚О
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         ╚R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_350476while_lstm_cell_350476_0"2
while_lstm_cell_350478while_lstm_cell_350478_0"2
while_lstm_cell_350480while_lstm_cell_350480_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2R
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name350476:&	"
 
_user_specified_name350478:&
"
 
_user_specified_name350480
Х╧
Х
C__inference_lstm_13_layer_call_and_return_conditional_losses_352622

inputs;
'lstm_cell_split_readvariableop_resource:
№а8
)lstm_cell_split_1_readvariableop_resource:	а5
!lstm_cell_readvariableop_resource:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ц
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?П
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         №q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧б
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>┼
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::э╧`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ь
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚Ж
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0─
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╢
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЗ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЖ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Г
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚b
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      й
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╓
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_352419*
condR
while_cond_352418*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    и
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚з
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
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
√	
Ў
D__inference_dense_13_layer_call_and_return_conditional_losses_351183

inputs1
matmul_readvariableop_resource:	╚-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
аM
ё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353172

inputs
states_0
states_11
split_readvariableop_resource:
№а.
split_1_readvariableop_resource:	а+
readvariableop_resource:
╚а
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         №W
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::э╧V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚Y
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:         №[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:         №[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:         №[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:         №Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
№а*
dtype0ж
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ╚`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ╚`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ╚`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ╚S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:а*
dtype0Ш
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ╚m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ╚m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ╚m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ╚_
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ╚_
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ╚_
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ╚_
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ╚h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   f
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
╚╚*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ╚e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ╚N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚i
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ╚X
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚i
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ╚J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ╚V
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚W
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      ў
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚i
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ╚[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚Ю
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ╚у
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:         №:         ╚:         ╚: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:         №
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states_0:RN
(
_output_shapes
:         ╚
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
╒
е
I__inference_sequential_13_layer_call_and_return_conditional_losses_351194
lstm_13_input"
lstm_13_351167:
№а
lstm_13_351169:	а"
lstm_13_351171:
╚а"
dense_13_351184:	╚
dense_13_351186:
identityИв dense_13/StatefulPartitionedCallвlstm_13/StatefulPartitionedCallвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЙ
lstm_13/StatefulPartitionedCallStatefulPartitionedCalllstm_13_inputlstm_13_351167lstm_13_351169lstm_13_351171*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_351166Х
 dense_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0dense_13_351184dense_13_351186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_351183Х
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_13_351171* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         о
NoOpNoOp!^dense_13/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCallE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_13_input:&"
 
_user_specified_name351167:&"
 
_user_specified_name351169:&"
 
_user_specified_name351171:&"
 
_user_specified_name351184:&"
 
_user_specified_name351186
тu
Д	
while_body_352732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
№а@
1while_lstm_cell_split_1_readvariableop_resource_0:	а=
)while_lstm_cell_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
№а>
/while_lstm_cell_split_1_readvariableop_resource:	а;
'while_lstm_cell_readvariableop_resource:
╚аИвwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?и
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::э╧f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚г
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0╓
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitМ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЩ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"    ╚   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskШ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Х
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚n
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚Г
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚Ж
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚З
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"      ╟
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚Л
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚w
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚В

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
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2@
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
:         ╚:.*
(
_output_shapes
:         ╚:GC
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
я%
╥
while_body_350657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_350681_0:
№а'
while_lstm_cell_350683_0:	а,
while_lstm_cell_350685_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_350681:
№а%
while_lstm_cell_350683:	а*
while_lstm_cell_350685:
╚аИв'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0к
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_350681_0while_lstm_cell_350683_0while_lstm_cell_350685_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350642r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: О
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ╚О
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         ╚R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_350681while_lstm_cell_350681_0"2
while_lstm_cell_350683while_lstm_cell_350683_0"2
while_lstm_cell_350685while_lstm_cell_350685_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2R
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name350681:&	"
 
_user_specified_name350683:&
"
 
_user_specified_name350685
╞	
├
while_cond_352731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_352731___redundant_placeholder04
0while_while_cond_352731___redundant_placeholder14
0while_while_cond_352731___redundant_placeholder24
0while_while_cond_352731___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ш

√
.__inference_sequential_13_layer_call_fn_351478
lstm_13_input
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_13_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_351194o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_13_input:&"
 
_user_specified_name351466:&"
 
_user_specified_name351468:&"
 
_user_specified_name351470:&"
 
_user_specified_name351472:&"
 
_user_specified_name351474
иж
И
'sequential_13_lstm_13_while_body_350116H
Dsequential_13_lstm_13_while_sequential_13_lstm_13_while_loop_counterN
Jsequential_13_lstm_13_while_sequential_13_lstm_13_while_maximum_iterations+
'sequential_13_lstm_13_while_placeholder-
)sequential_13_lstm_13_while_placeholder_1-
)sequential_13_lstm_13_while_placeholder_2-
)sequential_13_lstm_13_while_placeholder_3G
Csequential_13_lstm_13_while_sequential_13_lstm_13_strided_slice_1_0Г
sequential_13_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_13_tensorarrayunstack_tensorlistfromtensor_0Y
Esequential_13_lstm_13_while_lstm_cell_split_readvariableop_resource_0:
№аV
Gsequential_13_lstm_13_while_lstm_cell_split_1_readvariableop_resource_0:	аS
?sequential_13_lstm_13_while_lstm_cell_readvariableop_resource_0:
╚а(
$sequential_13_lstm_13_while_identity*
&sequential_13_lstm_13_while_identity_1*
&sequential_13_lstm_13_while_identity_2*
&sequential_13_lstm_13_while_identity_3*
&sequential_13_lstm_13_while_identity_4*
&sequential_13_lstm_13_while_identity_5E
Asequential_13_lstm_13_while_sequential_13_lstm_13_strided_slice_1Б
}sequential_13_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_13_tensorarrayunstack_tensorlistfromtensorW
Csequential_13_lstm_13_while_lstm_cell_split_readvariableop_resource:
№аT
Esequential_13_lstm_13_while_lstm_cell_split_1_readvariableop_resource:	аQ
=sequential_13_lstm_13_while_lstm_cell_readvariableop_resource:
╚аИв4sequential_13/lstm_13/while/lstm_cell/ReadVariableOpв6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_1в6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_2в6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_3в:sequential_13/lstm_13/while/lstm_cell/split/ReadVariableOpв<sequential_13/lstm_13/while/lstm_cell/split_1/ReadVariableOpЮ
Msequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   Х
?sequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_13_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_13_tensorarrayunstack_tensorlistfromtensor_0'sequential_13_lstm_13_while_placeholderVsequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0╣
5sequential_13/lstm_13/while/lstm_cell/ones_like/ShapeShapeFsequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧z
5sequential_13/lstm_13/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ъ
/sequential_13/lstm_13/while/lstm_cell/ones_likeFill>sequential_13/lstm_13/while/lstm_cell/ones_like/Shape:output:0>sequential_13/lstm_13/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №Ю
7sequential_13/lstm_13/while/lstm_cell/ones_like_1/ShapeShape)sequential_13_lstm_13_while_placeholder_2*
T0*
_output_shapes
::э╧|
7sequential_13/lstm_13/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ё
1sequential_13/lstm_13/while/lstm_cell/ones_like_1Fill@sequential_13/lstm_13/while/lstm_cell/ones_like_1/Shape:output:0@sequential_13/lstm_13/while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚х
)sequential_13/lstm_13/while/lstm_cell/mulMulFsequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_13/lstm_13/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №ч
+sequential_13/lstm_13/while/lstm_cell/mul_1MulFsequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_13/lstm_13/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №ч
+sequential_13/lstm_13/while/lstm_cell/mul_2MulFsequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_13/lstm_13/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №ч
+sequential_13/lstm_13/while/lstm_cell/mul_3MulFsequential_13/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_13/lstm_13/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №w
5sequential_13/lstm_13/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┬
:sequential_13/lstm_13/while/lstm_cell/split/ReadVariableOpReadVariableOpEsequential_13_lstm_13_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0Ш
+sequential_13/lstm_13/while/lstm_cell/splitSplit>sequential_13/lstm_13/while/lstm_cell/split/split_dim:output:0Bsequential_13/lstm_13/while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split╬
,sequential_13/lstm_13/while/lstm_cell/MatMulMatMul-sequential_13/lstm_13/while/lstm_cell/mul:z:04sequential_13/lstm_13/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚╥
.sequential_13/lstm_13/while/lstm_cell/MatMul_1MatMul/sequential_13/lstm_13/while/lstm_cell/mul_1:z:04sequential_13/lstm_13/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚╥
.sequential_13/lstm_13/while/lstm_cell/MatMul_2MatMul/sequential_13/lstm_13/while/lstm_cell/mul_2:z:04sequential_13/lstm_13/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚╥
.sequential_13/lstm_13/while/lstm_cell/MatMul_3MatMul/sequential_13/lstm_13/while/lstm_cell/mul_3:z:04sequential_13/lstm_13/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚y
7sequential_13/lstm_13/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ┴
<sequential_13/lstm_13/while/lstm_cell/split_1/ReadVariableOpReadVariableOpGsequential_13_lstm_13_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0К
-sequential_13/lstm_13/while/lstm_cell/split_1Split@sequential_13/lstm_13/while/lstm_cell/split_1/split_dim:output:0Dsequential_13/lstm_13/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_split█
-sequential_13/lstm_13/while/lstm_cell/BiasAddBiasAdd6sequential_13/lstm_13/while/lstm_cell/MatMul:product:06sequential_13/lstm_13/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚▀
/sequential_13/lstm_13/while/lstm_cell/BiasAdd_1BiasAdd8sequential_13/lstm_13/while/lstm_cell/MatMul_1:product:06sequential_13/lstm_13/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚▀
/sequential_13/lstm_13/while/lstm_cell/BiasAdd_2BiasAdd8sequential_13/lstm_13/while/lstm_cell/MatMul_2:product:06sequential_13/lstm_13/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚▀
/sequential_13/lstm_13/while/lstm_cell/BiasAdd_3BiasAdd8sequential_13/lstm_13/while/lstm_cell/MatMul_3:product:06sequential_13/lstm_13/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚╠
+sequential_13/lstm_13/while/lstm_cell/mul_4Mul)sequential_13_lstm_13_while_placeholder_2:sequential_13/lstm_13/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╠
+sequential_13/lstm_13/while/lstm_cell/mul_5Mul)sequential_13_lstm_13_while_placeholder_2:sequential_13/lstm_13/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╠
+sequential_13/lstm_13/while/lstm_cell/mul_6Mul)sequential_13_lstm_13_while_placeholder_2:sequential_13/lstm_13/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╠
+sequential_13/lstm_13/while/lstm_cell/mul_7Mul)sequential_13_lstm_13_while_placeholder_2:sequential_13/lstm_13/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╢
4sequential_13/lstm_13/while/lstm_cell/ReadVariableOpReadVariableOp?sequential_13_lstm_13_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0К
9sequential_13/lstm_13/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        М
;sequential_13/lstm_13/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   М
;sequential_13/lstm_13/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      л
3sequential_13/lstm_13/while/lstm_cell/strided_sliceStridedSlice<sequential_13/lstm_13/while/lstm_cell/ReadVariableOp:value:0Bsequential_13/lstm_13/while/lstm_cell/strided_slice/stack:output:0Dsequential_13/lstm_13/while/lstm_cell/strided_slice/stack_1:output:0Dsequential_13/lstm_13/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask┌
.sequential_13/lstm_13/while/lstm_cell/MatMul_4MatMul/sequential_13/lstm_13/while/lstm_cell/mul_4:z:0<sequential_13/lstm_13/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚╫
)sequential_13/lstm_13/while/lstm_cell/addAddV26sequential_13/lstm_13/while/lstm_cell/BiasAdd:output:08sequential_13/lstm_13/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚Ъ
-sequential_13/lstm_13/while/lstm_cell/SigmoidSigmoid-sequential_13/lstm_13/while/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚╕
6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_1ReadVariableOp?sequential_13_lstm_13_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0М
;sequential_13/lstm_13/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
=sequential_13/lstm_13/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  О
=sequential_13/lstm_13/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╡
5sequential_13/lstm_13/while/lstm_cell/strided_slice_1StridedSlice>sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_1:value:0Dsequential_13/lstm_13/while/lstm_cell/strided_slice_1/stack:output:0Fsequential_13/lstm_13/while/lstm_cell/strided_slice_1/stack_1:output:0Fsequential_13/lstm_13/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask▄
.sequential_13/lstm_13/while/lstm_cell/MatMul_5MatMul/sequential_13/lstm_13/while/lstm_cell/mul_5:z:0>sequential_13/lstm_13/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚█
+sequential_13/lstm_13/while/lstm_cell/add_1AddV28sequential_13/lstm_13/while/lstm_cell/BiasAdd_1:output:08sequential_13/lstm_13/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚Ю
/sequential_13/lstm_13/while/lstm_cell/Sigmoid_1Sigmoid/sequential_13/lstm_13/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚┼
+sequential_13/lstm_13/while/lstm_cell/mul_8Mul3sequential_13/lstm_13/while/lstm_cell/Sigmoid_1:y:0)sequential_13_lstm_13_while_placeholder_3*
T0*(
_output_shapes
:         ╚╕
6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_2ReadVariableOp?sequential_13_lstm_13_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0М
;sequential_13/lstm_13/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  О
=sequential_13/lstm_13/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  О
=sequential_13/lstm_13/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╡
5sequential_13/lstm_13/while/lstm_cell/strided_slice_2StridedSlice>sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_2:value:0Dsequential_13/lstm_13/while/lstm_cell/strided_slice_2/stack:output:0Fsequential_13/lstm_13/while/lstm_cell/strided_slice_2/stack_1:output:0Fsequential_13/lstm_13/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask▄
.sequential_13/lstm_13/while/lstm_cell/MatMul_6MatMul/sequential_13/lstm_13/while/lstm_cell/mul_6:z:0>sequential_13/lstm_13/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚█
+sequential_13/lstm_13/while/lstm_cell/add_2AddV28sequential_13/lstm_13/while/lstm_cell/BiasAdd_2:output:08sequential_13/lstm_13/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚Ц
*sequential_13/lstm_13/while/lstm_cell/TanhTanh/sequential_13/lstm_13/while/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚╚
+sequential_13/lstm_13/while/lstm_cell/mul_9Mul1sequential_13/lstm_13/while/lstm_cell/Sigmoid:y:0.sequential_13/lstm_13/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚╔
+sequential_13/lstm_13/while/lstm_cell/add_3AddV2/sequential_13/lstm_13/while/lstm_cell/mul_8:z:0/sequential_13/lstm_13/while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚╕
6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_3ReadVariableOp?sequential_13_lstm_13_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0М
;sequential_13/lstm_13/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  О
=sequential_13/lstm_13/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        О
=sequential_13/lstm_13/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╡
5sequential_13/lstm_13/while/lstm_cell/strided_slice_3StridedSlice>sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_3:value:0Dsequential_13/lstm_13/while/lstm_cell/strided_slice_3/stack:output:0Fsequential_13/lstm_13/while/lstm_cell/strided_slice_3/stack_1:output:0Fsequential_13/lstm_13/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask▄
.sequential_13/lstm_13/while/lstm_cell/MatMul_7MatMul/sequential_13/lstm_13/while/lstm_cell/mul_7:z:0>sequential_13/lstm_13/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚█
+sequential_13/lstm_13/while/lstm_cell/add_4AddV28sequential_13/lstm_13/while/lstm_cell/BiasAdd_3:output:08sequential_13/lstm_13/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚Ю
/sequential_13/lstm_13/while/lstm_cell/Sigmoid_2Sigmoid/sequential_13/lstm_13/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚Ш
,sequential_13/lstm_13/while/lstm_cell/Tanh_1Tanh/sequential_13/lstm_13/while/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚═
,sequential_13/lstm_13/while/lstm_cell/mul_10Mul3sequential_13/lstm_13/while/lstm_cell/Sigmoid_2:y:00sequential_13/lstm_13/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚И
Fsequential_13/lstm_13/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ├
@sequential_13/lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_13_lstm_13_while_placeholder_1Osequential_13/lstm_13/while/TensorArrayV2Write/TensorListSetItem/index:output:00sequential_13/lstm_13/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥c
!sequential_13/lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
sequential_13/lstm_13/while/addAddV2'sequential_13_lstm_13_while_placeholder*sequential_13/lstm_13/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_13/lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_13/lstm_13/while/add_1AddV2Dsequential_13_lstm_13_while_sequential_13_lstm_13_while_loop_counter,sequential_13/lstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
$sequential_13/lstm_13/while/IdentityIdentity%sequential_13/lstm_13/while/add_1:z:0!^sequential_13/lstm_13/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_13/lstm_13/while/Identity_1IdentityJsequential_13_lstm_13_while_sequential_13_lstm_13_while_maximum_iterations!^sequential_13/lstm_13/while/NoOp*
T0*
_output_shapes
: Ы
&sequential_13/lstm_13/while/Identity_2Identity#sequential_13/lstm_13/while/add:z:0!^sequential_13/lstm_13/while/NoOp*
T0*
_output_shapes
: ╚
&sequential_13/lstm_13/while/Identity_3IdentityPsequential_13/lstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_13/lstm_13/while/NoOp*
T0*
_output_shapes
: ║
&sequential_13/lstm_13/while/Identity_4Identity0sequential_13/lstm_13/while/lstm_cell/mul_10:z:0!^sequential_13/lstm_13/while/NoOp*
T0*(
_output_shapes
:         ╚╣
&sequential_13/lstm_13/while/Identity_5Identity/sequential_13/lstm_13/while/lstm_cell/add_3:z:0!^sequential_13/lstm_13/while/NoOp*
T0*(
_output_shapes
:         ╚Ь
 sequential_13/lstm_13/while/NoOpNoOp5^sequential_13/lstm_13/while/lstm_cell/ReadVariableOp7^sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_17^sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_27^sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_3;^sequential_13/lstm_13/while/lstm_cell/split/ReadVariableOp=^sequential_13/lstm_13/while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "U
$sequential_13_lstm_13_while_identity-sequential_13/lstm_13/while/Identity:output:0"Y
&sequential_13_lstm_13_while_identity_1/sequential_13/lstm_13/while/Identity_1:output:0"Y
&sequential_13_lstm_13_while_identity_2/sequential_13/lstm_13/while/Identity_2:output:0"Y
&sequential_13_lstm_13_while_identity_3/sequential_13/lstm_13/while/Identity_3:output:0"Y
&sequential_13_lstm_13_while_identity_4/sequential_13/lstm_13/while/Identity_4:output:0"Y
&sequential_13_lstm_13_while_identity_5/sequential_13/lstm_13/while/Identity_5:output:0"А
=sequential_13_lstm_13_while_lstm_cell_readvariableop_resource?sequential_13_lstm_13_while_lstm_cell_readvariableop_resource_0"Р
Esequential_13_lstm_13_while_lstm_cell_split_1_readvariableop_resourceGsequential_13_lstm_13_while_lstm_cell_split_1_readvariableop_resource_0"М
Csequential_13_lstm_13_while_lstm_cell_split_readvariableop_resourceEsequential_13_lstm_13_while_lstm_cell_split_readvariableop_resource_0"И
Asequential_13_lstm_13_while_sequential_13_lstm_13_strided_slice_1Csequential_13_lstm_13_while_sequential_13_lstm_13_strided_slice_1_0"А
}sequential_13_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_13_tensorarrayunstack_tensorlistfromtensorsequential_13_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2l
4sequential_13/lstm_13/while/lstm_cell/ReadVariableOp4sequential_13/lstm_13/while/lstm_cell/ReadVariableOp2p
6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_16sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_12p
6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_26sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_22p
6sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_36sequential_13/lstm_13/while/lstm_cell/ReadVariableOp_32x
:sequential_13/lstm_13/while/lstm_cell/split/ReadVariableOp:sequential_13/lstm_13/while/lstm_cell/split/ReadVariableOp2|
<sequential_13/lstm_13/while/lstm_cell/split_1/ReadVariableOp<sequential_13/lstm_13/while/lstm_cell/split_1/ReadVariableOp:` \

_output_shapes
: 
B
_user_specified_name*(sequential_13/lstm_13/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_13/lstm_13/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:]Y

_output_shapes
: 
?
_user_specified_name'%sequential_13/lstm_13/strided_slice_1:uq

_output_shapes
: 
W
_user_specified_name?=sequential_13/lstm_13/TensorArrayUnstack/TensorListFromTensor:($
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
п
L
#__inference__update_step_xla_351565
gradient
variable:	а*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:а: *
	_noinline(:E A

_output_shapes	
:а
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╞	
├
while_cond_350962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_350962___redundant_placeholder04
0while_while_cond_350962___redundant_placeholder14
0while_while_cond_350962___redundant_placeholder24
0while_while_cond_350962___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
√	
Ў
D__inference_dense_13_layer_call_and_return_conditional_losses_352894

inputs1
matmul_readvariableop_resource:	╚-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
√@
┬
C__inference_lstm_13_layer_call_and_return_conditional_losses_350526

inputs$
lstm_cell_350438:
№а
lstm_cell_350440:	а$
lstm_cell_350442:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpв!lstm_cell/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_maskь
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_350438lstm_cell_350440lstm_cell_350442*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350437n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_350438lstm_cell_350440lstm_cell_350442*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_350452*
condR
while_cond_350451*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ч
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_cell_350442* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚Х
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  №
 
_user_specified_nameinputs:&"
 
_user_specified_name350438:&"
 
_user_specified_name350440:&"
 
_user_specified_name350442
╞	
├
while_cond_351305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_351305___redundant_placeholder04
0while_while_cond_351305___redundant_placeholder14
0while_while_cond_351305___redundant_placeholder24
0while_while_cond_351305___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╒
е
I__inference_sequential_13_layer_call_and_return_conditional_losses_351463
lstm_13_input"
lstm_13_351446:
№а
lstm_13_351448:	а"
lstm_13_351450:
╚а"
dense_13_351453:	╚
dense_13_351455:
identityИв dense_13/StatefulPartitionedCallвlstm_13/StatefulPartitionedCallвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpЙ
lstm_13/StatefulPartitionedCallStatefulPartitionedCalllstm_13_inputlstm_13_351446lstm_13_351448lstm_13_351450*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_351445Х
 dense_13/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0dense_13_351453dense_13_351455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_351183Х
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_13_351450* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         о
NoOpNoOp!^dense_13/StatefulPartitionedCall ^lstm_13/StatefulPartitionedCallE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_13_input:&"
 
_user_specified_name351446:&"
 
_user_specified_name351448:&"
 
_user_specified_name351450:&"
 
_user_specified_name351453:&"
 
_user_specified_name351455
╘
╖
(__inference_lstm_13_layer_call_fn_351608

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_351166p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs:&"
 
_user_specified_name351600:&"
 
_user_specified_name351602:&"
 
_user_specified_name351604
АК
я
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350437

inputs

states
states_11
split_readvariableop_resource:
№а.
split_1_readvariableop_resource:	а+
readvariableop_resource:
╚а
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         №R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:         №]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         №T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:         №_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧С
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>н
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:         №_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧С
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>н
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:         №_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧С
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>н
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №U
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::э╧V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚`
mulMulinputsdropout/SelectV2:output:0*
T0*(
_output_shapes
:         №d
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №d
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №d
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
№а*
dtype0ж
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ╚`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ╚`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ╚`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ╚S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:а*
dtype0Ш
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ╚m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ╚m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ╚m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ╚d
mul_4Mulstatesdropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚d
mul_5Mulstatesdropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚d
mul_6Mulstatesdropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚d
mul_7Mulstatesdropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   f
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
╚╚*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ╚e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ╚N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚i
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ╚X
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚i
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ╚J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ╚V
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚W
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      ў
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚i
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ╚[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚Ю
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ╚у
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:         №:         ╚:         ╚: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:         №
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_namestates:PL
(
_output_shapes
:         ╚
 
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
▐├
Д	
while_body_350963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
№а@
1while_lstm_cell_split_1_readvariableop_resource_0:	а=
)while_lstm_cell_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
№а>
/while_lstm_cell_split_1_readvariableop_resource:	а;
'while_lstm_cell_readvariableop_resource:
╚аИвwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?и
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?б
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         №}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧н
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╫
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╘
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::э╧f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚к
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0╓
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitМ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЩ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"    ╚   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskШ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Х
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚n
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚Г
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚Ж
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚З
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"      ╟
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚Л
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚w
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚В

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
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2@
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
:         ╚:.*
(
_output_shapes
:         ╚:GC
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
╞	
├
while_cond_350656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_350656___redundant_placeholder04
0while_while_cond_350656___redundant_placeholder14
0while_while_cond_350656___redundant_placeholder24
0while_while_cond_350656___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╛
Q
#__inference__update_step_xla_351555
gradient
variable:
№а*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
№а: *
	_noinline(:J F
 
_output_shapes
:
№а
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ь
╣
(__inference_lstm_13_layer_call_fn_351586
inputs_0
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_350526p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  №
"
_user_specified_name
inputs_0:&"
 
_user_specified_name351578:&"
 
_user_specified_name351580:&"
 
_user_specified_name351582
╕╧
Ч
C__inference_lstm_13_layer_call_and_return_conditional_losses_351996
inputs_0;
'lstm_cell_split_readvariableop_resource:
№а8
)lstm_cell_split_1_readvariableop_resource:	а5
!lstm_cell_readvariableop_resource:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ц
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?П
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         №q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧б
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>┼
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::э╧`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ь
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚Ж
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0─
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╢
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЗ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЖ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Г
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚b
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      й
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╓
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_351793*
condR
while_cond_351792*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    и
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚з
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  №
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
м
K
#__inference__update_step_xla_351575
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
▐├
Д	
while_body_351793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
№а@
1while_lstm_cell_split_1_readvariableop_resource_0:	а=
)while_lstm_cell_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
№а>
/while_lstm_cell_split_1_readvariableop_resource:	а;
'while_lstm_cell_readvariableop_resource:
╚аИвwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?и
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?б
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         №}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧н
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╫
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╘
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::э╧f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚к
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0╓
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitМ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЩ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"    ╚   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskШ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Х
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚n
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚Г
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚Ж
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚З
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"      ╟
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚Л
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚w
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚В

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
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2@
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
:         ╚:.*
(
_output_shapes
:         ╚:GC
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
╩
ї
*__inference_lstm_cell_layer_call_fn_352919

inputs
states_0
states_1
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identity

identity_1

identity_2ИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350437p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ╚r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╚<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:         №:         ╚:         ╚: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         №
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states_0:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states_1:&"
 
_user_specified_name352907:&"
 
_user_specified_name352909:&"
 
_user_specified_name352911
Х╧
Х
C__inference_lstm_13_layer_call_and_return_conditional_losses_351166

inputs;
'lstm_cell_split_readvariableop_resource:
№а8
)lstm_cell_split_1_readvariableop_resource:	а5
!lstm_cell_readvariableop_resource:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ц
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?П
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         №q
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧б
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>┼
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?У
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №s
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╦
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::э╧`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ь
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Х
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧е
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╦
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚Ж
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №К
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0─
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╢
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЗ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚А
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЖ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Г
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚b
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      й
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╓
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_350963*
condR
while_cond_350962*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    и
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚з
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
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
Ї
Ч
)__inference_dense_13_layer_call_fn_352884

inputs
unknown:	╚
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_351183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs:&"
 
_user_specified_name352878:&"
 
_user_specified_name352880
РК
ё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353086

inputs
states_0
states_11
split_readvariableop_resource:
№а.
split_1_readvariableop_resource:	а+
readvariableop_resource:
╚а
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         №R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:         №]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         №T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:         №_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧С
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>н
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:         №_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧С
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>н
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:         №_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::э╧С
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>н
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №W
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::э╧V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚a
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::э╧С
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>н
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚`
mulMulinputsdropout/SelectV2:output:0*
T0*(
_output_shapes
:         №d
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №d
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №d
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
№а*
dtype0ж
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ╚`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ╚`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ╚`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ╚S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:а*
dtype0Ш
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ╚m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ╚m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ╚m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ╚f
mul_4Mulstates_0dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚f
mul_5Mulstates_0dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚f
mul_6Mulstates_0dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚f
mul_7Mulstates_0dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   f
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
╚╚*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ╚e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ╚N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚i
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ╚X
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚i
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ╚J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ╚V
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚W
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      ў
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚i
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ╚[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚Ю
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ╚у
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:         №:         ╚:         ╚: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:         №
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states_0:RN
(
_output_shapes
:         ╚
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
╩
ї
*__inference_lstm_cell_layer_call_fn_352936

inputs
states_0
states_1
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identity

identity_1

identity_2ИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350642p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ╚r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╚<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:         №:         ╚:         ╚: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         №
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states_0:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states_1:&"
 
_user_specified_name352924:&"
 
_user_specified_name352926:&"
 
_user_specified_name352928
╚З
Х
C__inference_lstm_13_layer_call_and_return_conditional_losses_352871

inputs;
'lstm_cell_split_readvariableop_resource:
№а8
)lstm_cell_split_1_readvariableop_resource:	а5
!lstm_cell_readvariableop_resource:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ц
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::э╧`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ь
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0─
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╢
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЗ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЖ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Г
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚b
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      й
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╓
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_352732*
condR
while_cond_352731*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    и
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚з
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
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
╚З
Х
C__inference_lstm_13_layer_call_and_return_conditional_losses_351445

inputs;
'lstm_cell_split_readvariableop_resource:
№а8
)lstm_cell_split_1_readvariableop_resource:	а5
!lstm_cell_readvariableop_resource:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ц
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::э╧`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ь
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0─
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╢
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЗ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЖ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Г
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚b
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      й
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╓
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_351306*
condR
while_cond_351305*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    и
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚з
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
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
тu
Д	
while_body_351306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
№а@
1while_lstm_cell_split_1_readvariableop_resource_0:	а=
)while_lstm_cell_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
№а>
/while_lstm_cell_split_1_readvariableop_resource:	а;
'while_lstm_cell_readvariableop_resource:
╚аИвwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?и
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::э╧f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚г
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0╓
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitМ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЩ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"    ╚   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskШ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Х
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚n
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚Г
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚Ж
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚З
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"      ╟
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚Л
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚w
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚В

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
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2@
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
:         ╚:.*
(
_output_shapes
:         ╚:GC
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
тu
Д	
while_body_352106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
№а@
1while_lstm_cell_split_1_readvariableop_resource_0:	а=
)while_lstm_cell_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
№а>
/while_lstm_cell_split_1_readvariableop_resource:	а;
'while_lstm_cell_readvariableop_resource:
╚аИвwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?и
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::э╧f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚г
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №е
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0╓
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitМ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЩ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"    ╚   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskШ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Х
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚n
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚Г
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚Ж
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚З
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"      ╟
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚Л
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚w
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚В

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
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2@
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
:         ╚:.*
(
_output_shapes
:         ╚:GC
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
ГЬ
ж
__inference__traced_save_353308
file_prefix9
&read_disablecopyonread_dense_13_kernel:	╚4
&read_1_disablecopyonread_dense_13_bias:E
1read_2_disablecopyonread_lstm_13_lstm_cell_kernel:
№аO
;read_3_disablecopyonread_lstm_13_lstm_cell_recurrent_kernel:
╚а>
/read_4_disablecopyonread_lstm_13_lstm_cell_bias:	а,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: L
8read_7_disablecopyonread_adam_m_lstm_13_lstm_cell_kernel:
№аL
8read_8_disablecopyonread_adam_v_lstm_13_lstm_cell_kernel:
№аV
Bread_9_disablecopyonread_adam_m_lstm_13_lstm_cell_recurrent_kernel:
╚аW
Cread_10_disablecopyonread_adam_v_lstm_13_lstm_cell_recurrent_kernel:
╚аF
7read_11_disablecopyonread_adam_m_lstm_13_lstm_cell_bias:	аF
7read_12_disablecopyonread_adam_v_lstm_13_lstm_cell_bias:	аC
0read_13_disablecopyonread_adam_m_dense_13_kernel:	╚C
0read_14_disablecopyonread_adam_v_dense_13_kernel:	╚<
.read_15_disablecopyonread_adam_m_dense_13_bias:<
.read_16_disablecopyonread_adam_v_dense_13_bias:)
read_17_disablecopyonread_total: )
read_18_disablecopyonread_count: 
savev2_const
identity_39ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_13_kernel"/device:CPU:0*
_output_shapes
 г
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_13_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	╚*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	╚b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	╚z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_13_bias"/device:CPU:0*
_output_shapes
 в
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_13_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:Е
Read_2/DisableCopyOnReadDisableCopyOnRead1read_2_disablecopyonread_lstm_13_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 │
Read_2/ReadVariableOpReadVariableOp1read_2_disablecopyonread_lstm_13_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
№а*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
№аe

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
№аП
Read_3/DisableCopyOnReadDisableCopyOnRead;read_3_disablecopyonread_lstm_13_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╜
Read_3/ReadVariableOpReadVariableOp;read_3_disablecopyonread_lstm_13_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
╚а*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
╚аe

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
╚аГ
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_lstm_13_lstm_cell_bias"/device:CPU:0*
_output_shapes
 м
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_lstm_13_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:а`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:аv
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
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
 Ю
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
: М
Read_7/DisableCopyOnReadDisableCopyOnRead8read_7_disablecopyonread_adam_m_lstm_13_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ║
Read_7/ReadVariableOpReadVariableOp8read_7_disablecopyonread_adam_m_lstm_13_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
№а*
dtype0p
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
№аg
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0* 
_output_shapes
:
№аМ
Read_8/DisableCopyOnReadDisableCopyOnRead8read_8_disablecopyonread_adam_v_lstm_13_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ║
Read_8/ReadVariableOpReadVariableOp8read_8_disablecopyonread_adam_v_lstm_13_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
№а*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
№аg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
№аЦ
Read_9/DisableCopyOnReadDisableCopyOnReadBread_9_disablecopyonread_adam_m_lstm_13_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ─
Read_9/ReadVariableOpReadVariableOpBread_9_disablecopyonread_adam_m_lstm_13_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
╚а*
dtype0p
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
╚аg
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0* 
_output_shapes
:
╚аШ
Read_10/DisableCopyOnReadDisableCopyOnReadCread_10_disablecopyonread_adam_v_lstm_13_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╟
Read_10/ReadVariableOpReadVariableOpCread_10_disablecopyonread_adam_v_lstm_13_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
╚а*
dtype0q
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
╚аg
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
╚аМ
Read_11/DisableCopyOnReadDisableCopyOnRead7read_11_disablecopyonread_adam_m_lstm_13_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ╢
Read_11/ReadVariableOpReadVariableOp7read_11_disablecopyonread_adam_m_lstm_13_lstm_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:аb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:аМ
Read_12/DisableCopyOnReadDisableCopyOnRead7read_12_disablecopyonread_adam_v_lstm_13_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ╢
Read_12/ReadVariableOpReadVariableOp7read_12_disablecopyonread_adam_v_lstm_13_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:а*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:аb
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:аЕ
Read_13/DisableCopyOnReadDisableCopyOnRead0read_13_disablecopyonread_adam_m_dense_13_kernel"/device:CPU:0*
_output_shapes
 │
Read_13/ReadVariableOpReadVariableOp0read_13_disablecopyonread_adam_m_dense_13_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	╚*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	╚f
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	╚Е
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_v_dense_13_kernel"/device:CPU:0*
_output_shapes
 │
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_v_dense_13_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	╚*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	╚f
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	╚Г
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_m_dense_13_bias"/device:CPU:0*
_output_shapes
 м
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_m_dense_13_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
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
:Г
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_v_dense_13_bias"/device:CPU:0*
_output_shapes
 м
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_v_dense_13_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
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
 Щ
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
 Щ
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
: ┬
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсB▐B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHХ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B И
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *"
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
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
: О
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
_user_specified_namedense_13/kernel:-)
'
_user_specified_namedense_13/bias:84
2
_user_specified_namelstm_13/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_13/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_13/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_13/lstm_cell/kernel:?	;
9
_user_specified_name!Adam/v/lstm_13/lstm_cell/kernel:I
E
C
_user_specified_name+)Adam/m/lstm_13/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_13/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_13/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_13/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_13/kernel:62
0
_user_specified_nameAdam/v/dense_13/kernel:40
.
_user_specified_nameAdam/m/dense_13/bias:40
.
_user_specified_nameAdam/v/dense_13/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
РM
я
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350642

inputs

states
states_11
split_readvariableop_resource:
№а.
split_1_readvariableop_resource:	а+
readvariableop_resource:
╚а
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::э╧T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         №U
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::э╧V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚Y
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:         №[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:         №[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:         №[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:         №Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
№а*
dtype0ж
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ╚`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ╚`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ╚`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ╚S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:а*
dtype0Ш
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ╚m
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ╚m
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ╚m
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ╚]
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ╚]
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ╚]
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ╚]
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ╚h
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   f
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
╚╚*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ╚e
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ╚N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚i
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ╚X
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚i
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ╚J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ╚V
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚W
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ╚j
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      ў
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚i
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ╚R
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ╚[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚Ю
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ╚[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ╚у
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3E^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:         №:         ╚:         ╚: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:         №
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_namestates:PL
(
_output_shapes
:         ╚
 
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
ыЗ
Ч
C__inference_lstm_13_layer_call_and_return_conditional_losses_352245
inputs_0;
'lstm_cell_split_readvariableop_resource:
№а8
)lstm_cell_split_1_readvariableop_resource:	а5
!lstm_cell_readvariableop_resource:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::э╧^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ц
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №g
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::э╧`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ь
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №Б
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0─
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : З
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╢
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЗ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Л
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"    ╚   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Я
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЖ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Г
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚b
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚t
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚u
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
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
valueB"      й
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskИ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚f
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚y
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╓
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_352106*
condR
while_cond_352105*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    и
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚з
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  №
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
ь
╣
(__inference_lstm_13_layer_call_fn_351597
inputs_0
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_350731p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  №
"
_user_specified_name
inputs_0:&"
 
_user_specified_name351589:&"
 
_user_specified_name351591:&"
 
_user_specified_name351593
√@
┬
C__inference_lstm_13_layer_call_and_return_conditional_losses_350731

inputs$
lstm_cell_350643:
№а
lstm_cell_350645:	а$
lstm_cell_350647:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpв!lstm_cell/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
B :╚s
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
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
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
:         ╚c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  №R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
:         №*
shrink_axis_maskь
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_350643lstm_cell_350645lstm_cell_350647*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_350642n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_350643lstm_cell_350645lstm_cell_350647*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_350657*
condR
while_cond_350656*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ч
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOplstm_cell_350647* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚Х
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  №
 
_user_specified_nameinputs:&"
 
_user_specified_name350643:&"
 
_user_specified_name350645:&"
 
_user_specified_name350647
ё
√
'sequential_13_lstm_13_while_cond_350115H
Dsequential_13_lstm_13_while_sequential_13_lstm_13_while_loop_counterN
Jsequential_13_lstm_13_while_sequential_13_lstm_13_while_maximum_iterations+
'sequential_13_lstm_13_while_placeholder-
)sequential_13_lstm_13_while_placeholder_1-
)sequential_13_lstm_13_while_placeholder_2-
)sequential_13_lstm_13_while_placeholder_3J
Fsequential_13_lstm_13_while_less_sequential_13_lstm_13_strided_slice_1`
\sequential_13_lstm_13_while_sequential_13_lstm_13_while_cond_350115___redundant_placeholder0`
\sequential_13_lstm_13_while_sequential_13_lstm_13_while_cond_350115___redundant_placeholder1`
\sequential_13_lstm_13_while_sequential_13_lstm_13_while_cond_350115___redundant_placeholder2`
\sequential_13_lstm_13_while_sequential_13_lstm_13_while_cond_350115___redundant_placeholder3(
$sequential_13_lstm_13_while_identity
║
 sequential_13/lstm_13/while/LessLess'sequential_13_lstm_13_while_placeholderFsequential_13_lstm_13_while_less_sequential_13_lstm_13_strided_slice_1*
T0*
_output_shapes
: w
$sequential_13/lstm_13/while/IdentityIdentity$sequential_13/lstm_13/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_13_lstm_13_while_identity-sequential_13/lstm_13/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: :::::` \

_output_shapes
: 
B
_user_specified_name*(sequential_13/lstm_13/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential_13/lstm_13/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:]Y

_output_shapes
: 
?
_user_specified_name'%sequential_13/lstm_13/strided_slice_1:

_output_shapes
:
ц	
ё
$__inference_signature_wrapper_351546
lstm_13_input
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCalllstm_13_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_350257o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_13_input:&"
 
_user_specified_name351534:&"
 
_user_specified_name351536:&"
 
_user_specified_name351538:&"
 
_user_specified_name351540:&"
 
_user_specified_name351542
╡
┘
__inference_loss_fn_0_352902a
Mlstm_13_lstm_cell_recurrent_kernel_regularizer_l2loss_readvariableop_resource:
╚а
identityИвDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp╘
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpMlstm_13_lstm_cell_recurrent_kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0о
5lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2LossL2LossLlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: y
4lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫г<┘
2lstm_13/lstm_cell/recurrent_kernel/Regularizer/mulMul=lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul/x:output:0>lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: t
IdentityIdentity6lstm_13/lstm_cell/recurrent_kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: i
NoOpNoOpE^lstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2М
Dlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOpDlstm_13/lstm_cell/recurrent_kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
╞	
├
while_cond_351792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_351792___redundant_placeholder04
0while_while_cond_351792___redundant_placeholder14
0while_while_cond_351792___redundant_placeholder24
0while_while_cond_351792___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ш

√
.__inference_sequential_13_layer_call_fn_351493
lstm_13_input
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_13_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_351463o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_13_input:&"
 
_user_specified_name351481:&"
 
_user_specified_name351483:&"
 
_user_specified_name351485:&"
 
_user_specified_name351487:&"
 
_user_specified_name351489
 \
╧
"__inference__traced_restore_353374
file_prefix3
 assignvariableop_dense_13_kernel:	╚.
 assignvariableop_1_dense_13_bias:?
+assignvariableop_2_lstm_13_lstm_cell_kernel:
№аI
5assignvariableop_3_lstm_13_lstm_cell_recurrent_kernel:
╚а8
)assignvariableop_4_lstm_13_lstm_cell_bias:	а&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: F
2assignvariableop_7_adam_m_lstm_13_lstm_cell_kernel:
№аF
2assignvariableop_8_adam_v_lstm_13_lstm_cell_kernel:
№аP
<assignvariableop_9_adam_m_lstm_13_lstm_cell_recurrent_kernel:
╚аQ
=assignvariableop_10_adam_v_lstm_13_lstm_cell_recurrent_kernel:
╚а@
1assignvariableop_11_adam_m_lstm_13_lstm_cell_bias:	а@
1assignvariableop_12_adam_v_lstm_13_lstm_cell_bias:	а=
*assignvariableop_13_adam_m_dense_13_kernel:	╚=
*assignvariableop_14_adam_v_dense_13_kernel:	╚6
(assignvariableop_15_adam_m_dense_13_bias:6
(assignvariableop_16_adam_v_dense_13_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: 
identity_20ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9┼
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсB▐B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHШ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B В
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_dense_13_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_13_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_2AssignVariableOp+assignvariableop_2_lstm_13_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_3AssignVariableOp5assignvariableop_3_lstm_13_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_4AssignVariableOp)assignvariableop_4_lstm_13_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_7AssignVariableOp2assignvariableop_7_adam_m_lstm_13_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_8AssignVariableOp2assignvariableop_8_adam_v_lstm_13_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_9AssignVariableOp<assignvariableop_9_adam_m_lstm_13_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╓
AssignVariableOp_10AssignVariableOp=assignvariableop_10_adam_v_lstm_13_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_11AssignVariableOp1assignvariableop_11_adam_m_lstm_13_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_12AssignVariableOp1assignvariableop_12_adam_v_lstm_13_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_m_dense_13_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_v_dense_13_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_dense_13_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_dense_13_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:▓
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
: ║
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
_user_specified_namedense_13/kernel:-)
'
_user_specified_namedense_13/bias:84
2
_user_specified_namelstm_13/lstm_cell/kernel:B>
<
_user_specified_name$"lstm_13/lstm_cell/recurrent_kernel:62
0
_user_specified_namelstm_13/lstm_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:?;
9
_user_specified_name!Adam/m/lstm_13/lstm_cell/kernel:?	;
9
_user_specified_name!Adam/v/lstm_13/lstm_cell/kernel:I
E
C
_user_specified_name+)Adam/m/lstm_13/lstm_cell/recurrent_kernel:IE
C
_user_specified_name+)Adam/v/lstm_13/lstm_cell/recurrent_kernel:=9
7
_user_specified_nameAdam/m/lstm_13/lstm_cell/bias:=9
7
_user_specified_nameAdam/v/lstm_13/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_13/kernel:62
0
_user_specified_nameAdam/v/dense_13/kernel:40
.
_user_specified_nameAdam/m/dense_13/bias:40
.
_user_specified_nameAdam/v/dense_13/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
▐├
Д	
while_body_352419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
№а@
1while_lstm_cell_split_1_readvariableop_resource_0:	а=
)while_lstm_cell_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
№а>
/while_lstm_cell_split_1_readvariableop_resource:	а;
'while_lstm_cell_readvariableop_resource:
╚аИвwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Н
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::э╧d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?и
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?б
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         №}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧н
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╫
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╘
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         №d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?е
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>▌
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         №r
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::э╧f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ╚d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?з
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚Б
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::э╧▒
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>▌
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ╚к
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         №о
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         №a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0╓
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitМ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Х
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitЩ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚Э
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ╚С
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ╚К
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"    ╚   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskШ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Х
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚n
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚Г
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╟
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚j
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚Ж
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚З
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚М
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
╚а*
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
valueB"      ╟
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskЪ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚Л
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ы
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚w
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚В

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
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2@
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
:         ╚:.*
(
_output_shapes
:         ╚:GC
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
╞	
├
while_cond_352105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_352105___redundant_placeholder04
0while_while_cond_352105___redundant_placeholder14
0while_while_cond_352105___redundant_placeholder24
0while_while_cond_352105___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╛
Q
#__inference__update_step_xla_351560
gradient
variable:
╚а*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
╚а: *
	_noinline(:J F
 
_output_shapes
:
╚а
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╘
╖
(__inference_lstm_13_layer_call_fn_351619

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_351445p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs:&"
 
_user_specified_name351611:&"
 
_user_specified_name351613:&"
 
_user_specified_name351615
╞	
├
while_cond_350451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_350451___redundant_placeholder04
0while_while_cond_350451___redundant_placeholder14
0while_while_cond_350451___redundant_placeholder24
0while_while_cond_350451___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╗
P
#__inference__update_step_xla_351570
gradient
variable:	╚*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	╚: *
	_noinline(:I E

_output_shapes
:	╚
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
У╗
■
!__inference__wrapped_model_350257
lstm_13_inputQ
=sequential_13_lstm_13_lstm_cell_split_readvariableop_resource:
№аN
?sequential_13_lstm_13_lstm_cell_split_1_readvariableop_resource:	аK
7sequential_13_lstm_13_lstm_cell_readvariableop_resource:
╚аH
5sequential_13_dense_13_matmul_readvariableop_resource:	╚D
6sequential_13_dense_13_biasadd_readvariableop_resource:
identityИв-sequential_13/dense_13/BiasAdd/ReadVariableOpв,sequential_13/dense_13/MatMul/ReadVariableOpв.sequential_13/lstm_13/lstm_cell/ReadVariableOpв0sequential_13/lstm_13/lstm_cell/ReadVariableOp_1в0sequential_13/lstm_13/lstm_cell/ReadVariableOp_2в0sequential_13/lstm_13/lstm_cell/ReadVariableOp_3в4sequential_13/lstm_13/lstm_cell/split/ReadVariableOpв6sequential_13/lstm_13/lstm_cell/split_1/ReadVariableOpвsequential_13/lstm_13/whilef
sequential_13/lstm_13/ShapeShapelstm_13_input*
T0*
_output_shapes
::э╧s
)sequential_13/lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_13/lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_13/lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_13/lstm_13/strided_sliceStridedSlice$sequential_13/lstm_13/Shape:output:02sequential_13/lstm_13/strided_slice/stack:output:04sequential_13/lstm_13/strided_slice/stack_1:output:04sequential_13/lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_13/lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚╡
"sequential_13/lstm_13/zeros/packedPack,sequential_13/lstm_13/strided_slice:output:0-sequential_13/lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_13/lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    п
sequential_13/lstm_13/zerosFill+sequential_13/lstm_13/zeros/packed:output:0*sequential_13/lstm_13/zeros/Const:output:0*
T0*(
_output_shapes
:         ╚i
&sequential_13/lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚╣
$sequential_13/lstm_13/zeros_1/packedPack,sequential_13/lstm_13/strided_slice:output:0/sequential_13/lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_13/lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╡
sequential_13/lstm_13/zeros_1Fill-sequential_13/lstm_13/zeros_1/packed:output:0,sequential_13/lstm_13/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚y
$sequential_13/lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          б
sequential_13/lstm_13/transpose	Transposelstm_13_input-sequential_13/lstm_13/transpose/perm:output:0*
T0*,
_output_shapes
:         №~
sequential_13/lstm_13/Shape_1Shape#sequential_13/lstm_13/transpose:y:0*
T0*
_output_shapes
::э╧u
+sequential_13/lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_13/lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_13/lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_13/lstm_13/strided_slice_1StridedSlice&sequential_13/lstm_13/Shape_1:output:04sequential_13/lstm_13/strided_slice_1/stack:output:06sequential_13/lstm_13/strided_slice_1/stack_1:output:06sequential_13/lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_13/lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ў
#sequential_13/lstm_13/TensorArrayV2TensorListReserve:sequential_13/lstm_13/TensorArrayV2/element_shape:output:0.sequential_13/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ь
Ksequential_13/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   в
=sequential_13/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_13/lstm_13/transpose:y:0Tsequential_13/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥u
+sequential_13/lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_13/lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_13/lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
%sequential_13/lstm_13/strided_slice_2StridedSlice#sequential_13/lstm_13/transpose:y:04sequential_13/lstm_13/strided_slice_2/stack:output:06sequential_13/lstm_13/strided_slice_2/stack_1:output:06sequential_13/lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         №*
shrink_axis_maskЫ
/sequential_13/lstm_13/lstm_cell/ones_like/ShapeShape.sequential_13/lstm_13/strided_slice_2:output:0*
T0*
_output_shapes
::э╧t
/sequential_13/lstm_13/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╪
)sequential_13/lstm_13/lstm_cell/ones_likeFill8sequential_13/lstm_13/lstm_cell/ones_like/Shape:output:08sequential_13/lstm_13/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         №У
1sequential_13/lstm_13/lstm_cell/ones_like_1/ShapeShape$sequential_13/lstm_13/zeros:output:0*
T0*
_output_shapes
::э╧v
1sequential_13/lstm_13/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▐
+sequential_13/lstm_13/lstm_cell/ones_like_1Fill:sequential_13/lstm_13/lstm_cell/ones_like_1/Shape:output:0:sequential_13/lstm_13/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚┴
#sequential_13/lstm_13/lstm_cell/mulMul.sequential_13/lstm_13/strided_slice_2:output:02sequential_13/lstm_13/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №├
%sequential_13/lstm_13/lstm_cell/mul_1Mul.sequential_13/lstm_13/strided_slice_2:output:02sequential_13/lstm_13/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №├
%sequential_13/lstm_13/lstm_cell/mul_2Mul.sequential_13/lstm_13/strided_slice_2:output:02sequential_13/lstm_13/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №├
%sequential_13/lstm_13/lstm_cell/mul_3Mul.sequential_13/lstm_13/strided_slice_2:output:02sequential_13/lstm_13/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         №q
/sequential_13/lstm_13/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┤
4sequential_13/lstm_13/lstm_cell/split/ReadVariableOpReadVariableOp=sequential_13_lstm_13_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0Ж
%sequential_13/lstm_13/lstm_cell/splitSplit8sequential_13/lstm_13/lstm_cell/split/split_dim:output:0<sequential_13/lstm_13/lstm_cell/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split╝
&sequential_13/lstm_13/lstm_cell/MatMulMatMul'sequential_13/lstm_13/lstm_cell/mul:z:0.sequential_13/lstm_13/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╚└
(sequential_13/lstm_13/lstm_cell/MatMul_1MatMul)sequential_13/lstm_13/lstm_cell/mul_1:z:0.sequential_13/lstm_13/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╚└
(sequential_13/lstm_13/lstm_cell/MatMul_2MatMul)sequential_13/lstm_13/lstm_cell/mul_2:z:0.sequential_13/lstm_13/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╚└
(sequential_13/lstm_13/lstm_cell/MatMul_3MatMul)sequential_13/lstm_13/lstm_cell/mul_3:z:0.sequential_13/lstm_13/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╚s
1sequential_13/lstm_13/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : │
6sequential_13/lstm_13/lstm_cell/split_1/ReadVariableOpReadVariableOp?sequential_13_lstm_13_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0°
'sequential_13/lstm_13/lstm_cell/split_1Split:sequential_13/lstm_13/lstm_cell/split_1/split_dim:output:0>sequential_13/lstm_13/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_split╔
'sequential_13/lstm_13/lstm_cell/BiasAddBiasAdd0sequential_13/lstm_13/lstm_cell/MatMul:product:00sequential_13/lstm_13/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ╚═
)sequential_13/lstm_13/lstm_cell/BiasAdd_1BiasAdd2sequential_13/lstm_13/lstm_cell/MatMul_1:product:00sequential_13/lstm_13/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ╚═
)sequential_13/lstm_13/lstm_cell/BiasAdd_2BiasAdd2sequential_13/lstm_13/lstm_cell/MatMul_2:product:00sequential_13/lstm_13/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ╚═
)sequential_13/lstm_13/lstm_cell/BiasAdd_3BiasAdd2sequential_13/lstm_13/lstm_cell/MatMul_3:product:00sequential_13/lstm_13/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ╚╗
%sequential_13/lstm_13/lstm_cell/mul_4Mul$sequential_13/lstm_13/zeros:output:04sequential_13/lstm_13/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╗
%sequential_13/lstm_13/lstm_cell/mul_5Mul$sequential_13/lstm_13/zeros:output:04sequential_13/lstm_13/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╗
%sequential_13/lstm_13/lstm_cell/mul_6Mul$sequential_13/lstm_13/zeros:output:04sequential_13/lstm_13/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╗
%sequential_13/lstm_13/lstm_cell/mul_7Mul$sequential_13/lstm_13/zeros:output:04sequential_13/lstm_13/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚и
.sequential_13/lstm_13/lstm_cell/ReadVariableOpReadVariableOp7sequential_13_lstm_13_lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0Д
3sequential_13/lstm_13/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ж
5sequential_13/lstm_13/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   Ж
5sequential_13/lstm_13/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Н
-sequential_13/lstm_13/lstm_cell/strided_sliceStridedSlice6sequential_13/lstm_13/lstm_cell/ReadVariableOp:value:0<sequential_13/lstm_13/lstm_cell/strided_slice/stack:output:0>sequential_13/lstm_13/lstm_cell/strided_slice/stack_1:output:0>sequential_13/lstm_13/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╚
(sequential_13/lstm_13/lstm_cell/MatMul_4MatMul)sequential_13/lstm_13/lstm_cell/mul_4:z:06sequential_13/lstm_13/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ╚┼
#sequential_13/lstm_13/lstm_cell/addAddV20sequential_13/lstm_13/lstm_cell/BiasAdd:output:02sequential_13/lstm_13/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚О
'sequential_13/lstm_13/lstm_cell/SigmoidSigmoid'sequential_13/lstm_13/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ╚к
0sequential_13/lstm_13/lstm_cell/ReadVariableOp_1ReadVariableOp7sequential_13_lstm_13_lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0Ж
5sequential_13/lstm_13/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   И
7sequential_13/lstm_13/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  И
7sequential_13/lstm_13/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
/sequential_13/lstm_13/lstm_cell/strided_slice_1StridedSlice8sequential_13/lstm_13/lstm_cell/ReadVariableOp_1:value:0>sequential_13/lstm_13/lstm_cell/strided_slice_1/stack:output:0@sequential_13/lstm_13/lstm_cell/strided_slice_1/stack_1:output:0@sequential_13/lstm_13/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╩
(sequential_13/lstm_13/lstm_cell/MatMul_5MatMul)sequential_13/lstm_13/lstm_cell/mul_5:z:08sequential_13/lstm_13/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚╔
%sequential_13/lstm_13/lstm_cell/add_1AddV22sequential_13/lstm_13/lstm_cell/BiasAdd_1:output:02sequential_13/lstm_13/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚Т
)sequential_13/lstm_13/lstm_cell/Sigmoid_1Sigmoid)sequential_13/lstm_13/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╚╢
%sequential_13/lstm_13/lstm_cell/mul_8Mul-sequential_13/lstm_13/lstm_cell/Sigmoid_1:y:0&sequential_13/lstm_13/zeros_1:output:0*
T0*(
_output_shapes
:         ╚к
0sequential_13/lstm_13/lstm_cell/ReadVariableOp_2ReadVariableOp7sequential_13_lstm_13_lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0Ж
5sequential_13/lstm_13/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  И
7sequential_13/lstm_13/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  И
7sequential_13/lstm_13/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
/sequential_13/lstm_13/lstm_cell/strided_slice_2StridedSlice8sequential_13/lstm_13/lstm_cell/ReadVariableOp_2:value:0>sequential_13/lstm_13/lstm_cell/strided_slice_2/stack:output:0@sequential_13/lstm_13/lstm_cell/strided_slice_2/stack_1:output:0@sequential_13/lstm_13/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╩
(sequential_13/lstm_13/lstm_cell/MatMul_6MatMul)sequential_13/lstm_13/lstm_cell/mul_6:z:08sequential_13/lstm_13/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚╔
%sequential_13/lstm_13/lstm_cell/add_2AddV22sequential_13/lstm_13/lstm_cell/BiasAdd_2:output:02sequential_13/lstm_13/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚К
$sequential_13/lstm_13/lstm_cell/TanhTanh)sequential_13/lstm_13/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ╚╢
%sequential_13/lstm_13/lstm_cell/mul_9Mul+sequential_13/lstm_13/lstm_cell/Sigmoid:y:0(sequential_13/lstm_13/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ╚╖
%sequential_13/lstm_13/lstm_cell/add_3AddV2)sequential_13/lstm_13/lstm_cell/mul_8:z:0)sequential_13/lstm_13/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ╚к
0sequential_13/lstm_13/lstm_cell/ReadVariableOp_3ReadVariableOp7sequential_13_lstm_13_lstm_cell_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0Ж
5sequential_13/lstm_13/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  И
7sequential_13/lstm_13/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7sequential_13/lstm_13/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
/sequential_13/lstm_13/lstm_cell/strided_slice_3StridedSlice8sequential_13/lstm_13/lstm_cell/ReadVariableOp_3:value:0>sequential_13/lstm_13/lstm_cell/strided_slice_3/stack:output:0@sequential_13/lstm_13/lstm_cell/strided_slice_3/stack_1:output:0@sequential_13/lstm_13/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╩
(sequential_13/lstm_13/lstm_cell/MatMul_7MatMul)sequential_13/lstm_13/lstm_cell/mul_7:z:08sequential_13/lstm_13/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚╔
%sequential_13/lstm_13/lstm_cell/add_4AddV22sequential_13/lstm_13/lstm_cell/BiasAdd_3:output:02sequential_13/lstm_13/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚Т
)sequential_13/lstm_13/lstm_cell/Sigmoid_2Sigmoid)sequential_13/lstm_13/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ╚М
&sequential_13/lstm_13/lstm_cell/Tanh_1Tanh)sequential_13/lstm_13/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ╚╗
&sequential_13/lstm_13/lstm_cell/mul_10Mul-sequential_13/lstm_13/lstm_cell/Sigmoid_2:y:0*sequential_13/lstm_13/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚Д
3sequential_13/lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   t
2sequential_13/lstm_13/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :З
%sequential_13/lstm_13/TensorArrayV2_1TensorListReserve<sequential_13/lstm_13/TensorArrayV2_1/element_shape:output:0;sequential_13/lstm_13/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥\
sequential_13/lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_13/lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_13/lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
sequential_13/lstm_13/whileWhile1sequential_13/lstm_13/while/loop_counter:output:07sequential_13/lstm_13/while/maximum_iterations:output:0#sequential_13/lstm_13/time:output:0.sequential_13/lstm_13/TensorArrayV2_1:handle:0$sequential_13/lstm_13/zeros:output:0&sequential_13/lstm_13/zeros_1:output:0.sequential_13/lstm_13/strided_slice_1:output:0Msequential_13/lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_13_lstm_13_lstm_cell_split_readvariableop_resource?sequential_13_lstm_13_lstm_cell_split_1_readvariableop_resource7sequential_13_lstm_13_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*3
body+R)
'sequential_13_lstm_13_while_body_350116*3
cond+R)
'sequential_13_lstm_13_while_cond_350115*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Ч
Fsequential_13/lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   Щ
8sequential_13/lstm_13/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_13/lstm_13/while:output:3Osequential_13/lstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elements~
+sequential_13/lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_13/lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_13/lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
%sequential_13/lstm_13/strided_slice_3StridedSliceAsequential_13/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:04sequential_13/lstm_13/strided_slice_3/stack:output:06sequential_13/lstm_13/strided_slice_3/stack_1:output:06sequential_13/lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_mask{
&sequential_13/lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ┘
!sequential_13/lstm_13/transpose_1	TransposeAsequential_13/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_13/lstm_13/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚q
sequential_13/lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    г
,sequential_13/dense_13/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_13_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0┐
sequential_13/dense_13/MatMulMatMul.sequential_13/lstm_13/strided_slice_3:output:04sequential_13/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_13/dense_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_13/dense_13/BiasAddBiasAdd'sequential_13/dense_13/MatMul:product:05sequential_13/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_13/dense_13/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ┘
NoOpNoOp.^sequential_13/dense_13/BiasAdd/ReadVariableOp-^sequential_13/dense_13/MatMul/ReadVariableOp/^sequential_13/lstm_13/lstm_cell/ReadVariableOp1^sequential_13/lstm_13/lstm_cell/ReadVariableOp_11^sequential_13/lstm_13/lstm_cell/ReadVariableOp_21^sequential_13/lstm_13/lstm_cell/ReadVariableOp_35^sequential_13/lstm_13/lstm_cell/split/ReadVariableOp7^sequential_13/lstm_13/lstm_cell/split_1/ReadVariableOp^sequential_13/lstm_13/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2^
-sequential_13/dense_13/BiasAdd/ReadVariableOp-sequential_13/dense_13/BiasAdd/ReadVariableOp2\
,sequential_13/dense_13/MatMul/ReadVariableOp,sequential_13/dense_13/MatMul/ReadVariableOp2`
.sequential_13/lstm_13/lstm_cell/ReadVariableOp.sequential_13/lstm_13/lstm_cell/ReadVariableOp2d
0sequential_13/lstm_13/lstm_cell/ReadVariableOp_10sequential_13/lstm_13/lstm_cell/ReadVariableOp_12d
0sequential_13/lstm_13/lstm_cell/ReadVariableOp_20sequential_13/lstm_13/lstm_cell/ReadVariableOp_22d
0sequential_13/lstm_13/lstm_cell/ReadVariableOp_30sequential_13/lstm_13/lstm_cell/ReadVariableOp_32l
4sequential_13/lstm_13/lstm_cell/split/ReadVariableOp4sequential_13/lstm_13/lstm_cell/split/ReadVariableOp2p
6sequential_13/lstm_13/lstm_cell/split_1/ReadVariableOp6sequential_13/lstm_13/lstm_cell/split_1/ReadVariableOp2:
sequential_13/lstm_13/whilesequential_13/lstm_13/while:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_13_input:($
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
╞	
├
while_cond_352418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_352418___redundant_placeholder04
0while_while_cond_352418___redundant_placeholder14
0while_while_cond_352418___redundant_placeholder24
0while_while_cond_352418___redundant_placeholder3
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
B: : : : :         ╚:         ╚: :::::J F
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
:         ╚:.*
(
_output_shapes
:         ╚:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultи
L
lstm_13_input;
serving_default_lstm_13_input:0         №<
dense_130
StatefulPartitionedCall:0         tensorflow/serving/predict:ба
┤
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
┌
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
╗
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
╩
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
╧
%trace_0
&trace_12Ш
.__inference_sequential_13_layer_call_fn_351478
.__inference_sequential_13_layer_call_fn_351493╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z%trace_0z&trace_1
Е
'trace_0
(trace_12╬
I__inference_sequential_13_layer_call_and_return_conditional_losses_351194
I__inference_sequential_13_layer_call_and_return_conditional_losses_351463╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z'trace_0z(trace_1
╥B╧
!__inference__wrapped_model_350257lstm_13_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ь
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
╣

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
р
8trace_0
9trace_1
:trace_2
;trace_32ї
(__inference_lstm_13_layer_call_fn_351586
(__inference_lstm_13_layer_call_fn_351597
(__inference_lstm_13_layer_call_fn_351608
(__inference_lstm_13_layer_call_fn_351619╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z8trace_0z9trace_1z:trace_2z;trace_3
╠
<trace_0
=trace_1
>trace_2
?trace_32с
C__inference_lstm_13_layer_call_and_return_conditional_losses_351996
C__inference_lstm_13_layer_call_and_return_conditional_losses_352245
C__inference_lstm_13_layer_call_and_return_conditional_losses_352622
C__inference_lstm_13_layer_call_and_return_conditional_losses_352871╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z<trace_0z=trace_1z>trace_2z?trace_3
"
_generic_user_object
°
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator
G
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
н
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
у
Mtrace_02╞
)__inference_dense_13_layer_call_fn_352884Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zMtrace_0
■
Ntrace_02с
D__inference_dense_13_layer_call_and_return_conditional_losses_352894Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zNtrace_0
": 	╚2dense_13/kernel
:2dense_13/bias
,:*
№а2lstm_13/lstm_cell/kernel
6:4
╚а2"lstm_13/lstm_cell/recurrent_kernel
%:#а2lstm_13/lstm_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
O0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
.__inference_sequential_13_layer_call_fn_351478lstm_13_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
.__inference_sequential_13_layer_call_fn_351493lstm_13_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
I__inference_sequential_13_layer_call_and_return_conditional_losses_351194lstm_13_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
I__inference_sequential_13_layer_call_and_return_conditional_losses_351463lstm_13_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
n
*0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
P0
R1
T2
V3
X4"
trackable_list_wrapper
C
Q0
S1
U2
W3
Y4"
trackable_list_wrapper
Ё
Ztrace_0
[trace_1
\trace_2
]trace_3
^trace_42ы
#__inference__update_step_xla_351555
#__inference__update_step_xla_351560
#__inference__update_step_xla_351565
#__inference__update_step_xla_351570
#__inference__update_step_xla_351575п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0zZtrace_0z[trace_1z\trace_2z]trace_3z^trace_4
╤B╬
$__inference_signature_wrapper_351546lstm_13_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
═
_trace_02░
__inference_loss_fn_0_352902П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z_trace_0
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
ЖBГ
(__inference_lstm_13_layer_call_fn_351586inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЖBГ
(__inference_lstm_13_layer_call_fn_351597inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
(__inference_lstm_13_layer_call_fn_351608inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
(__inference_lstm_13_layer_call_fn_351619inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
бBЮ
C__inference_lstm_13_layer_call_and_return_conditional_losses_351996inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
бBЮ
C__inference_lstm_13_layer_call_and_return_conditional_losses_352245inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
C__inference_lstm_13_layer_call_and_return_conditional_losses_352622inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
C__inference_lstm_13_layer_call_and_return_conditional_losses_352871inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
н
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
┼
etrace_0
ftrace_12О
*__inference_lstm_cell_layer_call_fn_352919
*__inference_lstm_cell_layer_call_fn_352936│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zetrace_0zftrace_1
√
gtrace_0
htrace_12─
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353086
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353172│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0zhtrace_1
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
╙B╨
)__inference_dense_13_layer_call_fn_352884inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_dense_13_layer_call_and_return_conditional_losses_352894inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
N
i	variables
j	keras_api
	ktotal
	lcount"
_tf_keras_metric
1:/
№а2Adam/m/lstm_13/lstm_cell/kernel
1:/
№а2Adam/v/lstm_13/lstm_cell/kernel
;:9
╚а2)Adam/m/lstm_13/lstm_cell/recurrent_kernel
;:9
╚а2)Adam/v/lstm_13/lstm_cell/recurrent_kernel
*:(а2Adam/m/lstm_13/lstm_cell/bias
*:(а2Adam/v/lstm_13/lstm_cell/bias
':%	╚2Adam/m/dense_13/kernel
':%	╚2Adam/v/dense_13/kernel
 :2Adam/m/dense_13/bias
 :2Adam/v/dense_13/bias
юBы
#__inference__update_step_xla_351555gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_351560gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_351565gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_351570gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_351575gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│B░
__inference_loss_fn_0_352902"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
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
ГBА
*__inference_lstm_cell_layer_call_fn_352919inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
*__inference_lstm_cell_layer_call_fn_352936inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353086inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353172inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
k0
l1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
:  (2total
:  (2countЩ
#__inference__update_step_xla_351555rlвi
bв_
К
gradient
№а
6Т3	в
·
№а
А
p
` VariableSpec 
`АЁО╡╬╫?
к "
 Щ
#__inference__update_step_xla_351560rlвi
bв_
К
gradient
╚а
6Т3	в
·
╚а
А
p
` VariableSpec 
`аЛ■┤╬╫?
к "
 П
#__inference__update_step_xla_351565hbв_
XвU
К
gradientа
1Т.	в
·а
А
p
` VariableSpec 
`└№О╡╬╫?
к "
 Ч
#__inference__update_step_xla_351570pjвg
`в]
К
gradient	╚
5Т2	в
·	╚
А
p
` VariableSpec 
`рЦЯ╡╬╫?
к "
 Н
#__inference__update_step_xla_351575f`в]
VвS
К
gradient
0Т-	в
·
А
p
` VariableSpec 
`└ўЁ┤╬╫?
к "
 Ю
!__inference__wrapped_model_350257y;в8
1в.
,К)
lstm_13_input         №
к "3к0
.
dense_13"К
dense_13         м
D__inference_dense_13_layer_call_and_return_conditional_losses_352894d0в-
&в#
!К
inputs         ╚
к ",в)
"К
tensor_0         
Ъ Ж
)__inference_dense_13_layer_call_fn_352884Y0в-
&в#
!К
inputs         ╚
к "!К
unknown         D
__inference_loss_fn_0_352902$в

в 
к "К
unknown ╬
C__inference_lstm_13_layer_call_and_return_conditional_losses_351996ЖPвM
FвC
5Ъ2
0К-
inputs_0                  №

 
p

 
к "-в*
#К 
tensor_0         ╚
Ъ ╬
C__inference_lstm_13_layer_call_and_return_conditional_losses_352245ЖPвM
FвC
5Ъ2
0К-
inputs_0                  №

 
p 

 
к "-в*
#К 
tensor_0         ╚
Ъ ╜
C__inference_lstm_13_layer_call_and_return_conditional_losses_352622v@в=
6в3
%К"
inputs         №

 
p

 
к "-в*
#К 
tensor_0         ╚
Ъ ╜
C__inference_lstm_13_layer_call_and_return_conditional_losses_352871v@в=
6в3
%К"
inputs         №

 
p 

 
к "-в*
#К 
tensor_0         ╚
Ъ з
(__inference_lstm_13_layer_call_fn_351586{PвM
FвC
5Ъ2
0К-
inputs_0                  №

 
p

 
к ""К
unknown         ╚з
(__inference_lstm_13_layer_call_fn_351597{PвM
FвC
5Ъ2
0К-
inputs_0                  №

 
p 

 
к ""К
unknown         ╚Ч
(__inference_lstm_13_layer_call_fn_351608k@в=
6в3
%К"
inputs         №

 
p

 
к ""К
unknown         ╚Ч
(__inference_lstm_13_layer_call_fn_351619k@в=
6в3
%К"
inputs         №

 
p 

 
к ""К
unknown         ╚ц
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353086ЬДвА
yвv
!К
inputs         №
MвJ
#К 
states_0         ╚
#К 
states_1         ╚
p
к "НвЙ
Бв~
%К"

tensor_0_0         ╚
UЪR
'К$
tensor_0_1_0         ╚
'К$
tensor_0_1_1         ╚
Ъ ц
E__inference_lstm_cell_layer_call_and_return_conditional_losses_353172ЬДвА
yвv
!К
inputs         №
MвJ
#К 
states_0         ╚
#К 
states_1         ╚
p 
к "НвЙ
Бв~
%К"

tensor_0_0         ╚
UЪR
'К$
tensor_0_1_0         ╚
'К$
tensor_0_1_1         ╚
Ъ ╕
*__inference_lstm_cell_layer_call_fn_352919ЙДвА
yвv
!К
inputs         №
MвJ
#К 
states_0         ╚
#К 
states_1         ╚
p
к "{вx
#К 
tensor_0         ╚
QЪN
%К"

tensor_1_0         ╚
%К"

tensor_1_1         ╚╕
*__inference_lstm_cell_layer_call_fn_352936ЙДвА
yвv
!К
inputs         №
MвJ
#К 
states_0         ╚
#К 
states_1         ╚
p 
к "{вx
#К 
tensor_0         ╚
QЪN
%К"

tensor_1_0         ╚
%К"

tensor_1_1         ╚╟
I__inference_sequential_13_layer_call_and_return_conditional_losses_351194zCв@
9в6
,К)
lstm_13_input         №
p

 
к ",в)
"К
tensor_0         
Ъ ╟
I__inference_sequential_13_layer_call_and_return_conditional_losses_351463zCв@
9в6
,К)
lstm_13_input         №
p 

 
к ",в)
"К
tensor_0         
Ъ б
.__inference_sequential_13_layer_call_fn_351478oCв@
9в6
,К)
lstm_13_input         №
p

 
к "!К
unknown         б
.__inference_sequential_13_layer_call_fn_351493oCв@
9в6
,К)
lstm_13_input         №
p 

 
к "!К
unknown         │
$__inference_signature_wrapper_351546КLвI
в 
Bк?
=
lstm_13_input,К)
lstm_13_input         №"3к0
.
dense_13"К
dense_13         