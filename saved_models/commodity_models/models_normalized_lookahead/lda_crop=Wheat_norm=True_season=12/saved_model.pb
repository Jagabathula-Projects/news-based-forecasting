╟╩$
╡Ж
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
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
delete_old_dirsbool(И
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
P
Shape

input"T
output"out_type"	
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
7
Square
x"T
y"T"
Ttype:
2	
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
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68А╖#
{
dense_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚* 
shared_namedense_79/kernel
t
#dense_79/kernel/Read/ReadVariableOpReadVariableOpdense_79/kernel*
_output_shapes
:	╚*
dtype0
r
dense_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_79/bias
k
!dense_79/bias/Read/ReadVariableOpReadVariableOpdense_79/bias*
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
Ф
lstm_79/lstm_cell_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
№а*,
shared_namelstm_79/lstm_cell_83/kernel
Н
/lstm_79/lstm_cell_83/kernel/Read/ReadVariableOpReadVariableOplstm_79/lstm_cell_83/kernel* 
_output_shapes
:
№а*
dtype0
и
%lstm_79/lstm_cell_83/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*6
shared_name'%lstm_79/lstm_cell_83/recurrent_kernel
б
9lstm_79/lstm_cell_83/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_79/lstm_cell_83/recurrent_kernel* 
_output_shapes
:
╚а*
dtype0
Л
lstm_79/lstm_cell_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а**
shared_namelstm_79/lstm_cell_83/bias
Д
-lstm_79/lstm_cell_83/bias/Read/ReadVariableOpReadVariableOplstm_79/lstm_cell_83/bias*
_output_shapes	
:а*
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
Й
Adam/dense_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*'
shared_nameAdam/dense_79/kernel/m
В
*Adam/dense_79/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/m*
_output_shapes
:	╚*
dtype0
А
Adam/dense_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_79/bias/m
y
(Adam/dense_79/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/m*
_output_shapes
:*
dtype0
в
"Adam/lstm_79/lstm_cell_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
№а*3
shared_name$"Adam/lstm_79/lstm_cell_83/kernel/m
Ы
6Adam/lstm_79/lstm_cell_83/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_79/lstm_cell_83/kernel/m* 
_output_shapes
:
№а*
dtype0
╢
,Adam/lstm_79/lstm_cell_83/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*=
shared_name.,Adam/lstm_79/lstm_cell_83/recurrent_kernel/m
п
@Adam/lstm_79/lstm_cell_83/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_79/lstm_cell_83/recurrent_kernel/m* 
_output_shapes
:
╚а*
dtype0
Щ
 Adam/lstm_79/lstm_cell_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*1
shared_name" Adam/lstm_79/lstm_cell_83/bias/m
Т
4Adam/lstm_79/lstm_cell_83/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_79/lstm_cell_83/bias/m*
_output_shapes	
:а*
dtype0
Й
Adam/dense_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*'
shared_nameAdam/dense_79/kernel/v
В
*Adam/dense_79/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/v*
_output_shapes
:	╚*
dtype0
А
Adam/dense_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_79/bias/v
y
(Adam/dense_79/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/v*
_output_shapes
:*
dtype0
в
"Adam/lstm_79/lstm_cell_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
№а*3
shared_name$"Adam/lstm_79/lstm_cell_83/kernel/v
Ы
6Adam/lstm_79/lstm_cell_83/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_79/lstm_cell_83/kernel/v* 
_output_shapes
:
№а*
dtype0
╢
,Adam/lstm_79/lstm_cell_83/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*=
shared_name.,Adam/lstm_79/lstm_cell_83/recurrent_kernel/v
п
@Adam/lstm_79/lstm_cell_83/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_79/lstm_cell_83/recurrent_kernel/v* 
_output_shapes
:
╚а*
dtype0
Щ
 Adam/lstm_79/lstm_cell_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*1
shared_name" Adam/lstm_79/lstm_cell_83/bias/v
Т
4Adam/lstm_79/lstm_cell_83/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_79/lstm_cell_83/bias/v*
_output_shapes	
:а*
dtype0

NoOpNoOp
Р)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╦(
value┴(B╛( B╖(
Ъ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
┴
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
ж

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Ю
iter

beta_1

beta_2
	 decay
!learning_ratemKmL"mM#mN$mOvPvQ"vR#vS$vT*
'
"0
#1
$2
3
4*
'
"0
#1
$2
3
4*
* 
░
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

*serving_default* 
у
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses*
* 

"0
#1
$2*

"0
#1
$2*
	
30* 
╝

4states
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
:activity_regularizer_fn
*&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
* 
_Y
VARIABLE_VALUEdense_79/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_79/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
У
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_79/lstm_cell_83/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_79/lstm_cell_83/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_79/lstm_cell_83/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

A0*
* 
* 
* 
* 

"0
#1
$2*

"0
#1
$2*
	
30* 
У
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

0*
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
	Gtotal
	Hcount
I	variables
J	keras_api*
* 
* 
* 
	
30* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

I	variables*
В|
VARIABLE_VALUEAdam/dense_79/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_79/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_79/lstm_cell_83/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE,Adam/lstm_79/lstm_cell_83/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_79/lstm_cell_83/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_79/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_79/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_79/lstm_cell_83/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE,Adam/lstm_79/lstm_cell_83/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_79/lstm_cell_83/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
К
serving_default_lstm_79_inputPlaceholder*,
_output_shapes
:         №*
dtype0*!
shape:         №
┬
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_79_inputlstm_79/lstm_cell_83/kernellstm_79/lstm_cell_83/bias%lstm_79/lstm_cell_83/recurrent_kerneldense_79/kerneldense_79/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_3103738
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
А

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_79/kernel/Read/ReadVariableOp!dense_79/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_79/lstm_cell_83/kernel/Read/ReadVariableOp9lstm_79/lstm_cell_83/recurrent_kernel/Read/ReadVariableOp-lstm_79/lstm_cell_83/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_79/kernel/m/Read/ReadVariableOp(Adam/dense_79/bias/m/Read/ReadVariableOp6Adam/lstm_79/lstm_cell_83/kernel/m/Read/ReadVariableOp@Adam/lstm_79/lstm_cell_83/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_79/lstm_cell_83/bias/m/Read/ReadVariableOp*Adam/dense_79/kernel/v/Read/ReadVariableOp(Adam/dense_79/bias/v/Read/ReadVariableOp6Adam/lstm_79/lstm_cell_83/kernel/v/Read/ReadVariableOp@Adam/lstm_79/lstm_cell_83/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_79/lstm_cell_83/bias/v/Read/ReadVariableOpConst*#
Tin
2	*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_3105491
├
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_79/kerneldense_79/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_79/lstm_cell_83/kernel%lstm_79/lstm_cell_83/recurrent_kernellstm_79/lstm_cell_83/biastotalcountAdam/dense_79/kernel/mAdam/dense_79/bias/m"Adam/lstm_79/lstm_cell_83/kernel/m,Adam/lstm_79/lstm_cell_83/recurrent_kernel/m Adam/lstm_79/lstm_cell_83/bias/mAdam/dense_79/kernel/vAdam/dense_79/bias/v"Adam/lstm_79/lstm_cell_83/kernel/v,Adam/lstm_79/lstm_cell_83/recurrent_kernel/v Adam/lstm_79/lstm_cell_83/bias/v*"
Tin
2*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_3105567Ц╩"
╓v
й	
while_body_3102243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_83_split_readvariableop_resource_0:
№аC
4while_lstm_cell_83_split_1_readvariableop_resource_0:	а@
,while_lstm_cell_83_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_83_split_readvariableop_resource:
№аA
2while_lstm_cell_83_split_1_readvariableop_resource:	а>
*while_lstm_cell_83_readvariableop_resource:
╚аИв!while/lstm_cell_83/ReadVariableOpв#while/lstm_cell_83/ReadVariableOp_1в#while/lstm_cell_83/ReadVariableOp_2в#while/lstm_cell_83/ReadVariableOp_3в'while/lstm_cell_83/split/ReadVariableOpв)while/lstm_cell_83/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0В
"while/lstm_cell_83/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:g
"while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
while/lstm_cell_83/ones_likeFill+while/lstm_cell_83/ones_like/Shape:output:0+while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №g
$while/lstm_cell_83/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:i
$while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
while/lstm_cell_83/ones_like_1Fill-while/lstm_cell_83/ones_like_1/Shape:output:0-while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚й
while/lstm_cell_83/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'while/lstm_cell_83/split/ReadVariableOpReadVariableOp2while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0▀
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitХ
while/lstm_cell_83/MatMulMatMulwhile/lstm_cell_83/mul:z:0!while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_1MatMulwhile/lstm_cell_83/mul_1:z:0!while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_2MatMulwhile/lstm_cell_83/mul_2:z:0!while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_3MatMulwhile/lstm_cell_83/mul_3:z:0!while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚f
$while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ы
)while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╤
while/lstm_cell_83/split_1Split-while/lstm_cell_83/split_1/split_dim:output:01while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitв
while/lstm_cell_83/BiasAddBiasAdd#while/lstm_cell_83/MatMul:product:0#while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_1BiasAdd%while/lstm_cell_83/MatMul_1:product:0#while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_2BiasAdd%while/lstm_cell_83/MatMul_2:product:0#while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_3BiasAdd%while/lstm_cell_83/MatMul_3:product:0#while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_4Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_5Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_6Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_7Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
!while/lstm_cell_83/ReadVariableOpReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0w
&while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   y
(while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╠
 while/lstm_cell_83/strided_sliceStridedSlice)while/lstm_cell_83/ReadVariableOp:value:0/while/lstm_cell_83/strided_slice/stack:output:01while/lstm_cell_83/strided_slice/stack_1:output:01while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskб
while/lstm_cell_83/MatMul_4MatMulwhile/lstm_cell_83/mul_4:z:0)while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/addAddV2#while/lstm_cell_83/BiasAdd:output:0%while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚t
while/lstm_cell_83/SigmoidSigmoidwhile/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_1ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_1StridedSlice+while/lstm_cell_83/ReadVariableOp_1:value:01while/lstm_cell_83/strided_slice_1/stack:output:03while/lstm_cell_83/strided_slice_1/stack_1:output:03while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_5MatMulwhile/lstm_cell_83/mul_5:z:0+while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_1AddV2%while/lstm_cell_83/BiasAdd_1:output:0%while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_1Sigmoidwhile/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Й
while/lstm_cell_83/mul_8Mul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_2ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_2StridedSlice+while/lstm_cell_83/ReadVariableOp_2:value:01while/lstm_cell_83/strided_slice_2/stack:output:03while/lstm_cell_83/strided_slice_2/stack_1:output:03while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_6MatMulwhile/lstm_cell_83/mul_6:z:0+while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_2AddV2%while/lstm_cell_83/BiasAdd_2:output:0%while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚p
while/lstm_cell_83/ReluReluwhile/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/mul_9Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/add_3AddV2while/lstm_cell_83/mul_8:z:0while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_3ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_3StridedSlice+while/lstm_cell_83/ReadVariableOp_3:value:01while/lstm_cell_83/strided_slice_3/stack:output:03while/lstm_cell_83/strided_slice_3/stack_1:output:03while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_7MatMulwhile/lstm_cell_83/mul_7:z:0+while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_4AddV2%while/lstm_cell_83/BiasAdd_3:output:0%while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_2Sigmoidwhile/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/mul_10Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚╞
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_10:z:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥{
while/Identity_4Identitywhile/lstm_cell_83/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚z
while/Identity_5Identitywhile/lstm_cell_83/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚╕

while/NoOpNoOp"^while/lstm_cell_83/ReadVariableOp$^while/lstm_cell_83/ReadVariableOp_1$^while/lstm_cell_83/ReadVariableOp_2$^while/lstm_cell_83/ReadVariableOp_3(^while/lstm_cell_83/split/ReadVariableOp*^while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_83_readvariableop_resource,while_lstm_cell_83_readvariableop_resource_0"j
2while_lstm_cell_83_split_1_readvariableop_resource4while_lstm_cell_83_split_1_readvariableop_resource_0"f
0while_lstm_cell_83_split_readvariableop_resource2while_lstm_cell_83_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2F
!while/lstm_cell_83/ReadVariableOp!while/lstm_cell_83/ReadVariableOp2J
#while/lstm_cell_83/ReadVariableOp_1#while/lstm_cell_83/ReadVariableOp_12J
#while/lstm_cell_83/ReadVariableOp_2#while/lstm_cell_83/ReadVariableOp_22J
#while/lstm_cell_83/ReadVariableOp_3#while/lstm_cell_83/ReadVariableOp_32R
'while/lstm_cell_83/split/ReadVariableOp'while/lstm_cell_83/split/ReadVariableOp2V
)while/lstm_cell_83/split_1/ReadVariableOp)while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
╛
╚
while_cond_3102634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3102634___redundant_placeholder05
1while_while_cond_3102634___redundant_placeholder15
1while_while_cond_3102634___redundant_placeholder25
1while_while_cond_3102634___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
╥═
Ъ
"__inference__wrapped_model_3101550
lstm_79_inputT
@sequential_79_lstm_79_lstm_cell_83_split_readvariableop_resource:
№аQ
Bsequential_79_lstm_79_lstm_cell_83_split_1_readvariableop_resource:	аN
:sequential_79_lstm_79_lstm_cell_83_readvariableop_resource:
╚аH
5sequential_79_dense_79_matmul_readvariableop_resource:	╚D
6sequential_79_dense_79_biasadd_readvariableop_resource:
identityИв-sequential_79/dense_79/BiasAdd/ReadVariableOpв,sequential_79/dense_79/MatMul/ReadVariableOpв1sequential_79/lstm_79/lstm_cell_83/ReadVariableOpв3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_1в3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_2в3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_3в7sequential_79/lstm_79/lstm_cell_83/split/ReadVariableOpв9sequential_79/lstm_79/lstm_cell_83/split_1/ReadVariableOpвsequential_79/lstm_79/whileX
sequential_79/lstm_79/ShapeShapelstm_79_input*
T0*
_output_shapes
:s
)sequential_79/lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_79/lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_79/lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_79/lstm_79/strided_sliceStridedSlice$sequential_79/lstm_79/Shape:output:02sequential_79/lstm_79/strided_slice/stack:output:04sequential_79/lstm_79/strided_slice/stack_1:output:04sequential_79/lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_79/lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚╡
"sequential_79/lstm_79/zeros/packedPack,sequential_79/lstm_79/strided_slice:output:0-sequential_79/lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_79/lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    п
sequential_79/lstm_79/zerosFill+sequential_79/lstm_79/zeros/packed:output:0*sequential_79/lstm_79/zeros/Const:output:0*
T0*(
_output_shapes
:         ╚i
&sequential_79/lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚╣
$sequential_79/lstm_79/zeros_1/packedPack,sequential_79/lstm_79/strided_slice:output:0/sequential_79/lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_79/lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╡
sequential_79/lstm_79/zeros_1Fill-sequential_79/lstm_79/zeros_1/packed:output:0,sequential_79/lstm_79/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚y
$sequential_79/lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          б
sequential_79/lstm_79/transpose	Transposelstm_79_input-sequential_79/lstm_79/transpose/perm:output:0*
T0*,
_output_shapes
:         №p
sequential_79/lstm_79/Shape_1Shape#sequential_79/lstm_79/transpose:y:0*
T0*
_output_shapes
:u
+sequential_79/lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_79/lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_79/lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_79/lstm_79/strided_slice_1StridedSlice&sequential_79/lstm_79/Shape_1:output:04sequential_79/lstm_79/strided_slice_1/stack:output:06sequential_79/lstm_79/strided_slice_1/stack_1:output:06sequential_79/lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_79/lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ў
#sequential_79/lstm_79/TensorArrayV2TensorListReserve:sequential_79/lstm_79/TensorArrayV2/element_shape:output:0.sequential_79/lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ь
Ksequential_79/lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   в
=sequential_79/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_79/lstm_79/transpose:y:0Tsequential_79/lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥u
+sequential_79/lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_79/lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_79/lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
%sequential_79/lstm_79/strided_slice_2StridedSlice#sequential_79/lstm_79/transpose:y:04sequential_79/lstm_79/strided_slice_2/stack:output:06sequential_79/lstm_79/strided_slice_2/stack_1:output:06sequential_79/lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         №*
shrink_axis_maskР
2sequential_79/lstm_79/lstm_cell_83/ones_like/ShapeShape.sequential_79/lstm_79/strided_slice_2:output:0*
T0*
_output_shapes
:w
2sequential_79/lstm_79/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?с
,sequential_79/lstm_79/lstm_cell_83/ones_likeFill;sequential_79/lstm_79/lstm_cell_83/ones_like/Shape:output:0;sequential_79/lstm_79/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №И
4sequential_79/lstm_79/lstm_cell_83/ones_like_1/ShapeShape$sequential_79/lstm_79/zeros:output:0*
T0*
_output_shapes
:y
4sequential_79/lstm_79/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ч
.sequential_79/lstm_79/lstm_cell_83/ones_like_1Fill=sequential_79/lstm_79/lstm_cell_83/ones_like_1/Shape:output:0=sequential_79/lstm_79/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚╟
&sequential_79/lstm_79/lstm_cell_83/mulMul.sequential_79/lstm_79/strided_slice_2:output:05sequential_79/lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №╔
(sequential_79/lstm_79/lstm_cell_83/mul_1Mul.sequential_79/lstm_79/strided_slice_2:output:05sequential_79/lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №╔
(sequential_79/lstm_79/lstm_cell_83/mul_2Mul.sequential_79/lstm_79/strided_slice_2:output:05sequential_79/lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №╔
(sequential_79/lstm_79/lstm_cell_83/mul_3Mul.sequential_79/lstm_79/strided_slice_2:output:05sequential_79/lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №t
2sequential_79/lstm_79/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
7sequential_79/lstm_79/lstm_cell_83/split/ReadVariableOpReadVariableOp@sequential_79_lstm_79_lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0П
(sequential_79/lstm_79/lstm_cell_83/splitSplit;sequential_79/lstm_79/lstm_cell_83/split/split_dim:output:0?sequential_79/lstm_79/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split┼
)sequential_79/lstm_79/lstm_cell_83/MatMulMatMul*sequential_79/lstm_79/lstm_cell_83/mul:z:01sequential_79/lstm_79/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚╔
+sequential_79/lstm_79/lstm_cell_83/MatMul_1MatMul,sequential_79/lstm_79/lstm_cell_83/mul_1:z:01sequential_79/lstm_79/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚╔
+sequential_79/lstm_79/lstm_cell_83/MatMul_2MatMul,sequential_79/lstm_79/lstm_cell_83/mul_2:z:01sequential_79/lstm_79/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚╔
+sequential_79/lstm_79/lstm_cell_83/MatMul_3MatMul,sequential_79/lstm_79/lstm_cell_83/mul_3:z:01sequential_79/lstm_79/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚v
4sequential_79/lstm_79/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ╣
9sequential_79/lstm_79/lstm_cell_83/split_1/ReadVariableOpReadVariableOpBsequential_79_lstm_79_lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0Б
*sequential_79/lstm_79/lstm_cell_83/split_1Split=sequential_79/lstm_79/lstm_cell_83/split_1/split_dim:output:0Asequential_79/lstm_79/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_split╥
*sequential_79/lstm_79/lstm_cell_83/BiasAddBiasAdd3sequential_79/lstm_79/lstm_cell_83/MatMul:product:03sequential_79/lstm_79/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚╓
,sequential_79/lstm_79/lstm_cell_83/BiasAdd_1BiasAdd5sequential_79/lstm_79/lstm_cell_83/MatMul_1:product:03sequential_79/lstm_79/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚╓
,sequential_79/lstm_79/lstm_cell_83/BiasAdd_2BiasAdd5sequential_79/lstm_79/lstm_cell_83/MatMul_2:product:03sequential_79/lstm_79/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚╓
,sequential_79/lstm_79/lstm_cell_83/BiasAdd_3BiasAdd5sequential_79/lstm_79/lstm_cell_83/MatMul_3:product:03sequential_79/lstm_79/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚┴
(sequential_79/lstm_79/lstm_cell_83/mul_4Mul$sequential_79/lstm_79/zeros:output:07sequential_79/lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚┴
(sequential_79/lstm_79/lstm_cell_83/mul_5Mul$sequential_79/lstm_79/zeros:output:07sequential_79/lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚┴
(sequential_79/lstm_79/lstm_cell_83/mul_6Mul$sequential_79/lstm_79/zeros:output:07sequential_79/lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚┴
(sequential_79/lstm_79/lstm_cell_83/mul_7Mul$sequential_79/lstm_79/zeros:output:07sequential_79/lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚о
1sequential_79/lstm_79/lstm_cell_83/ReadVariableOpReadVariableOp:sequential_79_lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0З
6sequential_79/lstm_79/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Й
8sequential_79/lstm_79/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   Й
8sequential_79/lstm_79/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ь
0sequential_79/lstm_79/lstm_cell_83/strided_sliceStridedSlice9sequential_79/lstm_79/lstm_cell_83/ReadVariableOp:value:0?sequential_79/lstm_79/lstm_cell_83/strided_slice/stack:output:0Asequential_79/lstm_79/lstm_cell_83/strided_slice/stack_1:output:0Asequential_79/lstm_79/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╤
+sequential_79/lstm_79/lstm_cell_83/MatMul_4MatMul,sequential_79/lstm_79/lstm_cell_83/mul_4:z:09sequential_79/lstm_79/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚╬
&sequential_79/lstm_79/lstm_cell_83/addAddV23sequential_79/lstm_79/lstm_cell_83/BiasAdd:output:05sequential_79/lstm_79/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚Ф
*sequential_79/lstm_79/lstm_cell_83/SigmoidSigmoid*sequential_79/lstm_79/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚░
3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_1ReadVariableOp:sequential_79_lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0Й
8sequential_79/lstm_79/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   Л
:sequential_79/lstm_79/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  Л
:sequential_79/lstm_79/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ж
2sequential_79/lstm_79/lstm_cell_83/strided_slice_1StridedSlice;sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_1:value:0Asequential_79/lstm_79/lstm_cell_83/strided_slice_1/stack:output:0Csequential_79/lstm_79/lstm_cell_83/strided_slice_1/stack_1:output:0Csequential_79/lstm_79/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╙
+sequential_79/lstm_79/lstm_cell_83/MatMul_5MatMul,sequential_79/lstm_79/lstm_cell_83/mul_5:z:0;sequential_79/lstm_79/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚╥
(sequential_79/lstm_79/lstm_cell_83/add_1AddV25sequential_79/lstm_79/lstm_cell_83/BiasAdd_1:output:05sequential_79/lstm_79/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚Ш
,sequential_79/lstm_79/lstm_cell_83/Sigmoid_1Sigmoid,sequential_79/lstm_79/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚╝
(sequential_79/lstm_79/lstm_cell_83/mul_8Mul0sequential_79/lstm_79/lstm_cell_83/Sigmoid_1:y:0&sequential_79/lstm_79/zeros_1:output:0*
T0*(
_output_shapes
:         ╚░
3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_2ReadVariableOp:sequential_79_lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0Й
8sequential_79/lstm_79/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  Л
:sequential_79/lstm_79/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  Л
:sequential_79/lstm_79/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ж
2sequential_79/lstm_79/lstm_cell_83/strided_slice_2StridedSlice;sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_2:value:0Asequential_79/lstm_79/lstm_cell_83/strided_slice_2/stack:output:0Csequential_79/lstm_79/lstm_cell_83/strided_slice_2/stack_1:output:0Csequential_79/lstm_79/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╙
+sequential_79/lstm_79/lstm_cell_83/MatMul_6MatMul,sequential_79/lstm_79/lstm_cell_83/mul_6:z:0;sequential_79/lstm_79/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚╥
(sequential_79/lstm_79/lstm_cell_83/add_2AddV25sequential_79/lstm_79/lstm_cell_83/BiasAdd_2:output:05sequential_79/lstm_79/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚Р
'sequential_79/lstm_79/lstm_cell_83/ReluRelu,sequential_79/lstm_79/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚╔
(sequential_79/lstm_79/lstm_cell_83/mul_9Mul.sequential_79/lstm_79/lstm_cell_83/Sigmoid:y:05sequential_79/lstm_79/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚└
(sequential_79/lstm_79/lstm_cell_83/add_3AddV2,sequential_79/lstm_79/lstm_cell_83/mul_8:z:0,sequential_79/lstm_79/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚░
3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_3ReadVariableOp:sequential_79_lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0Й
8sequential_79/lstm_79/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  Л
:sequential_79/lstm_79/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Л
:sequential_79/lstm_79/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ж
2sequential_79/lstm_79/lstm_cell_83/strided_slice_3StridedSlice;sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_3:value:0Asequential_79/lstm_79/lstm_cell_83/strided_slice_3/stack:output:0Csequential_79/lstm_79/lstm_cell_83/strided_slice_3/stack_1:output:0Csequential_79/lstm_79/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╙
+sequential_79/lstm_79/lstm_cell_83/MatMul_7MatMul,sequential_79/lstm_79/lstm_cell_83/mul_7:z:0;sequential_79/lstm_79/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚╥
(sequential_79/lstm_79/lstm_cell_83/add_4AddV25sequential_79/lstm_79/lstm_cell_83/BiasAdd_3:output:05sequential_79/lstm_79/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚Ш
,sequential_79/lstm_79/lstm_cell_83/Sigmoid_2Sigmoid,sequential_79/lstm_79/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚Т
)sequential_79/lstm_79/lstm_cell_83/Relu_1Relu,sequential_79/lstm_79/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚╬
)sequential_79/lstm_79/lstm_cell_83/mul_10Mul0sequential_79/lstm_79/lstm_cell_83/Sigmoid_2:y:07sequential_79/lstm_79/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚Д
3sequential_79/lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ·
%sequential_79/lstm_79/TensorArrayV2_1TensorListReserve<sequential_79/lstm_79/TensorArrayV2_1/element_shape:output:0.sequential_79/lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥\
sequential_79/lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_79/lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_79/lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▓
sequential_79/lstm_79/whileWhile1sequential_79/lstm_79/while/loop_counter:output:07sequential_79/lstm_79/while/maximum_iterations:output:0#sequential_79/lstm_79/time:output:0.sequential_79/lstm_79/TensorArrayV2_1:handle:0$sequential_79/lstm_79/zeros:output:0&sequential_79/lstm_79/zeros_1:output:0.sequential_79/lstm_79/strided_slice_1:output:0Msequential_79/lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_79_lstm_79_lstm_cell_83_split_readvariableop_resourceBsequential_79_lstm_79_lstm_cell_83_split_1_readvariableop_resource:sequential_79_lstm_79_lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_79_lstm_79_while_body_3101398*4
cond,R*
(sequential_79_lstm_79_while_cond_3101397*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Ч
Fsequential_79/lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   Е
8sequential_79/lstm_79/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_79/lstm_79/while:output:3Osequential_79/lstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0~
+sequential_79/lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_79/lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_79/lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
%sequential_79/lstm_79/strided_slice_3StridedSliceAsequential_79/lstm_79/TensorArrayV2Stack/TensorListStack:tensor:04sequential_79/lstm_79/strided_slice_3/stack:output:06sequential_79/lstm_79/strided_slice_3/stack_1:output:06sequential_79/lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_mask{
&sequential_79/lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ┘
!sequential_79/lstm_79/transpose_1	TransposeAsequential_79/lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_79/lstm_79/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚q
sequential_79/lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Э
0sequential_79/lstm_79/ActivityRegularizer/SquareSquare.sequential_79/lstm_79/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚А
/sequential_79/lstm_79/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ┼
-sequential_79/lstm_79/ActivityRegularizer/SumSum4sequential_79/lstm_79/ActivityRegularizer/Square:y:08sequential_79/lstm_79/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: t
/sequential_79/lstm_79/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<╟
-sequential_79/lstm_79/ActivityRegularizer/mulMul8sequential_79/lstm_79/ActivityRegularizer/mul/x:output:06sequential_79/lstm_79/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: Н
/sequential_79/lstm_79/ActivityRegularizer/ShapeShape.sequential_79/lstm_79/strided_slice_3:output:0*
T0*
_output_shapes
:З
=sequential_79/lstm_79/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?sequential_79/lstm_79/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?sequential_79/lstm_79/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
7sequential_79/lstm_79/ActivityRegularizer/strided_sliceStridedSlice8sequential_79/lstm_79/ActivityRegularizer/Shape:output:0Fsequential_79/lstm_79/ActivityRegularizer/strided_slice/stack:output:0Hsequential_79/lstm_79/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_79/lstm_79/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskи
.sequential_79/lstm_79/ActivityRegularizer/CastCast@sequential_79/lstm_79/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ─
1sequential_79/lstm_79/ActivityRegularizer/truedivRealDiv1sequential_79/lstm_79/ActivityRegularizer/mul:z:02sequential_79/lstm_79/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: г
,sequential_79/dense_79/MatMul/ReadVariableOpReadVariableOp5sequential_79_dense_79_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0┐
sequential_79/dense_79/MatMulMatMul.sequential_79/lstm_79/strided_slice_3:output:04sequential_79/dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_79/dense_79/BiasAdd/ReadVariableOpReadVariableOp6sequential_79_dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_79/dense_79/BiasAddBiasAdd'sequential_79/dense_79/MatMul:product:05sequential_79/dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_79/dense_79/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         П
NoOpNoOp.^sequential_79/dense_79/BiasAdd/ReadVariableOp-^sequential_79/dense_79/MatMul/ReadVariableOp2^sequential_79/lstm_79/lstm_cell_83/ReadVariableOp4^sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_14^sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_24^sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_38^sequential_79/lstm_79/lstm_cell_83/split/ReadVariableOp:^sequential_79/lstm_79/lstm_cell_83/split_1/ReadVariableOp^sequential_79/lstm_79/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2^
-sequential_79/dense_79/BiasAdd/ReadVariableOp-sequential_79/dense_79/BiasAdd/ReadVariableOp2\
,sequential_79/dense_79/MatMul/ReadVariableOp,sequential_79/dense_79/MatMul/ReadVariableOp2f
1sequential_79/lstm_79/lstm_cell_83/ReadVariableOp1sequential_79/lstm_79/lstm_cell_83/ReadVariableOp2j
3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_13sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_12j
3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_23sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_22j
3sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_33sequential_79/lstm_79/lstm_cell_83/ReadVariableOp_32r
7sequential_79/lstm_79/lstm_cell_83/split/ReadVariableOp7sequential_79/lstm_79/lstm_cell_83/split/ReadVariableOp2v
9sequential_79/lstm_79/lstm_cell_83/split_1/ReadVariableOp9sequential_79/lstm_79/lstm_cell_83/split_1/ReadVariableOp2:
sequential_79/lstm_79/whilesequential_79/lstm_79/while:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_79_input
с
ї
/__inference_sequential_79_layer_call_fn_3103041

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         : *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102423o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
Й
G
0__inference_lstm_79_activity_regularizer_3101563
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:         G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<I
mulMulmul/x:output:0Sum:output:0*
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
╛
╚
while_cond_3104571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3104571___redundant_placeholder05
1while_while_cond_3104571___redundant_placeholder15
1while_while_cond_3104571___redundant_placeholder25
1while_while_cond_3104571___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
└%
╛
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103013
lstm_79_input#
lstm_79_3102985:
№а
lstm_79_3102987:	а#
lstm_79_3102989:
╚а#
dense_79_3103000:	╚
dense_79_3103002:
identity

identity_1Ив dense_79/StatefulPartitionedCallвlstm_79/StatefulPartitionedCallвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpК
lstm_79/StatefulPartitionedCallStatefulPartitionedCalllstm_79_inputlstm_79_3102985lstm_79_3102987lstm_79_3102989*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102839╚
+lstm_79/ActivityRegularizer/PartitionedCallPartitionedCall(lstm_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563y
!lstm_79/ActivityRegularizer/ShapeShape(lstm_79/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/lstm_79/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_79/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_79/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)lstm_79/ActivityRegularizer/strided_sliceStridedSlice*lstm_79/ActivityRegularizer/Shape:output:08lstm_79/ActivityRegularizer/strided_slice/stack:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 lstm_79/ActivityRegularizer/CastCast2lstm_79/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: л
#lstm_79/ActivityRegularizer/truedivRealDiv4lstm_79/ActivityRegularizer/PartitionedCall:output:0$lstm_79/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Х
 dense_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0dense_79_3103000dense_79_3103002*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_3102409Щ
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_79_3102989* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         g

Identity_1Identity'lstm_79/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ╒
NoOpNoOp!^dense_79/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCallH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_79_input
Ч
║
)__inference_lstm_79_layer_call_fn_3103755
inputs_0
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallщ
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3101775p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
inputs/0
ЗC
╒
D__inference_lstm_79_layer_call_and_return_conditional_losses_3101775

inputs(
lstm_cell_83_3101687:
№а#
lstm_cell_83_3101689:	а(
lstm_cell_83_3101691:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpв$lstm_cell_83/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
!:                  №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_mask№
$lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_83_3101687lstm_cell_83_3101689lstm_cell_83_3101691*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101686n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : └
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_83_3101687lstm_cell_83_3101689lstm_cell_83_3101691*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3101700*
condR
while_cond_3101699*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╚*
element_dtype0h
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
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ю
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_83_3101691* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚┐
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_83/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_83/StatefulPartitionedCall$lstm_cell_83/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  №
 
_user_specified_nameinputs
ож
н
(sequential_79_lstm_79_while_body_3101398H
Dsequential_79_lstm_79_while_sequential_79_lstm_79_while_loop_counterN
Jsequential_79_lstm_79_while_sequential_79_lstm_79_while_maximum_iterations+
'sequential_79_lstm_79_while_placeholder-
)sequential_79_lstm_79_while_placeholder_1-
)sequential_79_lstm_79_while_placeholder_2-
)sequential_79_lstm_79_while_placeholder_3G
Csequential_79_lstm_79_while_sequential_79_lstm_79_strided_slice_1_0Г
sequential_79_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_79_tensorarrayunstack_tensorlistfromtensor_0\
Hsequential_79_lstm_79_while_lstm_cell_83_split_readvariableop_resource_0:
№аY
Jsequential_79_lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0:	аV
Bsequential_79_lstm_79_while_lstm_cell_83_readvariableop_resource_0:
╚а(
$sequential_79_lstm_79_while_identity*
&sequential_79_lstm_79_while_identity_1*
&sequential_79_lstm_79_while_identity_2*
&sequential_79_lstm_79_while_identity_3*
&sequential_79_lstm_79_while_identity_4*
&sequential_79_lstm_79_while_identity_5E
Asequential_79_lstm_79_while_sequential_79_lstm_79_strided_slice_1Б
}sequential_79_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_79_tensorarrayunstack_tensorlistfromtensorZ
Fsequential_79_lstm_79_while_lstm_cell_83_split_readvariableop_resource:
№аW
Hsequential_79_lstm_79_while_lstm_cell_83_split_1_readvariableop_resource:	аT
@sequential_79_lstm_79_while_lstm_cell_83_readvariableop_resource:
╚аИв7sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOpв9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_1в9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_2в9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_3в=sequential_79/lstm_79/while/lstm_cell_83/split/ReadVariableOpв?sequential_79/lstm_79/while/lstm_cell_83/split_1/ReadVariableOpЮ
Msequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   Х
?sequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_79_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_79_tensorarrayunstack_tensorlistfromtensor_0'sequential_79_lstm_79_while_placeholderVsequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0о
8sequential_79/lstm_79/while/lstm_cell_83/ones_like/ShapeShapeFsequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:}
8sequential_79/lstm_79/while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?є
2sequential_79/lstm_79/while/lstm_cell_83/ones_likeFillAsequential_79/lstm_79/while/lstm_cell_83/ones_like/Shape:output:0Asequential_79/lstm_79/while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №У
:sequential_79/lstm_79/while/lstm_cell_83/ones_like_1/ShapeShape)sequential_79_lstm_79_while_placeholder_2*
T0*
_output_shapes
:
:sequential_79/lstm_79/while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∙
4sequential_79/lstm_79/while/lstm_cell_83/ones_like_1FillCsequential_79/lstm_79/while/lstm_cell_83/ones_like_1/Shape:output:0Csequential_79/lstm_79/while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚ы
,sequential_79/lstm_79/while/lstm_cell_83/mulMulFsequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0;sequential_79/lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №э
.sequential_79/lstm_79/while/lstm_cell_83/mul_1MulFsequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0;sequential_79/lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №э
.sequential_79/lstm_79/while/lstm_cell_83/mul_2MulFsequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0;sequential_79/lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №э
.sequential_79/lstm_79/while/lstm_cell_83/mul_3MulFsequential_79/lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0;sequential_79/lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №z
8sequential_79/lstm_79/while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
=sequential_79/lstm_79/while/lstm_cell_83/split/ReadVariableOpReadVariableOpHsequential_79_lstm_79_while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0б
.sequential_79/lstm_79/while/lstm_cell_83/splitSplitAsequential_79/lstm_79/while/lstm_cell_83/split/split_dim:output:0Esequential_79/lstm_79/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_split╫
/sequential_79/lstm_79/while/lstm_cell_83/MatMulMatMul0sequential_79/lstm_79/while/lstm_cell_83/mul:z:07sequential_79/lstm_79/while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚█
1sequential_79/lstm_79/while/lstm_cell_83/MatMul_1MatMul2sequential_79/lstm_79/while/lstm_cell_83/mul_1:z:07sequential_79/lstm_79/while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚█
1sequential_79/lstm_79/while/lstm_cell_83/MatMul_2MatMul2sequential_79/lstm_79/while/lstm_cell_83/mul_2:z:07sequential_79/lstm_79/while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚█
1sequential_79/lstm_79/while/lstm_cell_83/MatMul_3MatMul2sequential_79/lstm_79/while/lstm_cell_83/mul_3:z:07sequential_79/lstm_79/while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚|
:sequential_79/lstm_79/while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ╟
?sequential_79/lstm_79/while/lstm_cell_83/split_1/ReadVariableOpReadVariableOpJsequential_79_lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0У
0sequential_79/lstm_79/while/lstm_cell_83/split_1SplitCsequential_79/lstm_79/while/lstm_cell_83/split_1/split_dim:output:0Gsequential_79/lstm_79/while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitф
0sequential_79/lstm_79/while/lstm_cell_83/BiasAddBiasAdd9sequential_79/lstm_79/while/lstm_cell_83/MatMul:product:09sequential_79/lstm_79/while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚ш
2sequential_79/lstm_79/while/lstm_cell_83/BiasAdd_1BiasAdd;sequential_79/lstm_79/while/lstm_cell_83/MatMul_1:product:09sequential_79/lstm_79/while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚ш
2sequential_79/lstm_79/while/lstm_cell_83/BiasAdd_2BiasAdd;sequential_79/lstm_79/while/lstm_cell_83/MatMul_2:product:09sequential_79/lstm_79/while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚ш
2sequential_79/lstm_79/while/lstm_cell_83/BiasAdd_3BiasAdd;sequential_79/lstm_79/while/lstm_cell_83/MatMul_3:product:09sequential_79/lstm_79/while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚╥
.sequential_79/lstm_79/while/lstm_cell_83/mul_4Mul)sequential_79_lstm_79_while_placeholder_2=sequential_79/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╥
.sequential_79/lstm_79/while/lstm_cell_83/mul_5Mul)sequential_79_lstm_79_while_placeholder_2=sequential_79/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╥
.sequential_79/lstm_79/while/lstm_cell_83/mul_6Mul)sequential_79_lstm_79_while_placeholder_2=sequential_79/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╥
.sequential_79/lstm_79/while/lstm_cell_83/mul_7Mul)sequential_79_lstm_79_while_placeholder_2=sequential_79/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚╝
7sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOpReadVariableOpBsequential_79_lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0Н
<sequential_79/lstm_79/while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        П
>sequential_79/lstm_79/while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   П
>sequential_79/lstm_79/while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ║
6sequential_79/lstm_79/while/lstm_cell_83/strided_sliceStridedSlice?sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp:value:0Esequential_79/lstm_79/while/lstm_cell_83/strided_slice/stack:output:0Gsequential_79/lstm_79/while/lstm_cell_83/strided_slice/stack_1:output:0Gsequential_79/lstm_79/while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskу
1sequential_79/lstm_79/while/lstm_cell_83/MatMul_4MatMul2sequential_79/lstm_79/while/lstm_cell_83/mul_4:z:0?sequential_79/lstm_79/while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚р
,sequential_79/lstm_79/while/lstm_cell_83/addAddV29sequential_79/lstm_79/while/lstm_cell_83/BiasAdd:output:0;sequential_79/lstm_79/while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚а
0sequential_79/lstm_79/while/lstm_cell_83/SigmoidSigmoid0sequential_79/lstm_79/while/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚╛
9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_1ReadVariableOpBsequential_79_lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0П
>sequential_79/lstm_79/while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   С
@sequential_79/lstm_79/while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  С
@sequential_79/lstm_79/while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ─
8sequential_79/lstm_79/while/lstm_cell_83/strided_slice_1StridedSliceAsequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_1:value:0Gsequential_79/lstm_79/while/lstm_cell_83/strided_slice_1/stack:output:0Isequential_79/lstm_79/while/lstm_cell_83/strided_slice_1/stack_1:output:0Isequential_79/lstm_79/while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskх
1sequential_79/lstm_79/while/lstm_cell_83/MatMul_5MatMul2sequential_79/lstm_79/while/lstm_cell_83/mul_5:z:0Asequential_79/lstm_79/while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚ф
.sequential_79/lstm_79/while/lstm_cell_83/add_1AddV2;sequential_79/lstm_79/while/lstm_cell_83/BiasAdd_1:output:0;sequential_79/lstm_79/while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚д
2sequential_79/lstm_79/while/lstm_cell_83/Sigmoid_1Sigmoid2sequential_79/lstm_79/while/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚╦
.sequential_79/lstm_79/while/lstm_cell_83/mul_8Mul6sequential_79/lstm_79/while/lstm_cell_83/Sigmoid_1:y:0)sequential_79_lstm_79_while_placeholder_3*
T0*(
_output_shapes
:         ╚╛
9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_2ReadVariableOpBsequential_79_lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0П
>sequential_79/lstm_79/while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  С
@sequential_79/lstm_79/while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  С
@sequential_79/lstm_79/while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ─
8sequential_79/lstm_79/while/lstm_cell_83/strided_slice_2StridedSliceAsequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_2:value:0Gsequential_79/lstm_79/while/lstm_cell_83/strided_slice_2/stack:output:0Isequential_79/lstm_79/while/lstm_cell_83/strided_slice_2/stack_1:output:0Isequential_79/lstm_79/while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskх
1sequential_79/lstm_79/while/lstm_cell_83/MatMul_6MatMul2sequential_79/lstm_79/while/lstm_cell_83/mul_6:z:0Asequential_79/lstm_79/while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚ф
.sequential_79/lstm_79/while/lstm_cell_83/add_2AddV2;sequential_79/lstm_79/while/lstm_cell_83/BiasAdd_2:output:0;sequential_79/lstm_79/while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚Ь
-sequential_79/lstm_79/while/lstm_cell_83/ReluRelu2sequential_79/lstm_79/while/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚█
.sequential_79/lstm_79/while/lstm_cell_83/mul_9Mul4sequential_79/lstm_79/while/lstm_cell_83/Sigmoid:y:0;sequential_79/lstm_79/while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚╥
.sequential_79/lstm_79/while/lstm_cell_83/add_3AddV22sequential_79/lstm_79/while/lstm_cell_83/mul_8:z:02sequential_79/lstm_79/while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚╛
9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_3ReadVariableOpBsequential_79_lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0П
>sequential_79/lstm_79/while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  С
@sequential_79/lstm_79/while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        С
@sequential_79/lstm_79/while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ─
8sequential_79/lstm_79/while/lstm_cell_83/strided_slice_3StridedSliceAsequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_3:value:0Gsequential_79/lstm_79/while/lstm_cell_83/strided_slice_3/stack:output:0Isequential_79/lstm_79/while/lstm_cell_83/strided_slice_3/stack_1:output:0Isequential_79/lstm_79/while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskх
1sequential_79/lstm_79/while/lstm_cell_83/MatMul_7MatMul2sequential_79/lstm_79/while/lstm_cell_83/mul_7:z:0Asequential_79/lstm_79/while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚ф
.sequential_79/lstm_79/while/lstm_cell_83/add_4AddV2;sequential_79/lstm_79/while/lstm_cell_83/BiasAdd_3:output:0;sequential_79/lstm_79/while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚д
2sequential_79/lstm_79/while/lstm_cell_83/Sigmoid_2Sigmoid2sequential_79/lstm_79/while/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚Ю
/sequential_79/lstm_79/while/lstm_cell_83/Relu_1Relu2sequential_79/lstm_79/while/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚р
/sequential_79/lstm_79/while/lstm_cell_83/mul_10Mul6sequential_79/lstm_79/while/lstm_cell_83/Sigmoid_2:y:0=sequential_79/lstm_79/while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚Ю
@sequential_79/lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_79_lstm_79_while_placeholder_1'sequential_79_lstm_79_while_placeholder3sequential_79/lstm_79/while/lstm_cell_83/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥c
!sequential_79/lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
sequential_79/lstm_79/while/addAddV2'sequential_79_lstm_79_while_placeholder*sequential_79/lstm_79/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_79/lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_79/lstm_79/while/add_1AddV2Dsequential_79_lstm_79_while_sequential_79_lstm_79_while_loop_counter,sequential_79/lstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
$sequential_79/lstm_79/while/IdentityIdentity%sequential_79/lstm_79/while/add_1:z:0!^sequential_79/lstm_79/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_79/lstm_79/while/Identity_1IdentityJsequential_79_lstm_79_while_sequential_79_lstm_79_while_maximum_iterations!^sequential_79/lstm_79/while/NoOp*
T0*
_output_shapes
: Ы
&sequential_79/lstm_79/while/Identity_2Identity#sequential_79/lstm_79/while/add:z:0!^sequential_79/lstm_79/while/NoOp*
T0*
_output_shapes
: █
&sequential_79/lstm_79/while/Identity_3IdentityPsequential_79/lstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_79/lstm_79/while/NoOp*
T0*
_output_shapes
: :щш╥╜
&sequential_79/lstm_79/while/Identity_4Identity3sequential_79/lstm_79/while/lstm_cell_83/mul_10:z:0!^sequential_79/lstm_79/while/NoOp*
T0*(
_output_shapes
:         ╚╝
&sequential_79/lstm_79/while/Identity_5Identity2sequential_79/lstm_79/while/lstm_cell_83/add_3:z:0!^sequential_79/lstm_79/while/NoOp*
T0*(
_output_shapes
:         ╚╥
 sequential_79/lstm_79/while/NoOpNoOp8^sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp:^sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_1:^sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_2:^sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_3>^sequential_79/lstm_79/while/lstm_cell_83/split/ReadVariableOp@^sequential_79/lstm_79/while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_79_lstm_79_while_identity-sequential_79/lstm_79/while/Identity:output:0"Y
&sequential_79_lstm_79_while_identity_1/sequential_79/lstm_79/while/Identity_1:output:0"Y
&sequential_79_lstm_79_while_identity_2/sequential_79/lstm_79/while/Identity_2:output:0"Y
&sequential_79_lstm_79_while_identity_3/sequential_79/lstm_79/while/Identity_3:output:0"Y
&sequential_79_lstm_79_while_identity_4/sequential_79/lstm_79/while/Identity_4:output:0"Y
&sequential_79_lstm_79_while_identity_5/sequential_79/lstm_79/while/Identity_5:output:0"Ж
@sequential_79_lstm_79_while_lstm_cell_83_readvariableop_resourceBsequential_79_lstm_79_while_lstm_cell_83_readvariableop_resource_0"Ц
Hsequential_79_lstm_79_while_lstm_cell_83_split_1_readvariableop_resourceJsequential_79_lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0"Т
Fsequential_79_lstm_79_while_lstm_cell_83_split_readvariableop_resourceHsequential_79_lstm_79_while_lstm_cell_83_split_readvariableop_resource_0"И
Asequential_79_lstm_79_while_sequential_79_lstm_79_strided_slice_1Csequential_79_lstm_79_while_sequential_79_lstm_79_strided_slice_1_0"А
}sequential_79_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_79_tensorarrayunstack_tensorlistfromtensorsequential_79_lstm_79_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2r
7sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp7sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp2v
9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_19sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_12v
9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_29sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_22v
9sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_39sequential_79/lstm_79/while/lstm_cell_83/ReadVariableOp_32~
=sequential_79/lstm_79/while/lstm_cell_83/split/ReadVariableOp=sequential_79/lstm_79/while/lstm_cell_83/split/ReadVariableOp2В
?sequential_79/lstm_79/while/lstm_cell_83/split_1/ReadVariableOp?sequential_79/lstm_79/while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
╛
╚
while_cond_3101699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3101699___redundant_placeholder05
1while_while_cond_3101699___redundant_placeholder15
1while_while_cond_3101699___redundant_placeholder25
1while_while_cond_3101699___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
ъ
щ
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103801
inputs_0
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identity

identity_1ИвStatefulPartitionedCallщ
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3101775д
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
 *-
config_proto

CPU

GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  №
"
_user_specified_name
inputs/0
└5
н

 __inference__traced_save_3105491
file_prefix.
*savev2_dense_79_kernel_read_readvariableop,
(savev2_dense_79_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_79_lstm_cell_83_kernel_read_readvariableopD
@savev2_lstm_79_lstm_cell_83_recurrent_kernel_read_readvariableop8
4savev2_lstm_79_lstm_cell_83_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_79_kernel_m_read_readvariableop3
/savev2_adam_dense_79_bias_m_read_readvariableopA
=savev2_adam_lstm_79_lstm_cell_83_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_79_lstm_cell_83_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_79_lstm_cell_83_bias_m_read_readvariableop5
1savev2_adam_dense_79_kernel_v_read_readvariableop3
/savev2_adam_dense_79_bias_v_read_readvariableopA
=savev2_adam_lstm_79_lstm_cell_83_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_79_lstm_cell_83_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_79_lstm_cell_83_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
: е
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╬

value─
B┴
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЫ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B о

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_79_kernel_read_readvariableop(savev2_dense_79_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_79_lstm_cell_83_kernel_read_readvariableop@savev2_lstm_79_lstm_cell_83_recurrent_kernel_read_readvariableop4savev2_lstm_79_lstm_cell_83_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_79_kernel_m_read_readvariableop/savev2_adam_dense_79_bias_m_read_readvariableop=savev2_adam_lstm_79_lstm_cell_83_kernel_m_read_readvariableopGsavev2_adam_lstm_79_lstm_cell_83_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_79_lstm_cell_83_bias_m_read_readvariableop1savev2_adam_dense_79_kernel_v_read_readvariableop/savev2_adam_dense_79_bias_v_read_readvariableop=savev2_adam_lstm_79_lstm_cell_83_kernel_v_read_readvariableopGsavev2_adam_lstm_79_lstm_cell_83_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_79_lstm_cell_83_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*╖
_input_shapesе
в: :	╚:: : : : : :
№а:
╚а:а: : :	╚::
№а:
╚а:а:	╚::
№а:
╚а:а: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	╚: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
№а:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	╚: 

_output_shapes
::&"
 
_output_shapes
:
№а:&"
 
_output_shapes
:
╚а:!

_output_shapes	
:а:%!

_output_shapes
:	╚: 

_output_shapes
::&"
 
_output_shapes
:
№а:&"
 
_output_shapes
:
╚а:!

_output_shapes	
:а:

_output_shapes
: 
ЗC
╒
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102094

inputs(
lstm_cell_83_3102006:
№а#
lstm_cell_83_3102008:	а(
lstm_cell_83_3102010:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpв$lstm_cell_83/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
!:                  №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_mask№
$lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_83_3102006lstm_cell_83_3102008lstm_cell_83_3102010*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101960n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : └
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_83_3102006lstm_cell_83_3102008lstm_cell_83_3102010*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3102019*
condR
while_cond_3102018*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╚*
element_dtype0h
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
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ю
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_83_3102010* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚┐
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_83/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_83/StatefulPartitionedCall$lstm_cell_83/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  №
 
_user_specified_nameinputs
┴
Є
%__inference_signature_wrapper_3103738
lstm_79_input
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCalllstm_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_3101550o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
_user_specified_namelstm_79_input
с
ї
/__inference_sequential_79_layer_call_fn_3103057

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         : *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102921o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
╛
╚
while_cond_3102018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3102018___redundant_placeholder05
1while_while_cond_3102018___redundant_placeholder15
1while_while_cond_3102018___redundant_placeholder25
1while_while_cond_3102018___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
╬┼
й	
while_body_3102635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_83_split_readvariableop_resource_0:
№аC
4while_lstm_cell_83_split_1_readvariableop_resource_0:	а@
,while_lstm_cell_83_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_83_split_readvariableop_resource:
№аA
2while_lstm_cell_83_split_1_readvariableop_resource:	а>
*while_lstm_cell_83_readvariableop_resource:
╚аИв!while/lstm_cell_83/ReadVariableOpв#while/lstm_cell_83/ReadVariableOp_1в#while/lstm_cell_83/ReadVariableOp_2в#while/lstm_cell_83/ReadVariableOp_3в'while/lstm_cell_83/split/ReadVariableOpв)while/lstm_cell_83/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0В
"while/lstm_cell_83/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:g
"while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
while/lstm_cell_83/ones_likeFill+while/lstm_cell_83/ones_like/Shape:output:0+while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №e
 while/lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?к
while/lstm_cell_83/dropout/MulMul%while/lstm_cell_83/ones_like:output:0)while/lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №u
 while/lstm_cell_83/dropout/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:│
7while/lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0n
)while/lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>р
'while/lstm_cell_83/dropout/GreaterEqualGreaterEqual@while/lstm_cell_83/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ц
while/lstm_cell_83/dropout/CastCast+while/lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №г
 while/lstm_cell_83/dropout/Mul_1Mul"while/lstm_cell_83/dropout/Mul:z:0#while/lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_1/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_1/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_1/CastCast-while/lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_1/Mul_1Mul$while/lstm_cell_83/dropout_1/Mul:z:0%while/lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_2/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_2/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_2/CastCast-while/lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_2/Mul_1Mul$while/lstm_cell_83/dropout_2/Mul:z:0%while/lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_3/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_3/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_3/CastCast-while/lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_3/Mul_1Mul$while/lstm_cell_83/dropout_3/Mul:z:0%while/lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №g
$while/lstm_cell_83/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:i
$while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
while/lstm_cell_83/ones_like_1Fill-while/lstm_cell_83/ones_like_1/Shape:output:0-while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_4/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_4/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_4/CastCast-while/lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_4/Mul_1Mul$while/lstm_cell_83/dropout_4/Mul:z:0%while/lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_5/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_5/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_5/CastCast-while/lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_5/Mul_1Mul$while/lstm_cell_83/dropout_5/Mul:z:0%while/lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_6/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_6/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_6/CastCast-while/lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_6/Mul_1Mul$while/lstm_cell_83/dropout_6/Mul:z:0%while/lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_7/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_7/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_7/CastCast-while/lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_7/Mul_1Mul$while/lstm_cell_83/dropout_7/Mul:z:0%while/lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚и
while/lstm_cell_83/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'while/lstm_cell_83/split/ReadVariableOpReadVariableOp2while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0▀
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitХ
while/lstm_cell_83/MatMulMatMulwhile/lstm_cell_83/mul:z:0!while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_1MatMulwhile/lstm_cell_83/mul_1:z:0!while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_2MatMulwhile/lstm_cell_83/mul_2:z:0!while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_3MatMulwhile/lstm_cell_83/mul_3:z:0!while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚f
$while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ы
)while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╤
while/lstm_cell_83/split_1Split-while/lstm_cell_83/split_1/split_dim:output:01while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitв
while/lstm_cell_83/BiasAddBiasAdd#while/lstm_cell_83/MatMul:product:0#while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_1BiasAdd%while/lstm_cell_83/MatMul_1:product:0#while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_2BiasAdd%while/lstm_cell_83/MatMul_2:product:0#while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_3BiasAdd%while/lstm_cell_83/MatMul_3:product:0#while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_4Mulwhile_placeholder_2&while/lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_5Mulwhile_placeholder_2&while/lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_6Mulwhile_placeholder_2&while/lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_7Mulwhile_placeholder_2&while/lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚Р
!while/lstm_cell_83/ReadVariableOpReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0w
&while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   y
(while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╠
 while/lstm_cell_83/strided_sliceStridedSlice)while/lstm_cell_83/ReadVariableOp:value:0/while/lstm_cell_83/strided_slice/stack:output:01while/lstm_cell_83/strided_slice/stack_1:output:01while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskб
while/lstm_cell_83/MatMul_4MatMulwhile/lstm_cell_83/mul_4:z:0)while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/addAddV2#while/lstm_cell_83/BiasAdd:output:0%while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚t
while/lstm_cell_83/SigmoidSigmoidwhile/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_1ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_1StridedSlice+while/lstm_cell_83/ReadVariableOp_1:value:01while/lstm_cell_83/strided_slice_1/stack:output:03while/lstm_cell_83/strided_slice_1/stack_1:output:03while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_5MatMulwhile/lstm_cell_83/mul_5:z:0+while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_1AddV2%while/lstm_cell_83/BiasAdd_1:output:0%while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_1Sigmoidwhile/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Й
while/lstm_cell_83/mul_8Mul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_2ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_2StridedSlice+while/lstm_cell_83/ReadVariableOp_2:value:01while/lstm_cell_83/strided_slice_2/stack:output:03while/lstm_cell_83/strided_slice_2/stack_1:output:03while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_6MatMulwhile/lstm_cell_83/mul_6:z:0+while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_2AddV2%while/lstm_cell_83/BiasAdd_2:output:0%while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚p
while/lstm_cell_83/ReluReluwhile/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/mul_9Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/add_3AddV2while/lstm_cell_83/mul_8:z:0while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_3ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_3StridedSlice+while/lstm_cell_83/ReadVariableOp_3:value:01while/lstm_cell_83/strided_slice_3/stack:output:03while/lstm_cell_83/strided_slice_3/stack_1:output:03while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_7MatMulwhile/lstm_cell_83/mul_7:z:0+while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_4AddV2%while/lstm_cell_83/BiasAdd_3:output:0%while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_2Sigmoidwhile/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/mul_10Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚╞
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_10:z:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥{
while/Identity_4Identitywhile/lstm_cell_83/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚z
while/Identity_5Identitywhile/lstm_cell_83/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚╕

while/NoOpNoOp"^while/lstm_cell_83/ReadVariableOp$^while/lstm_cell_83/ReadVariableOp_1$^while/lstm_cell_83/ReadVariableOp_2$^while/lstm_cell_83/ReadVariableOp_3(^while/lstm_cell_83/split/ReadVariableOp*^while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_83_readvariableop_resource,while_lstm_cell_83_readvariableop_resource_0"j
2while_lstm_cell_83_split_1_readvariableop_resource4while_lstm_cell_83_split_1_readvariableop_resource_0"f
0while_lstm_cell_83_split_readvariableop_resource2while_lstm_cell_83_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2F
!while/lstm_cell_83/ReadVariableOp!while/lstm_cell_83/ReadVariableOp2J
#while/lstm_cell_83/ReadVariableOp_1#while/lstm_cell_83/ReadVariableOp_12J
#while/lstm_cell_83/ReadVariableOp_2#while/lstm_cell_83/ReadVariableOp_22J
#while/lstm_cell_83/ReadVariableOp_3#while/lstm_cell_83/ReadVariableOp_32R
'while/lstm_cell_83/split/ReadVariableOp'while/lstm_cell_83/split/ReadVariableOp2V
)while/lstm_cell_83/split_1/ReadVariableOp)while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
КИ
┴
lstm_79_while_body_3103166,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3+
'lstm_79_while_lstm_79_strided_slice_1_0g
clstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_79_while_lstm_cell_83_split_readvariableop_resource_0:
№аK
<lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0:	аH
4lstm_79_while_lstm_cell_83_readvariableop_resource_0:
╚а
lstm_79_while_identity
lstm_79_while_identity_1
lstm_79_while_identity_2
lstm_79_while_identity_3
lstm_79_while_identity_4
lstm_79_while_identity_5)
%lstm_79_while_lstm_79_strided_slice_1e
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorL
8lstm_79_while_lstm_cell_83_split_readvariableop_resource:
№аI
:lstm_79_while_lstm_cell_83_split_1_readvariableop_resource:	аF
2lstm_79_while_lstm_cell_83_readvariableop_resource:
╚аИв)lstm_79/while/lstm_cell_83/ReadVariableOpв+lstm_79/while/lstm_cell_83/ReadVariableOp_1в+lstm_79/while/lstm_cell_83/ReadVariableOp_2в+lstm_79/while/lstm_cell_83/ReadVariableOp_3в/lstm_79/while/lstm_cell_83/split/ReadVariableOpв1lstm_79/while/lstm_cell_83/split_1/ReadVariableOpР
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   ╧
1lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0lstm_79_while_placeholderHlstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Т
*lstm_79/while/lstm_cell_83/ones_like/ShapeShape8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:o
*lstm_79/while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╔
$lstm_79/while/lstm_cell_83/ones_likeFill3lstm_79/while/lstm_cell_83/ones_like/Shape:output:03lstm_79/while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №w
,lstm_79/while/lstm_cell_83/ones_like_1/ShapeShapelstm_79_while_placeholder_2*
T0*
_output_shapes
:q
,lstm_79/while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╧
&lstm_79/while/lstm_cell_83/ones_like_1Fill5lstm_79/while/lstm_cell_83/ones_like_1/Shape:output:05lstm_79/while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚┴
lstm_79/while/lstm_cell_83/mulMul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №├
 lstm_79/while/lstm_cell_83/mul_1Mul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №├
 lstm_79/while/lstm_cell_83/mul_2Mul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №├
 lstm_79/while/lstm_cell_83/mul_3Mul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №l
*lstm_79/while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
/lstm_79/while/lstm_cell_83/split/ReadVariableOpReadVariableOp:lstm_79_while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0ў
 lstm_79/while/lstm_cell_83/splitSplit3lstm_79/while/lstm_cell_83/split/split_dim:output:07lstm_79/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitн
!lstm_79/while/lstm_cell_83/MatMulMatMul"lstm_79/while/lstm_cell_83/mul:z:0)lstm_79/while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚▒
#lstm_79/while/lstm_cell_83/MatMul_1MatMul$lstm_79/while/lstm_cell_83/mul_1:z:0)lstm_79/while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚▒
#lstm_79/while/lstm_cell_83/MatMul_2MatMul$lstm_79/while/lstm_cell_83/mul_2:z:0)lstm_79/while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚▒
#lstm_79/while/lstm_cell_83/MatMul_3MatMul$lstm_79/while/lstm_cell_83/mul_3:z:0)lstm_79/while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚n
,lstm_79/while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : л
1lstm_79/while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp<lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0щ
"lstm_79/while/lstm_cell_83/split_1Split5lstm_79/while/lstm_cell_83/split_1/split_dim:output:09lstm_79/while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_split║
"lstm_79/while/lstm_cell_83/BiasAddBiasAdd+lstm_79/while/lstm_cell_83/MatMul:product:0+lstm_79/while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚╛
$lstm_79/while/lstm_cell_83/BiasAdd_1BiasAdd-lstm_79/while/lstm_cell_83/MatMul_1:product:0+lstm_79/while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚╛
$lstm_79/while/lstm_cell_83/BiasAdd_2BiasAdd-lstm_79/while/lstm_cell_83/MatMul_2:product:0+lstm_79/while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚╛
$lstm_79/while/lstm_cell_83/BiasAdd_3BiasAdd-lstm_79/while/lstm_cell_83/MatMul_3:product:0+lstm_79/while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚и
 lstm_79/while/lstm_cell_83/mul_4Mullstm_79_while_placeholder_2/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚и
 lstm_79/while/lstm_cell_83/mul_5Mullstm_79_while_placeholder_2/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚и
 lstm_79/while/lstm_cell_83/mul_6Mullstm_79_while_placeholder_2/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚и
 lstm_79/while/lstm_cell_83/mul_7Mullstm_79_while_placeholder_2/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚а
)lstm_79/while/lstm_cell_83/ReadVariableOpReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0
.lstm_79/while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0lstm_79/while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   Б
0lstm_79/while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
(lstm_79/while/lstm_cell_83/strided_sliceStridedSlice1lstm_79/while/lstm_cell_83/ReadVariableOp:value:07lstm_79/while/lstm_cell_83/strided_slice/stack:output:09lstm_79/while/lstm_cell_83/strided_slice/stack_1:output:09lstm_79/while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╣
#lstm_79/while/lstm_cell_83/MatMul_4MatMul$lstm_79/while/lstm_cell_83/mul_4:z:01lstm_79/while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚╢
lstm_79/while/lstm_cell_83/addAddV2+lstm_79/while/lstm_cell_83/BiasAdd:output:0-lstm_79/while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚Д
"lstm_79/while/lstm_cell_83/SigmoidSigmoid"lstm_79/while/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚в
+lstm_79/while/lstm_cell_83/ReadVariableOp_1ReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0Б
0lstm_79/while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   Г
2lstm_79/while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  Г
2lstm_79/while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ■
*lstm_79/while/lstm_cell_83/strided_slice_1StridedSlice3lstm_79/while/lstm_cell_83/ReadVariableOp_1:value:09lstm_79/while/lstm_cell_83/strided_slice_1/stack:output:0;lstm_79/while/lstm_cell_83/strided_slice_1/stack_1:output:0;lstm_79/while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╗
#lstm_79/while/lstm_cell_83/MatMul_5MatMul$lstm_79/while/lstm_cell_83/mul_5:z:03lstm_79/while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚║
 lstm_79/while/lstm_cell_83/add_1AddV2-lstm_79/while/lstm_cell_83/BiasAdd_1:output:0-lstm_79/while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚И
$lstm_79/while/lstm_cell_83/Sigmoid_1Sigmoid$lstm_79/while/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚б
 lstm_79/while/lstm_cell_83/mul_8Mul(lstm_79/while/lstm_cell_83/Sigmoid_1:y:0lstm_79_while_placeholder_3*
T0*(
_output_shapes
:         ╚в
+lstm_79/while/lstm_cell_83/ReadVariableOp_2ReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0Б
0lstm_79/while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  Г
2lstm_79/while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  Г
2lstm_79/while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ■
*lstm_79/while/lstm_cell_83/strided_slice_2StridedSlice3lstm_79/while/lstm_cell_83/ReadVariableOp_2:value:09lstm_79/while/lstm_cell_83/strided_slice_2/stack:output:0;lstm_79/while/lstm_cell_83/strided_slice_2/stack_1:output:0;lstm_79/while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╗
#lstm_79/while/lstm_cell_83/MatMul_6MatMul$lstm_79/while/lstm_cell_83/mul_6:z:03lstm_79/while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚║
 lstm_79/while/lstm_cell_83/add_2AddV2-lstm_79/while/lstm_cell_83/BiasAdd_2:output:0-lstm_79/while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚А
lstm_79/while/lstm_cell_83/ReluRelu$lstm_79/while/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚▒
 lstm_79/while/lstm_cell_83/mul_9Mul&lstm_79/while/lstm_cell_83/Sigmoid:y:0-lstm_79/while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚и
 lstm_79/while/lstm_cell_83/add_3AddV2$lstm_79/while/lstm_cell_83/mul_8:z:0$lstm_79/while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚в
+lstm_79/while/lstm_cell_83/ReadVariableOp_3ReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0Б
0lstm_79/while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  Г
2lstm_79/while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Г
2lstm_79/while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ■
*lstm_79/while/lstm_cell_83/strided_slice_3StridedSlice3lstm_79/while/lstm_cell_83/ReadVariableOp_3:value:09lstm_79/while/lstm_cell_83/strided_slice_3/stack:output:0;lstm_79/while/lstm_cell_83/strided_slice_3/stack_1:output:0;lstm_79/while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╗
#lstm_79/while/lstm_cell_83/MatMul_7MatMul$lstm_79/while/lstm_cell_83/mul_7:z:03lstm_79/while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚║
 lstm_79/while/lstm_cell_83/add_4AddV2-lstm_79/while/lstm_cell_83/BiasAdd_3:output:0-lstm_79/while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚И
$lstm_79/while/lstm_cell_83/Sigmoid_2Sigmoid$lstm_79/while/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚В
!lstm_79/while/lstm_cell_83/Relu_1Relu$lstm_79/while/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚╢
!lstm_79/while/lstm_cell_83/mul_10Mul(lstm_79/while/lstm_cell_83/Sigmoid_2:y:0/lstm_79/while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚ц
2lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_79_while_placeholder_1lstm_79_while_placeholder%lstm_79/while/lstm_cell_83/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥U
lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_79/while/addAddV2lstm_79_while_placeholderlstm_79/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_79/while/add_1AddV2(lstm_79_while_lstm_79_while_loop_counterlstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_79/while/IdentityIdentitylstm_79/while/add_1:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: К
lstm_79/while/Identity_1Identity.lstm_79_while_lstm_79_while_maximum_iterations^lstm_79/while/NoOp*
T0*
_output_shapes
: q
lstm_79/while/Identity_2Identitylstm_79/while/add:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: ▒
lstm_79/while/Identity_3IdentityBlstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_79/while/NoOp*
T0*
_output_shapes
: :щш╥У
lstm_79/while/Identity_4Identity%lstm_79/while/lstm_cell_83/mul_10:z:0^lstm_79/while/NoOp*
T0*(
_output_shapes
:         ╚Т
lstm_79/while/Identity_5Identity$lstm_79/while/lstm_cell_83/add_3:z:0^lstm_79/while/NoOp*
T0*(
_output_shapes
:         ╚Ё
lstm_79/while/NoOpNoOp*^lstm_79/while/lstm_cell_83/ReadVariableOp,^lstm_79/while/lstm_cell_83/ReadVariableOp_1,^lstm_79/while/lstm_cell_83/ReadVariableOp_2,^lstm_79/while/lstm_cell_83/ReadVariableOp_30^lstm_79/while/lstm_cell_83/split/ReadVariableOp2^lstm_79/while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_79_while_identitylstm_79/while/Identity:output:0"=
lstm_79_while_identity_1!lstm_79/while/Identity_1:output:0"=
lstm_79_while_identity_2!lstm_79/while/Identity_2:output:0"=
lstm_79_while_identity_3!lstm_79/while/Identity_3:output:0"=
lstm_79_while_identity_4!lstm_79/while/Identity_4:output:0"=
lstm_79_while_identity_5!lstm_79/while/Identity_5:output:0"P
%lstm_79_while_lstm_79_strided_slice_1'lstm_79_while_lstm_79_strided_slice_1_0"j
2lstm_79_while_lstm_cell_83_readvariableop_resource4lstm_79_while_lstm_cell_83_readvariableop_resource_0"z
:lstm_79_while_lstm_cell_83_split_1_readvariableop_resource<lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0"v
8lstm_79_while_lstm_cell_83_split_readvariableop_resource:lstm_79_while_lstm_cell_83_split_readvariableop_resource_0"╚
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2V
)lstm_79/while/lstm_cell_83/ReadVariableOp)lstm_79/while/lstm_cell_83/ReadVariableOp2Z
+lstm_79/while/lstm_cell_83/ReadVariableOp_1+lstm_79/while/lstm_cell_83/ReadVariableOp_12Z
+lstm_79/while/lstm_cell_83/ReadVariableOp_2+lstm_79/while/lstm_cell_83/ReadVariableOp_22Z
+lstm_79/while/lstm_cell_83/ReadVariableOp_3+lstm_79/while/lstm_cell_83/ReadVariableOp_32b
/lstm_79/while/lstm_cell_83/split/ReadVariableOp/lstm_79/while/lstm_cell_83/split/ReadVariableOp2f
1lstm_79/while/lstm_cell_83/split_1/ReadVariableOp1lstm_79/while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
ЇЖ
╤
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103721

inputsF
2lstm_79_lstm_cell_83_split_readvariableop_resource:
№аC
4lstm_79_lstm_cell_83_split_1_readvariableop_resource:	а@
,lstm_79_lstm_cell_83_readvariableop_resource:
╚а:
'dense_79_matmul_readvariableop_resource:	╚6
(dense_79_biasadd_readvariableop_resource:
identity

identity_1Ивdense_79/BiasAdd/ReadVariableOpвdense_79/MatMul/ReadVariableOpв#lstm_79/lstm_cell_83/ReadVariableOpв%lstm_79/lstm_cell_83/ReadVariableOp_1в%lstm_79/lstm_cell_83/ReadVariableOp_2в%lstm_79/lstm_cell_83/ReadVariableOp_3вGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpв)lstm_79/lstm_cell_83/split/ReadVariableOpв+lstm_79/lstm_cell_83/split_1/ReadVariableOpвlstm_79/whileC
lstm_79/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
lstm_79/strided_sliceStridedSlicelstm_79/Shape:output:0$lstm_79/strided_slice/stack:output:0&lstm_79/strided_slice/stack_1:output:0&lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚Л
lstm_79/zeros/packedPacklstm_79/strided_slice:output:0lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
lstm_79/zerosFilllstm_79/zeros/packed:output:0lstm_79/zeros/Const:output:0*
T0*(
_output_shapes
:         ╚[
lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚П
lstm_79/zeros_1/packedPacklstm_79/strided_slice:output:0!lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
lstm_79/zeros_1Filllstm_79/zeros_1/packed:output:0lstm_79/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚k
lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
lstm_79/transpose	Transposeinputslstm_79/transpose/perm:output:0*
T0*,
_output_shapes
:         №T
lstm_79/Shape_1Shapelstm_79/transpose:y:0*
T0*
_output_shapes
:g
lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_79/strided_slice_1StridedSlicelstm_79/Shape_1:output:0&lstm_79/strided_slice_1/stack:output:0(lstm_79/strided_slice_1/stack_1:output:0(lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_79/TensorArrayV2TensorListReserve,lstm_79/TensorArrayV2/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   °
/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_79/transpose:y:0Flstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥g
lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
lstm_79/strided_slice_2StridedSlicelstm_79/transpose:y:0&lstm_79/strided_slice_2/stack:output:0(lstm_79/strided_slice_2/stack_1:output:0(lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         №*
shrink_axis_maskt
$lstm_79/lstm_cell_83/ones_like/ShapeShape lstm_79/strided_slice_2:output:0*
T0*
_output_shapes
:i
$lstm_79/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
lstm_79/lstm_cell_83/ones_likeFill-lstm_79/lstm_cell_83/ones_like/Shape:output:0-lstm_79/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №g
"lstm_79/lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?░
 lstm_79/lstm_cell_83/dropout/MulMul'lstm_79/lstm_cell_83/ones_like:output:0+lstm_79/lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №y
"lstm_79/lstm_cell_83/dropout/ShapeShape'lstm_79/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9lstm_79/lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform+lstm_79/lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+lstm_79/lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)lstm_79/lstm_cell_83/dropout/GreaterEqualGreaterEqualBlstm_79/lstm_cell_83/dropout/random_uniform/RandomUniform:output:04lstm_79/lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!lstm_79/lstm_cell_83/dropout/CastCast-lstm_79/lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"lstm_79/lstm_cell_83/dropout/Mul_1Mul$lstm_79/lstm_cell_83/dropout/Mul:z:0%lstm_79/lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №i
$lstm_79/lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?┤
"lstm_79/lstm_cell_83/dropout_1/MulMul'lstm_79/lstm_cell_83/ones_like:output:0-lstm_79/lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №{
$lstm_79/lstm_cell_83/dropout_1/ShapeShape'lstm_79/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╗
;lstm_79/lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_79/lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0r
-lstm_79/lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ь
+lstm_79/lstm_cell_83/dropout_1/GreaterEqualGreaterEqualDlstm_79/lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:06lstm_79/lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ю
#lstm_79/lstm_cell_83/dropout_1/CastCast/lstm_79/lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №п
$lstm_79/lstm_cell_83/dropout_1/Mul_1Mul&lstm_79/lstm_cell_83/dropout_1/Mul:z:0'lstm_79/lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №i
$lstm_79/lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?┤
"lstm_79/lstm_cell_83/dropout_2/MulMul'lstm_79/lstm_cell_83/ones_like:output:0-lstm_79/lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №{
$lstm_79/lstm_cell_83/dropout_2/ShapeShape'lstm_79/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╗
;lstm_79/lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_79/lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0r
-lstm_79/lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ь
+lstm_79/lstm_cell_83/dropout_2/GreaterEqualGreaterEqualDlstm_79/lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:06lstm_79/lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ю
#lstm_79/lstm_cell_83/dropout_2/CastCast/lstm_79/lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №п
$lstm_79/lstm_cell_83/dropout_2/Mul_1Mul&lstm_79/lstm_cell_83/dropout_2/Mul:z:0'lstm_79/lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №i
$lstm_79/lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?┤
"lstm_79/lstm_cell_83/dropout_3/MulMul'lstm_79/lstm_cell_83/ones_like:output:0-lstm_79/lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №{
$lstm_79/lstm_cell_83/dropout_3/ShapeShape'lstm_79/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╗
;lstm_79/lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_79/lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0r
-lstm_79/lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ь
+lstm_79/lstm_cell_83/dropout_3/GreaterEqualGreaterEqualDlstm_79/lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:06lstm_79/lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ю
#lstm_79/lstm_cell_83/dropout_3/CastCast/lstm_79/lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №п
$lstm_79/lstm_cell_83/dropout_3/Mul_1Mul&lstm_79/lstm_cell_83/dropout_3/Mul:z:0'lstm_79/lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №l
&lstm_79/lstm_cell_83/ones_like_1/ShapeShapelstm_79/zeros:output:0*
T0*
_output_shapes
:k
&lstm_79/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╜
 lstm_79/lstm_cell_83/ones_like_1Fill/lstm_79/lstm_cell_83/ones_like_1/Shape:output:0/lstm_79/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚i
$lstm_79/lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╢
"lstm_79/lstm_cell_83/dropout_4/MulMul)lstm_79/lstm_cell_83/ones_like_1:output:0-lstm_79/lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚}
$lstm_79/lstm_cell_83/dropout_4/ShapeShape)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╗
;lstm_79/lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform-lstm_79/lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0r
-lstm_79/lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ь
+lstm_79/lstm_cell_83/dropout_4/GreaterEqualGreaterEqualDlstm_79/lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:06lstm_79/lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ю
#lstm_79/lstm_cell_83/dropout_4/CastCast/lstm_79/lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚п
$lstm_79/lstm_cell_83/dropout_4/Mul_1Mul&lstm_79/lstm_cell_83/dropout_4/Mul:z:0'lstm_79/lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚i
$lstm_79/lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╢
"lstm_79/lstm_cell_83/dropout_5/MulMul)lstm_79/lstm_cell_83/ones_like_1:output:0-lstm_79/lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚}
$lstm_79/lstm_cell_83/dropout_5/ShapeShape)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╗
;lstm_79/lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform-lstm_79/lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0r
-lstm_79/lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ь
+lstm_79/lstm_cell_83/dropout_5/GreaterEqualGreaterEqualDlstm_79/lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:06lstm_79/lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ю
#lstm_79/lstm_cell_83/dropout_5/CastCast/lstm_79/lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚п
$lstm_79/lstm_cell_83/dropout_5/Mul_1Mul&lstm_79/lstm_cell_83/dropout_5/Mul:z:0'lstm_79/lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚i
$lstm_79/lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╢
"lstm_79/lstm_cell_83/dropout_6/MulMul)lstm_79/lstm_cell_83/ones_like_1:output:0-lstm_79/lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚}
$lstm_79/lstm_cell_83/dropout_6/ShapeShape)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╗
;lstm_79/lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform-lstm_79/lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0r
-lstm_79/lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ь
+lstm_79/lstm_cell_83/dropout_6/GreaterEqualGreaterEqualDlstm_79/lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:06lstm_79/lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ю
#lstm_79/lstm_cell_83/dropout_6/CastCast/lstm_79/lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚п
$lstm_79/lstm_cell_83/dropout_6/Mul_1Mul&lstm_79/lstm_cell_83/dropout_6/Mul:z:0'lstm_79/lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚i
$lstm_79/lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╢
"lstm_79/lstm_cell_83/dropout_7/MulMul)lstm_79/lstm_cell_83/ones_like_1:output:0-lstm_79/lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚}
$lstm_79/lstm_cell_83/dropout_7/ShapeShape)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╗
;lstm_79/lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform-lstm_79/lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0r
-lstm_79/lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ь
+lstm_79/lstm_cell_83/dropout_7/GreaterEqualGreaterEqualDlstm_79/lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:06lstm_79/lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ю
#lstm_79/lstm_cell_83/dropout_7/CastCast/lstm_79/lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚п
$lstm_79/lstm_cell_83/dropout_7/Mul_1Mul&lstm_79/lstm_cell_83/dropout_7/Mul:z:0'lstm_79/lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚Ь
lstm_79/lstm_cell_83/mulMul lstm_79/strided_slice_2:output:0&lstm_79/lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №а
lstm_79/lstm_cell_83/mul_1Mul lstm_79/strided_slice_2:output:0(lstm_79/lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №а
lstm_79/lstm_cell_83/mul_2Mul lstm_79/strided_slice_2:output:0(lstm_79/lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №а
lstm_79/lstm_cell_83/mul_3Mul lstm_79/strided_slice_2:output:0(lstm_79/lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №f
$lstm_79/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
)lstm_79/lstm_cell_83/split/ReadVariableOpReadVariableOp2lstm_79_lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0х
lstm_79/lstm_cell_83/splitSplit-lstm_79/lstm_cell_83/split/split_dim:output:01lstm_79/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitЫ
lstm_79/lstm_cell_83/MatMulMatMullstm_79/lstm_cell_83/mul:z:0#lstm_79/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/MatMul_1MatMullstm_79/lstm_cell_83/mul_1:z:0#lstm_79/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/MatMul_2MatMullstm_79/lstm_cell_83/mul_2:z:0#lstm_79/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/MatMul_3MatMullstm_79/lstm_cell_83/mul_3:z:0#lstm_79/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚h
&lstm_79/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
+lstm_79/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4lstm_79_lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╫
lstm_79/lstm_cell_83/split_1Split/lstm_79/lstm_cell_83/split_1/split_dim:output:03lstm_79/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitи
lstm_79/lstm_cell_83/BiasAddBiasAdd%lstm_79/lstm_cell_83/MatMul:product:0%lstm_79/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚м
lstm_79/lstm_cell_83/BiasAdd_1BiasAdd'lstm_79/lstm_cell_83/MatMul_1:product:0%lstm_79/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚м
lstm_79/lstm_cell_83/BiasAdd_2BiasAdd'lstm_79/lstm_cell_83/MatMul_2:product:0%lstm_79/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚м
lstm_79/lstm_cell_83/BiasAdd_3BiasAdd'lstm_79/lstm_cell_83/MatMul_3:product:0%lstm_79/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚Ц
lstm_79/lstm_cell_83/mul_4Mullstm_79/zeros:output:0(lstm_79/lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚Ц
lstm_79/lstm_cell_83/mul_5Mullstm_79/zeros:output:0(lstm_79/lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚Ц
lstm_79/lstm_cell_83/mul_6Mullstm_79/zeros:output:0(lstm_79/lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚Ц
lstm_79/lstm_cell_83/mul_7Mullstm_79/zeros:output:0(lstm_79/lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚Т
#lstm_79/lstm_cell_83/ReadVariableOpReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0y
(lstm_79/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_79/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*lstm_79/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"lstm_79/lstm_cell_83/strided_sliceStridedSlice+lstm_79/lstm_cell_83/ReadVariableOp:value:01lstm_79/lstm_cell_83/strided_slice/stack:output:03lstm_79/lstm_cell_83/strided_slice/stack_1:output:03lstm_79/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskз
lstm_79/lstm_cell_83/MatMul_4MatMullstm_79/lstm_cell_83/mul_4:z:0+lstm_79/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚д
lstm_79/lstm_cell_83/addAddV2%lstm_79/lstm_cell_83/BiasAdd:output:0'lstm_79/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚x
lstm_79/lstm_cell_83/SigmoidSigmoidlstm_79/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Ф
%lstm_79/lstm_cell_83/ReadVariableOp_1ReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0{
*lstm_79/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   }
,lstm_79/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  }
,lstm_79/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      р
$lstm_79/lstm_cell_83/strided_slice_1StridedSlice-lstm_79/lstm_cell_83/ReadVariableOp_1:value:03lstm_79/lstm_cell_83/strided_slice_1/stack:output:05lstm_79/lstm_cell_83/strided_slice_1/stack_1:output:05lstm_79/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskй
lstm_79/lstm_cell_83/MatMul_5MatMullstm_79/lstm_cell_83/mul_5:z:0-lstm_79/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚и
lstm_79/lstm_cell_83/add_1AddV2'lstm_79/lstm_cell_83/BiasAdd_1:output:0'lstm_79/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚|
lstm_79/lstm_cell_83/Sigmoid_1Sigmoidlstm_79/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Т
lstm_79/lstm_cell_83/mul_8Mul"lstm_79/lstm_cell_83/Sigmoid_1:y:0lstm_79/zeros_1:output:0*
T0*(
_output_shapes
:         ╚Ф
%lstm_79/lstm_cell_83/ReadVariableOp_2ReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0{
*lstm_79/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  }
,lstm_79/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  }
,lstm_79/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      р
$lstm_79/lstm_cell_83/strided_slice_2StridedSlice-lstm_79/lstm_cell_83/ReadVariableOp_2:value:03lstm_79/lstm_cell_83/strided_slice_2/stack:output:05lstm_79/lstm_cell_83/strided_slice_2/stack_1:output:05lstm_79/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskй
lstm_79/lstm_cell_83/MatMul_6MatMullstm_79/lstm_cell_83/mul_6:z:0-lstm_79/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚и
lstm_79/lstm_cell_83/add_2AddV2'lstm_79/lstm_cell_83/BiasAdd_2:output:0'lstm_79/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚t
lstm_79/lstm_cell_83/ReluRelulstm_79/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/mul_9Mul lstm_79/lstm_cell_83/Sigmoid:y:0'lstm_79/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Ц
lstm_79/lstm_cell_83/add_3AddV2lstm_79/lstm_cell_83/mul_8:z:0lstm_79/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Ф
%lstm_79/lstm_cell_83/ReadVariableOp_3ReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0{
*lstm_79/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  }
,lstm_79/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm_79/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      р
$lstm_79/lstm_cell_83/strided_slice_3StridedSlice-lstm_79/lstm_cell_83/ReadVariableOp_3:value:03lstm_79/lstm_cell_83/strided_slice_3/stack:output:05lstm_79/lstm_cell_83/strided_slice_3/stack_1:output:05lstm_79/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskй
lstm_79/lstm_cell_83/MatMul_7MatMullstm_79/lstm_cell_83/mul_7:z:0-lstm_79/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚и
lstm_79/lstm_cell_83/add_4AddV2'lstm_79/lstm_cell_83/BiasAdd_3:output:0'lstm_79/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚|
lstm_79/lstm_cell_83/Sigmoid_2Sigmoidlstm_79/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚v
lstm_79/lstm_cell_83/Relu_1Relulstm_79/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚д
lstm_79/lstm_cell_83/mul_10Mul"lstm_79/lstm_cell_83/Sigmoid_2:y:0)lstm_79/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚v
%lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╨
lstm_79/TensorArrayV2_1TensorListReserve.lstm_79/TensorArrayV2_1/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥N
lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
lstm_79/whileWhile#lstm_79/while/loop_counter:output:0)lstm_79/while/maximum_iterations:output:0lstm_79/time:output:0 lstm_79/TensorArrayV2_1:handle:0lstm_79/zeros:output:0lstm_79/zeros_1:output:0 lstm_79/strided_slice_1:output:0?lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_79_lstm_cell_83_split_readvariableop_resource4lstm_79_lstm_cell_83_split_1_readvariableop_resource,lstm_79_lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_79_while_body_3103498*&
condR
lstm_79_while_cond_3103497*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Й
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   █
*lstm_79/TensorArrayV2Stack/TensorListStackTensorListStacklstm_79/while:output:3Alstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0p
lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
lstm_79/strided_slice_3StridedSlice3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_79/strided_slice_3/stack:output:0(lstm_79/strided_slice_3/stack_1:output:0(lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskm
lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
lstm_79/transpose_1	Transpose3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_79/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚c
lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Б
"lstm_79/ActivityRegularizer/SquareSquare lstm_79/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚r
!lstm_79/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
lstm_79/ActivityRegularizer/SumSum&lstm_79/ActivityRegularizer/Square:y:0*lstm_79/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!lstm_79/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Э
lstm_79/ActivityRegularizer/mulMul*lstm_79/ActivityRegularizer/mul/x:output:0(lstm_79/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: q
!lstm_79/ActivityRegularizer/ShapeShape lstm_79/strided_slice_3:output:0*
T0*
_output_shapes
:y
/lstm_79/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_79/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_79/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)lstm_79/ActivityRegularizer/strided_sliceStridedSlice*lstm_79/ActivityRegularizer/Shape:output:08lstm_79/ActivityRegularizer/strided_slice/stack:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 lstm_79/ActivityRegularizer/CastCast2lstm_79/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ъ
#lstm_79/ActivityRegularizer/truedivRealDiv#lstm_79/ActivityRegularizer/mul:z:0$lstm_79/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: З
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0Х
dense_79/MatMulMatMul lstm_79/strided_slice_3:output:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╢
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_79/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         g

Identity_1Identity'lstm_79/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: █
NoOpNoOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp$^lstm_79/lstm_cell_83/ReadVariableOp&^lstm_79/lstm_cell_83/ReadVariableOp_1&^lstm_79/lstm_cell_83/ReadVariableOp_2&^lstm_79/lstm_cell_83/ReadVariableOp_3H^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp*^lstm_79/lstm_cell_83/split/ReadVariableOp,^lstm_79/lstm_cell_83/split_1/ReadVariableOp^lstm_79/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2J
#lstm_79/lstm_cell_83/ReadVariableOp#lstm_79/lstm_cell_83/ReadVariableOp2N
%lstm_79/lstm_cell_83/ReadVariableOp_1%lstm_79/lstm_cell_83/ReadVariableOp_12N
%lstm_79/lstm_cell_83/ReadVariableOp_2%lstm_79/lstm_cell_83/ReadVariableOp_22N
%lstm_79/lstm_cell_83/ReadVariableOp_3%lstm_79/lstm_cell_83/ReadVariableOp_32Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2V
)lstm_79/lstm_cell_83/split/ReadVariableOp)lstm_79/lstm_cell_83/split/ReadVariableOp2Z
+lstm_79/lstm_cell_83/split_1/ReadVariableOp+lstm_79/lstm_cell_83/split_1/ReadVariableOp2
lstm_79/whilelstm_79/while:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
л%
╖
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102921

inputs#
lstm_79_3102893:
№а
lstm_79_3102895:	а#
lstm_79_3102897:
╚а#
dense_79_3102908:	╚
dense_79_3102910:
identity

identity_1Ив dense_79/StatefulPartitionedCallвlstm_79/StatefulPartitionedCallвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpГ
lstm_79/StatefulPartitionedCallStatefulPartitionedCallinputslstm_79_3102893lstm_79_3102895lstm_79_3102897*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102839╚
+lstm_79/ActivityRegularizer/PartitionedCallPartitionedCall(lstm_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563y
!lstm_79/ActivityRegularizer/ShapeShape(lstm_79/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/lstm_79/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_79/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_79/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)lstm_79/ActivityRegularizer/strided_sliceStridedSlice*lstm_79/ActivityRegularizer/Shape:output:08lstm_79/ActivityRegularizer/strided_slice/stack:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 lstm_79/ActivityRegularizer/CastCast2lstm_79/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: л
#lstm_79/ActivityRegularizer/truedivRealDiv4lstm_79/ActivityRegularizer/PartitionedCall:output:0$lstm_79/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Х
 dense_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0dense_79_3102908dense_79_3102910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_3102409Щ
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_79_3102897* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         g

Identity_1Identity'lstm_79/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ╒
NoOpNoOp!^dense_79/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCallH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
╬┼
й	
while_body_3105198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_83_split_readvariableop_resource_0:
№аC
4while_lstm_cell_83_split_1_readvariableop_resource_0:	а@
,while_lstm_cell_83_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_83_split_readvariableop_resource:
№аA
2while_lstm_cell_83_split_1_readvariableop_resource:	а>
*while_lstm_cell_83_readvariableop_resource:
╚аИв!while/lstm_cell_83/ReadVariableOpв#while/lstm_cell_83/ReadVariableOp_1в#while/lstm_cell_83/ReadVariableOp_2в#while/lstm_cell_83/ReadVariableOp_3в'while/lstm_cell_83/split/ReadVariableOpв)while/lstm_cell_83/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0В
"while/lstm_cell_83/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:g
"while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
while/lstm_cell_83/ones_likeFill+while/lstm_cell_83/ones_like/Shape:output:0+while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №e
 while/lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?к
while/lstm_cell_83/dropout/MulMul%while/lstm_cell_83/ones_like:output:0)while/lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №u
 while/lstm_cell_83/dropout/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:│
7while/lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0n
)while/lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>р
'while/lstm_cell_83/dropout/GreaterEqualGreaterEqual@while/lstm_cell_83/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ц
while/lstm_cell_83/dropout/CastCast+while/lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №г
 while/lstm_cell_83/dropout/Mul_1Mul"while/lstm_cell_83/dropout/Mul:z:0#while/lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_1/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_1/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_1/CastCast-while/lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_1/Mul_1Mul$while/lstm_cell_83/dropout_1/Mul:z:0%while/lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_2/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_2/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_2/CastCast-while/lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_2/Mul_1Mul$while/lstm_cell_83/dropout_2/Mul:z:0%while/lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_3/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_3/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_3/CastCast-while/lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_3/Mul_1Mul$while/lstm_cell_83/dropout_3/Mul:z:0%while/lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №g
$while/lstm_cell_83/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:i
$while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
while/lstm_cell_83/ones_like_1Fill-while/lstm_cell_83/ones_like_1/Shape:output:0-while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_4/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_4/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_4/CastCast-while/lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_4/Mul_1Mul$while/lstm_cell_83/dropout_4/Mul:z:0%while/lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_5/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_5/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_5/CastCast-while/lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_5/Mul_1Mul$while/lstm_cell_83/dropout_5/Mul:z:0%while/lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_6/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_6/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_6/CastCast-while/lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_6/Mul_1Mul$while/lstm_cell_83/dropout_6/Mul:z:0%while/lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_7/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_7/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_7/CastCast-while/lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_7/Mul_1Mul$while/lstm_cell_83/dropout_7/Mul:z:0%while/lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚и
while/lstm_cell_83/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'while/lstm_cell_83/split/ReadVariableOpReadVariableOp2while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0▀
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitХ
while/lstm_cell_83/MatMulMatMulwhile/lstm_cell_83/mul:z:0!while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_1MatMulwhile/lstm_cell_83/mul_1:z:0!while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_2MatMulwhile/lstm_cell_83/mul_2:z:0!while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_3MatMulwhile/lstm_cell_83/mul_3:z:0!while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚f
$while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ы
)while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╤
while/lstm_cell_83/split_1Split-while/lstm_cell_83/split_1/split_dim:output:01while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitв
while/lstm_cell_83/BiasAddBiasAdd#while/lstm_cell_83/MatMul:product:0#while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_1BiasAdd%while/lstm_cell_83/MatMul_1:product:0#while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_2BiasAdd%while/lstm_cell_83/MatMul_2:product:0#while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_3BiasAdd%while/lstm_cell_83/MatMul_3:product:0#while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_4Mulwhile_placeholder_2&while/lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_5Mulwhile_placeholder_2&while/lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_6Mulwhile_placeholder_2&while/lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_7Mulwhile_placeholder_2&while/lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚Р
!while/lstm_cell_83/ReadVariableOpReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0w
&while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   y
(while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╠
 while/lstm_cell_83/strided_sliceStridedSlice)while/lstm_cell_83/ReadVariableOp:value:0/while/lstm_cell_83/strided_slice/stack:output:01while/lstm_cell_83/strided_slice/stack_1:output:01while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskб
while/lstm_cell_83/MatMul_4MatMulwhile/lstm_cell_83/mul_4:z:0)while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/addAddV2#while/lstm_cell_83/BiasAdd:output:0%while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚t
while/lstm_cell_83/SigmoidSigmoidwhile/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_1ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_1StridedSlice+while/lstm_cell_83/ReadVariableOp_1:value:01while/lstm_cell_83/strided_slice_1/stack:output:03while/lstm_cell_83/strided_slice_1/stack_1:output:03while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_5MatMulwhile/lstm_cell_83/mul_5:z:0+while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_1AddV2%while/lstm_cell_83/BiasAdd_1:output:0%while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_1Sigmoidwhile/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Й
while/lstm_cell_83/mul_8Mul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_2ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_2StridedSlice+while/lstm_cell_83/ReadVariableOp_2:value:01while/lstm_cell_83/strided_slice_2/stack:output:03while/lstm_cell_83/strided_slice_2/stack_1:output:03while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_6MatMulwhile/lstm_cell_83/mul_6:z:0+while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_2AddV2%while/lstm_cell_83/BiasAdd_2:output:0%while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚p
while/lstm_cell_83/ReluReluwhile/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/mul_9Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/add_3AddV2while/lstm_cell_83/mul_8:z:0while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_3ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_3StridedSlice+while/lstm_cell_83/ReadVariableOp_3:value:01while/lstm_cell_83/strided_slice_3/stack:output:03while/lstm_cell_83/strided_slice_3/stack_1:output:03while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_7MatMulwhile/lstm_cell_83/mul_7:z:0+while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_4AddV2%while/lstm_cell_83/BiasAdd_3:output:0%while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_2Sigmoidwhile/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/mul_10Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚╞
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_10:z:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥{
while/Identity_4Identitywhile/lstm_cell_83/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚z
while/Identity_5Identitywhile/lstm_cell_83/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚╕

while/NoOpNoOp"^while/lstm_cell_83/ReadVariableOp$^while/lstm_cell_83/ReadVariableOp_1$^while/lstm_cell_83/ReadVariableOp_2$^while/lstm_cell_83/ReadVariableOp_3(^while/lstm_cell_83/split/ReadVariableOp*^while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_83_readvariableop_resource,while_lstm_cell_83_readvariableop_resource_0"j
2while_lstm_cell_83_split_1_readvariableop_resource4while_lstm_cell_83_split_1_readvariableop_resource_0"f
0while_lstm_cell_83_split_readvariableop_resource2while_lstm_cell_83_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2F
!while/lstm_cell_83/ReadVariableOp!while/lstm_cell_83/ReadVariableOp2J
#while/lstm_cell_83/ReadVariableOp_1#while/lstm_cell_83/ReadVariableOp_12J
#while/lstm_cell_83/ReadVariableOp_2#while/lstm_cell_83/ReadVariableOp_22J
#while/lstm_cell_83/ReadVariableOp_3#while/lstm_cell_83/ReadVariableOp_32R
'while/lstm_cell_83/split/ReadVariableOp'while/lstm_cell_83/split/ReadVariableOp2V
)while/lstm_cell_83/split_1/ReadVariableOp)while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
╬┼
й	
while_body_3104572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_83_split_readvariableop_resource_0:
№аC
4while_lstm_cell_83_split_1_readvariableop_resource_0:	а@
,while_lstm_cell_83_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_83_split_readvariableop_resource:
№аA
2while_lstm_cell_83_split_1_readvariableop_resource:	а>
*while_lstm_cell_83_readvariableop_resource:
╚аИв!while/lstm_cell_83/ReadVariableOpв#while/lstm_cell_83/ReadVariableOp_1в#while/lstm_cell_83/ReadVariableOp_2в#while/lstm_cell_83/ReadVariableOp_3в'while/lstm_cell_83/split/ReadVariableOpв)while/lstm_cell_83/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0В
"while/lstm_cell_83/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:g
"while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
while/lstm_cell_83/ones_likeFill+while/lstm_cell_83/ones_like/Shape:output:0+while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №e
 while/lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?к
while/lstm_cell_83/dropout/MulMul%while/lstm_cell_83/ones_like:output:0)while/lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №u
 while/lstm_cell_83/dropout/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:│
7while/lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0n
)while/lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>р
'while/lstm_cell_83/dropout/GreaterEqualGreaterEqual@while/lstm_cell_83/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ц
while/lstm_cell_83/dropout/CastCast+while/lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №г
 while/lstm_cell_83/dropout/Mul_1Mul"while/lstm_cell_83/dropout/Mul:z:0#while/lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_1/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_1/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_1/CastCast-while/lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_1/Mul_1Mul$while/lstm_cell_83/dropout_1/Mul:z:0%while/lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_2/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_2/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_2/CastCast-while/lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_2/Mul_1Mul$while/lstm_cell_83/dropout_2/Mul:z:0%while/lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №g
"while/lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?о
 while/lstm_cell_83/dropout_3/MulMul%while/lstm_cell_83/ones_like:output:0+while/lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №w
"while/lstm_cell_83/dropout_3/ShapeShape%while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0p
+while/lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>ц
)while/lstm_cell_83/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №Ъ
!while/lstm_cell_83/dropout_3/CastCast-while/lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №й
"while/lstm_cell_83/dropout_3/Mul_1Mul$while/lstm_cell_83/dropout_3/Mul:z:0%while/lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №g
$while/lstm_cell_83/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:i
$while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
while/lstm_cell_83/ones_like_1Fill-while/lstm_cell_83/ones_like_1/Shape:output:0-while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_4/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_4/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_4/CastCast-while/lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_4/Mul_1Mul$while/lstm_cell_83/dropout_4/Mul:z:0%while/lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_5/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_5/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_5/CastCast-while/lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_5/Mul_1Mul$while/lstm_cell_83/dropout_5/Mul:z:0%while/lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_6/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_6/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_6/CastCast-while/lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_6/Mul_1Mul$while/lstm_cell_83/dropout_6/Mul:z:0%while/lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚g
"while/lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?░
 while/lstm_cell_83/dropout_7/MulMul'while/lstm_cell_83/ones_like_1:output:0+while/lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚y
"while/lstm_cell_83/dropout_7/ShapeShape'while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╖
9while/lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0p
+while/lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ц
)while/lstm_cell_83/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚Ъ
!while/lstm_cell_83/dropout_7/CastCast-while/lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚й
"while/lstm_cell_83/dropout_7/Mul_1Mul$while/lstm_cell_83/dropout_7/Mul:z:0%while/lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚и
while/lstm_cell_83/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №м
while/lstm_cell_83/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'while/lstm_cell_83/split/ReadVariableOpReadVariableOp2while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0▀
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitХ
while/lstm_cell_83/MatMulMatMulwhile/lstm_cell_83/mul:z:0!while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_1MatMulwhile/lstm_cell_83/mul_1:z:0!while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_2MatMulwhile/lstm_cell_83/mul_2:z:0!while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_3MatMulwhile/lstm_cell_83/mul_3:z:0!while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚f
$while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ы
)while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╤
while/lstm_cell_83/split_1Split-while/lstm_cell_83/split_1/split_dim:output:01while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitв
while/lstm_cell_83/BiasAddBiasAdd#while/lstm_cell_83/MatMul:product:0#while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_1BiasAdd%while/lstm_cell_83/MatMul_1:product:0#while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_2BiasAdd%while/lstm_cell_83/MatMul_2:product:0#while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_3BiasAdd%while/lstm_cell_83/MatMul_3:product:0#while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_4Mulwhile_placeholder_2&while/lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_5Mulwhile_placeholder_2&while/lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_6Mulwhile_placeholder_2&while/lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚П
while/lstm_cell_83/mul_7Mulwhile_placeholder_2&while/lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚Р
!while/lstm_cell_83/ReadVariableOpReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0w
&while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   y
(while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╠
 while/lstm_cell_83/strided_sliceStridedSlice)while/lstm_cell_83/ReadVariableOp:value:0/while/lstm_cell_83/strided_slice/stack:output:01while/lstm_cell_83/strided_slice/stack_1:output:01while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskб
while/lstm_cell_83/MatMul_4MatMulwhile/lstm_cell_83/mul_4:z:0)while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/addAddV2#while/lstm_cell_83/BiasAdd:output:0%while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚t
while/lstm_cell_83/SigmoidSigmoidwhile/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_1ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_1StridedSlice+while/lstm_cell_83/ReadVariableOp_1:value:01while/lstm_cell_83/strided_slice_1/stack:output:03while/lstm_cell_83/strided_slice_1/stack_1:output:03while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_5MatMulwhile/lstm_cell_83/mul_5:z:0+while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_1AddV2%while/lstm_cell_83/BiasAdd_1:output:0%while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_1Sigmoidwhile/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Й
while/lstm_cell_83/mul_8Mul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_2ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_2StridedSlice+while/lstm_cell_83/ReadVariableOp_2:value:01while/lstm_cell_83/strided_slice_2/stack:output:03while/lstm_cell_83/strided_slice_2/stack_1:output:03while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_6MatMulwhile/lstm_cell_83/mul_6:z:0+while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_2AddV2%while/lstm_cell_83/BiasAdd_2:output:0%while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚p
while/lstm_cell_83/ReluReluwhile/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/mul_9Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/add_3AddV2while/lstm_cell_83/mul_8:z:0while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_3ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_3StridedSlice+while/lstm_cell_83/ReadVariableOp_3:value:01while/lstm_cell_83/strided_slice_3/stack:output:03while/lstm_cell_83/strided_slice_3/stack_1:output:03while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_7MatMulwhile/lstm_cell_83/mul_7:z:0+while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_4AddV2%while/lstm_cell_83/BiasAdd_3:output:0%while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_2Sigmoidwhile/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/mul_10Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚╞
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_10:z:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥{
while/Identity_4Identitywhile/lstm_cell_83/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚z
while/Identity_5Identitywhile/lstm_cell_83/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚╕

while/NoOpNoOp"^while/lstm_cell_83/ReadVariableOp$^while/lstm_cell_83/ReadVariableOp_1$^while/lstm_cell_83/ReadVariableOp_2$^while/lstm_cell_83/ReadVariableOp_3(^while/lstm_cell_83/split/ReadVariableOp*^while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_83_readvariableop_resource,while_lstm_cell_83_readvariableop_resource_0"j
2while_lstm_cell_83_split_1_readvariableop_resource4while_lstm_cell_83_split_1_readvariableop_resource_0"f
0while_lstm_cell_83_split_readvariableop_resource2while_lstm_cell_83_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2F
!while/lstm_cell_83/ReadVariableOp!while/lstm_cell_83/ReadVariableOp2J
#while/lstm_cell_83/ReadVariableOp_1#while/lstm_cell_83/ReadVariableOp_12J
#while/lstm_cell_83/ReadVariableOp_2#while/lstm_cell_83/ReadVariableOp_22J
#while/lstm_cell_83/ReadVariableOp_3#while/lstm_cell_83/ReadVariableOp_32R
'while/lstm_cell_83/split/ReadVariableOp'while/lstm_cell_83/split/ReadVariableOp2V
)while/lstm_cell_83/split_1/ReadVariableOp)while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
л%
╖
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102423

inputs#
lstm_79_3102384:
№а
lstm_79_3102386:	а#
lstm_79_3102388:
╚а#
dense_79_3102410:	╚
dense_79_3102412:
identity

identity_1Ив dense_79/StatefulPartitionedCallвlstm_79/StatefulPartitionedCallвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpГ
lstm_79/StatefulPartitionedCallStatefulPartitionedCallinputslstm_79_3102384lstm_79_3102386lstm_79_3102388*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102383╚
+lstm_79/ActivityRegularizer/PartitionedCallPartitionedCall(lstm_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563y
!lstm_79/ActivityRegularizer/ShapeShape(lstm_79/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/lstm_79/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_79/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_79/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)lstm_79/ActivityRegularizer/strided_sliceStridedSlice*lstm_79/ActivityRegularizer/Shape:output:08lstm_79/ActivityRegularizer/strided_slice/stack:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 lstm_79/ActivityRegularizer/CastCast2lstm_79/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: л
#lstm_79/ActivityRegularizer/truedivRealDiv4lstm_79/ActivityRegularizer/PartitionedCall:output:0$lstm_79/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Х
 dense_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0dense_79_3102410dense_79_3102412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_3102409Щ
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_79_3102388* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         g

Identity_1Identity'lstm_79/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ╒
NoOpNoOp!^dense_79/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCallH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
ЭН
┤
D__inference_lstm_79_layer_call_and_return_conditional_losses_3105025

inputs>
*lstm_cell_83_split_readvariableop_resource:
№а;
,lstm_cell_83_split_1_readvariableop_resource:	а8
$lstm_cell_83_readvariableop_resource:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвlstm_cell_83/ReadVariableOpвlstm_cell_83/ReadVariableOp_1вlstm_cell_83/ReadVariableOp_2вlstm_cell_83/ReadVariableOp_3в!lstm_cell_83/split/ReadVariableOpв#lstm_cell_83/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
:         №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_maskd
lstm_cell_83/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:a
lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
lstm_cell_83/ones_likeFill%lstm_cell_83/ones_like/Shape:output:0%lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №\
lstm_cell_83/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:c
lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
lstm_cell_83/ones_like_1Fill'lstm_cell_83/ones_like_1/Shape:output:0'lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚Е
lstm_cell_83/mulMulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_1Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_2Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_3Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :О
!lstm_cell_83/split/ReadVariableOpReadVariableOp*lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0═
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0)lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitГ
lstm_cell_83/MatMulMatMullstm_cell_83/mul:z:0lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_1MatMullstm_cell_83/mul_1:z:0lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_2MatMullstm_cell_83/mul_2:z:0lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_3MatMullstm_cell_83/mul_3:z:0lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚`
lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Н
#lstm_cell_83/split_1/ReadVariableOpReadVariableOp,lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0┐
lstm_cell_83/split_1Split'lstm_cell_83/split_1/split_dim:output:0+lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitР
lstm_cell_83/BiasAddBiasAddlstm_cell_83/MatMul:product:0lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_1BiasAddlstm_cell_83/MatMul_1:product:0lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_2BiasAddlstm_cell_83/MatMul_2:product:0lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_3BiasAddlstm_cell_83/MatMul_3:product:0lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_4Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_5Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_6Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_7Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚В
lstm_cell_83/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0q
 lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   s
"lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
lstm_cell_83/strided_sliceStridedSlice#lstm_cell_83/ReadVariableOp:value:0)lstm_cell_83/strided_slice/stack:output:0+lstm_cell_83/strided_slice/stack_1:output:0+lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskП
lstm_cell_83/MatMul_4MatMullstm_cell_83/mul_4:z:0#lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/addAddV2lstm_cell_83/BiasAdd:output:0lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚h
lstm_cell_83/SigmoidSigmoidlstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_1ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   u
$lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_1StridedSlice%lstm_cell_83/ReadVariableOp_1:value:0+lstm_cell_83/strided_slice_1/stack:output:0-lstm_cell_83/strided_slice_1/stack_1:output:0-lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_5MatMullstm_cell_83/mul_5:z:0%lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_1AddV2lstm_cell_83/BiasAdd_1:output:0lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚z
lstm_cell_83/mul_8Mullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_2ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_2StridedSlice%lstm_cell_83/ReadVariableOp_2:value:0+lstm_cell_83/strided_slice_2/stack:output:0-lstm_cell_83/strided_slice_2/stack_1:output:0-lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_6MatMullstm_cell_83/mul_6:z:0%lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_2AddV2lstm_cell_83/BiasAdd_2:output:0lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚d
lstm_cell_83/ReluRelulstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/mul_9Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/add_3AddV2lstm_cell_83/mul_8:z:0lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_3ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_3StridedSlice%lstm_cell_83/ReadVariableOp_3:value:0+lstm_cell_83/strided_slice_3/stack:output:0-lstm_cell_83/strided_slice_3/stack_1:output:0-lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_7MatMullstm_cell_83/mul_7:z:0%lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_4AddV2lstm_cell_83/BiasAdd_3:output:0lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚f
lstm_cell_83/Relu_1Relulstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/mul_10Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : ■
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_83_split_readvariableop_resource,lstm_cell_83_split_1_readvariableop_resource$lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3104885*
condR
while_cond_3104884*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0h
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
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    о
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚р
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^lstm_cell_83/ReadVariableOp^lstm_cell_83/ReadVariableOp_1^lstm_cell_83/ReadVariableOp_2^lstm_cell_83/ReadVariableOp_3"^lstm_cell_83/split/ReadVariableOp$^lstm_cell_83/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_83/ReadVariableOplstm_cell_83/ReadVariableOp2>
lstm_cell_83/ReadVariableOp_1lstm_cell_83/ReadVariableOp_12>
lstm_cell_83/ReadVariableOp_2lstm_cell_83/ReadVariableOp_22>
lstm_cell_83/ReadVariableOp_3lstm_cell_83/ReadVariableOp_32F
!lstm_cell_83/split/ReadVariableOp!lstm_cell_83/split/ReadVariableOp2J
#lstm_cell_83/split_1/ReadVariableOp#lstm_cell_83/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
Ш#
ю
while_body_3102019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_83_3102043_0:
№а+
while_lstm_cell_83_3102045_0:	а0
while_lstm_cell_83_3102047_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_83_3102043:
№а)
while_lstm_cell_83_3102045:	а.
while_lstm_cell_83_3102047:
╚аИв*while/lstm_cell_83/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0║
*while/lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_83_3102043_0while_lstm_cell_83_3102045_0while_lstm_cell_83_3102047_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101960▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_83/StatefulPartitionedCall:output:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥С
while/Identity_4Identity3while/lstm_cell_83/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ╚С
while/Identity_5Identity3while/lstm_cell_83/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         ╚y

while/NoOpNoOp+^while/lstm_cell_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_83_3102043while_lstm_cell_83_3102043_0":
while_lstm_cell_83_3102045while_lstm_cell_83_3102045_0":
while_lstm_cell_83_3102047while_lstm_cell_83_3102047_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2X
*while/lstm_cell_83/StatefulPartitionedCall*while/lstm_cell_83/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
╓v
й	
while_body_3104259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_83_split_readvariableop_resource_0:
№аC
4while_lstm_cell_83_split_1_readvariableop_resource_0:	а@
,while_lstm_cell_83_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_83_split_readvariableop_resource:
№аA
2while_lstm_cell_83_split_1_readvariableop_resource:	а>
*while_lstm_cell_83_readvariableop_resource:
╚аИв!while/lstm_cell_83/ReadVariableOpв#while/lstm_cell_83/ReadVariableOp_1в#while/lstm_cell_83/ReadVariableOp_2в#while/lstm_cell_83/ReadVariableOp_3в'while/lstm_cell_83/split/ReadVariableOpв)while/lstm_cell_83/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0В
"while/lstm_cell_83/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:g
"while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
while/lstm_cell_83/ones_likeFill+while/lstm_cell_83/ones_like/Shape:output:0+while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №g
$while/lstm_cell_83/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:i
$while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
while/lstm_cell_83/ones_like_1Fill-while/lstm_cell_83/ones_like_1/Shape:output:0-while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚й
while/lstm_cell_83/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'while/lstm_cell_83/split/ReadVariableOpReadVariableOp2while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0▀
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitХ
while/lstm_cell_83/MatMulMatMulwhile/lstm_cell_83/mul:z:0!while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_1MatMulwhile/lstm_cell_83/mul_1:z:0!while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_2MatMulwhile/lstm_cell_83/mul_2:z:0!while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_3MatMulwhile/lstm_cell_83/mul_3:z:0!while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚f
$while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ы
)while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╤
while/lstm_cell_83/split_1Split-while/lstm_cell_83/split_1/split_dim:output:01while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitв
while/lstm_cell_83/BiasAddBiasAdd#while/lstm_cell_83/MatMul:product:0#while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_1BiasAdd%while/lstm_cell_83/MatMul_1:product:0#while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_2BiasAdd%while/lstm_cell_83/MatMul_2:product:0#while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_3BiasAdd%while/lstm_cell_83/MatMul_3:product:0#while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_4Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_5Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_6Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_7Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
!while/lstm_cell_83/ReadVariableOpReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0w
&while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   y
(while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╠
 while/lstm_cell_83/strided_sliceStridedSlice)while/lstm_cell_83/ReadVariableOp:value:0/while/lstm_cell_83/strided_slice/stack:output:01while/lstm_cell_83/strided_slice/stack_1:output:01while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskб
while/lstm_cell_83/MatMul_4MatMulwhile/lstm_cell_83/mul_4:z:0)while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/addAddV2#while/lstm_cell_83/BiasAdd:output:0%while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚t
while/lstm_cell_83/SigmoidSigmoidwhile/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_1ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_1StridedSlice+while/lstm_cell_83/ReadVariableOp_1:value:01while/lstm_cell_83/strided_slice_1/stack:output:03while/lstm_cell_83/strided_slice_1/stack_1:output:03while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_5MatMulwhile/lstm_cell_83/mul_5:z:0+while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_1AddV2%while/lstm_cell_83/BiasAdd_1:output:0%while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_1Sigmoidwhile/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Й
while/lstm_cell_83/mul_8Mul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_2ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_2StridedSlice+while/lstm_cell_83/ReadVariableOp_2:value:01while/lstm_cell_83/strided_slice_2/stack:output:03while/lstm_cell_83/strided_slice_2/stack_1:output:03while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_6MatMulwhile/lstm_cell_83/mul_6:z:0+while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_2AddV2%while/lstm_cell_83/BiasAdd_2:output:0%while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚p
while/lstm_cell_83/ReluReluwhile/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/mul_9Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/add_3AddV2while/lstm_cell_83/mul_8:z:0while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_3ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_3StridedSlice+while/lstm_cell_83/ReadVariableOp_3:value:01while/lstm_cell_83/strided_slice_3/stack:output:03while/lstm_cell_83/strided_slice_3/stack_1:output:03while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_7MatMulwhile/lstm_cell_83/mul_7:z:0+while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_4AddV2%while/lstm_cell_83/BiasAdd_3:output:0%while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_2Sigmoidwhile/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/mul_10Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚╞
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_10:z:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥{
while/Identity_4Identitywhile/lstm_cell_83/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚z
while/Identity_5Identitywhile/lstm_cell_83/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚╕

while/NoOpNoOp"^while/lstm_cell_83/ReadVariableOp$^while/lstm_cell_83/ReadVariableOp_1$^while/lstm_cell_83/ReadVariableOp_2$^while/lstm_cell_83/ReadVariableOp_3(^while/lstm_cell_83/split/ReadVariableOp*^while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_83_readvariableop_resource,while_lstm_cell_83_readvariableop_resource_0"j
2while_lstm_cell_83_split_1_readvariableop_resource4while_lstm_cell_83_split_1_readvariableop_resource_0"f
0while_lstm_cell_83_split_readvariableop_resource2while_lstm_cell_83_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2F
!while/lstm_cell_83/ReadVariableOp!while/lstm_cell_83/ReadVariableOp2J
#while/lstm_cell_83/ReadVariableOp_1#while/lstm_cell_83/ReadVariableOp_12J
#while/lstm_cell_83/ReadVariableOp_2#while/lstm_cell_83/ReadVariableOp_22J
#while/lstm_cell_83/ReadVariableOp_3#while/lstm_cell_83/ReadVariableOp_32R
'while/lstm_cell_83/split/ReadVariableOp'while/lstm_cell_83/split/ReadVariableOp2V
)while/lstm_cell_83/split_1/ReadVariableOp)while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
 
╕
)__inference_lstm_79_layer_call_fn_3103788

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallч
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102839p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
 
_user_specified_nameinputs
Я

ш
lstm_79_while_cond_3103497,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3.
*lstm_79_while_less_lstm_79_strided_slice_1E
Alstm_79_while_lstm_79_while_cond_3103497___redundant_placeholder0E
Alstm_79_while_lstm_79_while_cond_3103497___redundant_placeholder1E
Alstm_79_while_lstm_79_while_cond_3103497___redundant_placeholder2E
Alstm_79_while_lstm_79_while_cond_3103497___redundant_placeholder3
lstm_79_while_identity
В
lstm_79/while/LessLesslstm_79_while_placeholder*lstm_79_while_less_lstm_79_strided_slice_1*
T0*
_output_shapes
: [
lstm_79/while/IdentityIdentitylstm_79/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_79_while_identitylstm_79/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
╛
╚
while_cond_3104258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3104258___redundant_placeholder05
1while_while_cond_3104258___redundant_placeholder15
1while_while_cond_3104258___redundant_placeholder25
1while_while_cond_3104258___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
Я

ш
lstm_79_while_cond_3103165,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3.
*lstm_79_while_less_lstm_79_strided_slice_1E
Alstm_79_while_lstm_79_while_cond_3103165___redundant_placeholder0E
Alstm_79_while_lstm_79_while_cond_3103165___redundant_placeholder1E
Alstm_79_while_lstm_79_while_cond_3103165___redundant_placeholder2E
Alstm_79_while_lstm_79_while_cond_3103165___redundant_placeholder3
lstm_79_while_identity
В
lstm_79/while/LessLesslstm_79_while_placeholder*lstm_79_while_less_lstm_79_strided_slice_1*
T0*
_output_shapes
: [
lstm_79/while/IdentityIdentitylstm_79/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_79_while_identitylstm_79/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
╠	
ў
E__inference_dense_79_layer_call_and_return_conditional_losses_3102409

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
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
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
 
_user_specified_nameinputs
√
∙
.__inference_lstm_cell_83_layer_call_fn_3103899

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

identity_2ИвStatefulPartitionedCallм
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
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101960p
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
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
states/0:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states/1
Ч
║
)__inference_lstm_79_layer_call_fn_3103766
inputs_0
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallщ
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102094p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
inputs/0
Ш#
ю
while_body_3101700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_83_3101724_0:
№а+
while_lstm_cell_83_3101726_0:	а0
while_lstm_cell_83_3101728_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_83_3101724:
№а)
while_lstm_cell_83_3101726:	а.
while_lstm_cell_83_3101728:
╚аИв*while/lstm_cell_83/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0║
*while/lstm_cell_83/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_83_3101724_0while_lstm_cell_83_3101726_0while_lstm_cell_83_3101728_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╚:         ╚:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101686▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_83/StatefulPartitionedCall:output:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥С
while/Identity_4Identity3while/lstm_cell_83/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ╚С
while/Identity_5Identity3while/lstm_cell_83/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         ╚y

while/NoOpNoOp+^while/lstm_cell_83/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_83_3101724while_lstm_cell_83_3101724_0":
while_lstm_cell_83_3101726while_lstm_cell_83_3101726_0":
while_lstm_cell_83_3101728while_lstm_cell_83_3101728_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2X
*while/lstm_cell_83/StatefulPartitionedCall*while/lstm_cell_83/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
Ў
№
/__inference_sequential_79_layer_call_fn_3102951
lstm_79_input
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCalllstm_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         : *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102921o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
_user_specified_namelstm_79_input
╓v
й	
while_body_3104885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_83_split_readvariableop_resource_0:
№аC
4while_lstm_cell_83_split_1_readvariableop_resource_0:	а@
,while_lstm_cell_83_readvariableop_resource_0:
╚а
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_83_split_readvariableop_resource:
№аA
2while_lstm_cell_83_split_1_readvariableop_resource:	а>
*while_lstm_cell_83_readvariableop_resource:
╚аИв!while/lstm_cell_83/ReadVariableOpв#while/lstm_cell_83/ReadVariableOp_1в#while/lstm_cell_83/ReadVariableOp_2в#while/lstm_cell_83/ReadVariableOp_3в'while/lstm_cell_83/split/ReadVariableOpв)while/lstm_cell_83/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0В
"while/lstm_cell_83/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:g
"while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▒
while/lstm_cell_83/ones_likeFill+while/lstm_cell_83/ones_like/Shape:output:0+while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №g
$while/lstm_cell_83/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:i
$while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
while/lstm_cell_83/ones_like_1Fill-while/lstm_cell_83/ones_like_1/Shape:output:0-while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚й
while/lstm_cell_83/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №л
while/lstm_cell_83/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №d
"while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'while/lstm_cell_83/split/ReadVariableOpReadVariableOp2while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0▀
while/lstm_cell_83/splitSplit+while/lstm_cell_83/split/split_dim:output:0/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitХ
while/lstm_cell_83/MatMulMatMulwhile/lstm_cell_83/mul:z:0!while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_1MatMulwhile/lstm_cell_83/mul_1:z:0!while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_2MatMulwhile/lstm_cell_83/mul_2:z:0!while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/MatMul_3MatMulwhile/lstm_cell_83/mul_3:z:0!while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚f
$while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ы
)while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0╤
while/lstm_cell_83/split_1Split-while/lstm_cell_83/split_1/split_dim:output:01while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitв
while/lstm_cell_83/BiasAddBiasAdd#while/lstm_cell_83/MatMul:product:0#while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_1BiasAdd%while/lstm_cell_83/MatMul_1:product:0#while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_2BiasAdd%while/lstm_cell_83/MatMul_2:product:0#while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚ж
while/lstm_cell_83/BiasAdd_3BiasAdd%while/lstm_cell_83/MatMul_3:product:0#while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_4Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_5Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_6Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/mul_7Mulwhile_placeholder_2'while/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Р
!while/lstm_cell_83/ReadVariableOpReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0w
&while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   y
(while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╠
 while/lstm_cell_83/strided_sliceStridedSlice)while/lstm_cell_83/ReadVariableOp:value:0/while/lstm_cell_83/strided_slice/stack:output:01while/lstm_cell_83/strided_slice/stack_1:output:01while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskб
while/lstm_cell_83/MatMul_4MatMulwhile/lstm_cell_83/mul_4:z:0)while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/addAddV2#while/lstm_cell_83/BiasAdd:output:0%while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚t
while/lstm_cell_83/SigmoidSigmoidwhile/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_1ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_1StridedSlice+while/lstm_cell_83/ReadVariableOp_1:value:01while/lstm_cell_83/strided_slice_1/stack:output:03while/lstm_cell_83/strided_slice_1/stack_1:output:03while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_5MatMulwhile/lstm_cell_83/mul_5:z:0+while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_1AddV2%while/lstm_cell_83/BiasAdd_1:output:0%while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_1Sigmoidwhile/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Й
while/lstm_cell_83/mul_8Mul while/lstm_cell_83/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_2ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  {
*while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_2StridedSlice+while/lstm_cell_83/ReadVariableOp_2:value:01while/lstm_cell_83/strided_slice_2/stack:output:03while/lstm_cell_83/strided_slice_2/stack_1:output:03while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_6MatMulwhile/lstm_cell_83/mul_6:z:0+while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_2AddV2%while/lstm_cell_83/BiasAdd_2:output:0%while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚p
while/lstm_cell_83/ReluReluwhile/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Щ
while/lstm_cell_83/mul_9Mulwhile/lstm_cell_83/Sigmoid:y:0%while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Р
while/lstm_cell_83/add_3AddV2while/lstm_cell_83/mul_8:z:0while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Т
#while/lstm_cell_83/ReadVariableOp_3ReadVariableOp,while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0y
(while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  {
*while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"while/lstm_cell_83/strided_slice_3StridedSlice+while/lstm_cell_83/ReadVariableOp_3:value:01while/lstm_cell_83/strided_slice_3/stack:output:03while/lstm_cell_83/strided_slice_3/stack_1:output:03while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskг
while/lstm_cell_83/MatMul_7MatMulwhile/lstm_cell_83/mul_7:z:0+while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚в
while/lstm_cell_83/add_4AddV2%while/lstm_cell_83/BiasAdd_3:output:0%while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚x
while/lstm_cell_83/Sigmoid_2Sigmoidwhile/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚r
while/lstm_cell_83/Relu_1Reluwhile/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚Ю
while/lstm_cell_83/mul_10Mul while/lstm_cell_83/Sigmoid_2:y:0'while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚╞
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_83/mul_10:z:0*
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
: Щ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щш╥{
while/Identity_4Identitywhile/lstm_cell_83/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚z
while/Identity_5Identitywhile/lstm_cell_83/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ╚╕

while/NoOpNoOp"^while/lstm_cell_83/ReadVariableOp$^while/lstm_cell_83/ReadVariableOp_1$^while/lstm_cell_83/ReadVariableOp_2$^while/lstm_cell_83/ReadVariableOp_3(^while/lstm_cell_83/split/ReadVariableOp*^while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_83_readvariableop_resource,while_lstm_cell_83_readvariableop_resource_0"j
2while_lstm_cell_83_split_1_readvariableop_resource4while_lstm_cell_83_split_1_readvariableop_resource_0"f
0while_lstm_cell_83_split_readvariableop_resource2while_lstm_cell_83_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2F
!while/lstm_cell_83/ReadVariableOp!while/lstm_cell_83/ReadVariableOp2J
#while/lstm_cell_83/ReadVariableOp_1#while/lstm_cell_83/ReadVariableOp_12J
#while/lstm_cell_83/ReadVariableOp_2#while/lstm_cell_83/ReadVariableOp_22J
#while/lstm_cell_83/ReadVariableOp_3#while/lstm_cell_83/ReadVariableOp_32R
'while/lstm_cell_83/split/ReadVariableOp'while/lstm_cell_83/split/ReadVariableOp2V
)while/lstm_cell_83/split_1/ReadVariableOp)while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
ЭН
┤
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102383

inputs>
*lstm_cell_83_split_readvariableop_resource:
№а;
,lstm_cell_83_split_1_readvariableop_resource:	а8
$lstm_cell_83_readvariableop_resource:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвlstm_cell_83/ReadVariableOpвlstm_cell_83/ReadVariableOp_1вlstm_cell_83/ReadVariableOp_2вlstm_cell_83/ReadVariableOp_3в!lstm_cell_83/split/ReadVariableOpв#lstm_cell_83/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
:         №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_maskd
lstm_cell_83/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:a
lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
lstm_cell_83/ones_likeFill%lstm_cell_83/ones_like/Shape:output:0%lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №\
lstm_cell_83/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:c
lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
lstm_cell_83/ones_like_1Fill'lstm_cell_83/ones_like_1/Shape:output:0'lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚Е
lstm_cell_83/mulMulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_1Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_2Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_3Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :О
!lstm_cell_83/split/ReadVariableOpReadVariableOp*lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0═
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0)lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitГ
lstm_cell_83/MatMulMatMullstm_cell_83/mul:z:0lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_1MatMullstm_cell_83/mul_1:z:0lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_2MatMullstm_cell_83/mul_2:z:0lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_3MatMullstm_cell_83/mul_3:z:0lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚`
lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Н
#lstm_cell_83/split_1/ReadVariableOpReadVariableOp,lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0┐
lstm_cell_83/split_1Split'lstm_cell_83/split_1/split_dim:output:0+lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitР
lstm_cell_83/BiasAddBiasAddlstm_cell_83/MatMul:product:0lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_1BiasAddlstm_cell_83/MatMul_1:product:0lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_2BiasAddlstm_cell_83/MatMul_2:product:0lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_3BiasAddlstm_cell_83/MatMul_3:product:0lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_4Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_5Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_6Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_7Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚В
lstm_cell_83/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0q
 lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   s
"lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
lstm_cell_83/strided_sliceStridedSlice#lstm_cell_83/ReadVariableOp:value:0)lstm_cell_83/strided_slice/stack:output:0+lstm_cell_83/strided_slice/stack_1:output:0+lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskП
lstm_cell_83/MatMul_4MatMullstm_cell_83/mul_4:z:0#lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/addAddV2lstm_cell_83/BiasAdd:output:0lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚h
lstm_cell_83/SigmoidSigmoidlstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_1ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   u
$lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_1StridedSlice%lstm_cell_83/ReadVariableOp_1:value:0+lstm_cell_83/strided_slice_1/stack:output:0-lstm_cell_83/strided_slice_1/stack_1:output:0-lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_5MatMullstm_cell_83/mul_5:z:0%lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_1AddV2lstm_cell_83/BiasAdd_1:output:0lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚z
lstm_cell_83/mul_8Mullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_2ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_2StridedSlice%lstm_cell_83/ReadVariableOp_2:value:0+lstm_cell_83/strided_slice_2/stack:output:0-lstm_cell_83/strided_slice_2/stack_1:output:0-lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_6MatMullstm_cell_83/mul_6:z:0%lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_2AddV2lstm_cell_83/BiasAdd_2:output:0lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚d
lstm_cell_83/ReluRelulstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/mul_9Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/add_3AddV2lstm_cell_83/mul_8:z:0lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_3ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_3StridedSlice%lstm_cell_83/ReadVariableOp_3:value:0+lstm_cell_83/strided_slice_3/stack:output:0-lstm_cell_83/strided_slice_3/stack_1:output:0-lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_7MatMullstm_cell_83/mul_7:z:0%lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_4AddV2lstm_cell_83/BiasAdd_3:output:0lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚f
lstm_cell_83/Relu_1Relulstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/mul_10Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : ■
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_83_split_readvariableop_resource,lstm_cell_83_split_1_readvariableop_resource$lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3102243*
condR
while_cond_3102242*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0h
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
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    о
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚р
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^lstm_cell_83/ReadVariableOp^lstm_cell_83/ReadVariableOp_1^lstm_cell_83/ReadVariableOp_2^lstm_cell_83/ReadVariableOp_3"^lstm_cell_83/split/ReadVariableOp$^lstm_cell_83/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_83/ReadVariableOplstm_cell_83/ReadVariableOp2>
lstm_cell_83/ReadVariableOp_1lstm_cell_83/ReadVariableOp_12>
lstm_cell_83/ReadVariableOp_2lstm_cell_83/ReadVariableOp_22>
lstm_cell_83/ReadVariableOp_3lstm_cell_83/ReadVariableOp_32F
!lstm_cell_83/split/ReadVariableOp!lstm_cell_83/split/ReadVariableOp2J
#lstm_cell_83/split_1/ReadVariableOp#lstm_cell_83/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
╛
╚
while_cond_3104884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3104884___redundant_placeholder05
1while_while_cond_3104884___redundant_placeholder15
1while_while_cond_3104884___redundant_placeholder25
1while_while_cond_3104884___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
╠	
ў
E__inference_dense_79_layer_call_and_return_conditional_losses_3103859

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
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
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
 
_user_specified_nameinputs
╟
Ш
*__inference_dense_79_layer_call_fn_3103849

inputs
unknown:	╚
	unknown_0:
identityИвStatefulPartitionedCall┌
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
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_3102409o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
 
_user_specified_nameinputs
┼O
Ў
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101686

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

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         №G
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
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
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:         ╚`
mul_9MulSigmoid:y:0Relu:activations:0*
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
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:         ╚e
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         ╚б
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
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
:         ╚К
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3H^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
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
ReadVariableOp_3ReadVariableOp_32Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2,
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
 
_user_specified_namestates
ЭК
°
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3104139

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

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
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
:         №O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Н
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
:         №p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
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
:         №Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
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
:         №t
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №p
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
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
:         №Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
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
:         №t
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №p
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
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
:         №Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
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
:         №t
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №p
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №I
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
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
 *  а?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚X
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:         №\
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №\
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №\
mul_3Mulinputsdropout_3/Mul_1:z:0*
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
:         ╚^
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚^
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚^
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚^
mul_7Mulstates_0dropout_7/Mul_1:z:0*
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
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:         ╚`
mul_9MulSigmoid:y:0Relu:activations:0*
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
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:         ╚e
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         ╚б
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
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
:         ╚К
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3H^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
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
ReadVariableOp_3ReadVariableOp_32Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2,
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
states/0:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states/1
╩▀
┴
lstm_79_while_body_3103498,
(lstm_79_while_lstm_79_while_loop_counter2
.lstm_79_while_lstm_79_while_maximum_iterations
lstm_79_while_placeholder
lstm_79_while_placeholder_1
lstm_79_while_placeholder_2
lstm_79_while_placeholder_3+
'lstm_79_while_lstm_79_strided_slice_1_0g
clstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_79_while_lstm_cell_83_split_readvariableop_resource_0:
№аK
<lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0:	аH
4lstm_79_while_lstm_cell_83_readvariableop_resource_0:
╚а
lstm_79_while_identity
lstm_79_while_identity_1
lstm_79_while_identity_2
lstm_79_while_identity_3
lstm_79_while_identity_4
lstm_79_while_identity_5)
%lstm_79_while_lstm_79_strided_slice_1e
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorL
8lstm_79_while_lstm_cell_83_split_readvariableop_resource:
№аI
:lstm_79_while_lstm_cell_83_split_1_readvariableop_resource:	аF
2lstm_79_while_lstm_cell_83_readvariableop_resource:
╚аИв)lstm_79/while/lstm_cell_83/ReadVariableOpв+lstm_79/while/lstm_cell_83/ReadVariableOp_1в+lstm_79/while/lstm_cell_83/ReadVariableOp_2в+lstm_79/while/lstm_cell_83/ReadVariableOp_3в/lstm_79/while/lstm_cell_83/split/ReadVariableOpв1lstm_79/while/lstm_cell_83/split_1/ReadVariableOpР
?lstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   ╧
1lstm_79/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0lstm_79_while_placeholderHlstm_79/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         №*
element_dtype0Т
*lstm_79/while/lstm_cell_83/ones_like/ShapeShape8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:o
*lstm_79/while/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╔
$lstm_79/while/lstm_cell_83/ones_likeFill3lstm_79/while/lstm_cell_83/ones_like/Shape:output:03lstm_79/while/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №m
(lstm_79/while/lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?┬
&lstm_79/while/lstm_cell_83/dropout/MulMul-lstm_79/while/lstm_cell_83/ones_like:output:01lstm_79/while/lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №Е
(lstm_79/while/lstm_cell_83/dropout/ShapeShape-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:├
?lstm_79/while/lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform1lstm_79/while/lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0v
1lstm_79/while/lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>°
/lstm_79/while/lstm_cell_83/dropout/GreaterEqualGreaterEqualHlstm_79/while/lstm_cell_83/dropout/random_uniform/RandomUniform:output:0:lstm_79/while/lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №ж
'lstm_79/while/lstm_cell_83/dropout/CastCast3lstm_79/while/lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №╗
(lstm_79/while/lstm_cell_83/dropout/Mul_1Mul*lstm_79/while/lstm_cell_83/dropout/Mul:z:0+lstm_79/while/lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №o
*lstm_79/while/lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?╞
(lstm_79/while/lstm_cell_83/dropout_1/MulMul-lstm_79/while/lstm_cell_83/ones_like:output:03lstm_79/while/lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №З
*lstm_79/while/lstm_cell_83/dropout_1/ShapeShape-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╟
Alstm_79/while/lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_79/while/lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0x
3lstm_79/while/lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>■
1lstm_79/while/lstm_cell_83/dropout_1/GreaterEqualGreaterEqualJlstm_79/while/lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:0<lstm_79/while/lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №к
)lstm_79/while/lstm_cell_83/dropout_1/CastCast5lstm_79/while/lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №┴
*lstm_79/while/lstm_cell_83/dropout_1/Mul_1Mul,lstm_79/while/lstm_cell_83/dropout_1/Mul:z:0-lstm_79/while/lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №o
*lstm_79/while/lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?╞
(lstm_79/while/lstm_cell_83/dropout_2/MulMul-lstm_79/while/lstm_cell_83/ones_like:output:03lstm_79/while/lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №З
*lstm_79/while/lstm_cell_83/dropout_2/ShapeShape-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╟
Alstm_79/while/lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_79/while/lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0x
3lstm_79/while/lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>■
1lstm_79/while/lstm_cell_83/dropout_2/GreaterEqualGreaterEqualJlstm_79/while/lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:0<lstm_79/while/lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №к
)lstm_79/while/lstm_cell_83/dropout_2/CastCast5lstm_79/while/lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №┴
*lstm_79/while/lstm_cell_83/dropout_2/Mul_1Mul,lstm_79/while/lstm_cell_83/dropout_2/Mul:z:0-lstm_79/while/lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №o
*lstm_79/while/lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?╞
(lstm_79/while/lstm_cell_83/dropout_3/MulMul-lstm_79/while/lstm_cell_83/ones_like:output:03lstm_79/while/lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №З
*lstm_79/while/lstm_cell_83/dropout_3/ShapeShape-lstm_79/while/lstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:╟
Alstm_79/while/lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_79/while/lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0x
3lstm_79/while/lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>■
1lstm_79/while/lstm_cell_83/dropout_3/GreaterEqualGreaterEqualJlstm_79/while/lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:0<lstm_79/while/lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №к
)lstm_79/while/lstm_cell_83/dropout_3/CastCast5lstm_79/while/lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №┴
*lstm_79/while/lstm_cell_83/dropout_3/Mul_1Mul,lstm_79/while/lstm_cell_83/dropout_3/Mul:z:0-lstm_79/while/lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №w
,lstm_79/while/lstm_cell_83/ones_like_1/ShapeShapelstm_79_while_placeholder_2*
T0*
_output_shapes
:q
,lstm_79/while/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╧
&lstm_79/while/lstm_cell_83/ones_like_1Fill5lstm_79/while/lstm_cell_83/ones_like_1/Shape:output:05lstm_79/while/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚o
*lstm_79/while/lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╚
(lstm_79/while/lstm_cell_83/dropout_4/MulMul/lstm_79/while/lstm_cell_83/ones_like_1:output:03lstm_79/while/lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚Й
*lstm_79/while/lstm_cell_83/dropout_4/ShapeShape/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╟
Alstm_79/while/lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform3lstm_79/while/lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0x
3lstm_79/while/lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>■
1lstm_79/while/lstm_cell_83/dropout_4/GreaterEqualGreaterEqualJlstm_79/while/lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:0<lstm_79/while/lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚к
)lstm_79/while/lstm_cell_83/dropout_4/CastCast5lstm_79/while/lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚┴
*lstm_79/while/lstm_cell_83/dropout_4/Mul_1Mul,lstm_79/while/lstm_cell_83/dropout_4/Mul:z:0-lstm_79/while/lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚o
*lstm_79/while/lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╚
(lstm_79/while/lstm_cell_83/dropout_5/MulMul/lstm_79/while/lstm_cell_83/ones_like_1:output:03lstm_79/while/lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚Й
*lstm_79/while/lstm_cell_83/dropout_5/ShapeShape/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╟
Alstm_79/while/lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform3lstm_79/while/lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0x
3lstm_79/while/lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>■
1lstm_79/while/lstm_cell_83/dropout_5/GreaterEqualGreaterEqualJlstm_79/while/lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:0<lstm_79/while/lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚к
)lstm_79/while/lstm_cell_83/dropout_5/CastCast5lstm_79/while/lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚┴
*lstm_79/while/lstm_cell_83/dropout_5/Mul_1Mul,lstm_79/while/lstm_cell_83/dropout_5/Mul:z:0-lstm_79/while/lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚o
*lstm_79/while/lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╚
(lstm_79/while/lstm_cell_83/dropout_6/MulMul/lstm_79/while/lstm_cell_83/ones_like_1:output:03lstm_79/while/lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚Й
*lstm_79/while/lstm_cell_83/dropout_6/ShapeShape/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╟
Alstm_79/while/lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform3lstm_79/while/lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0x
3lstm_79/while/lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>■
1lstm_79/while/lstm_cell_83/dropout_6/GreaterEqualGreaterEqualJlstm_79/while/lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:0<lstm_79/while/lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚к
)lstm_79/while/lstm_cell_83/dropout_6/CastCast5lstm_79/while/lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚┴
*lstm_79/while/lstm_cell_83/dropout_6/Mul_1Mul,lstm_79/while/lstm_cell_83/dropout_6/Mul:z:0-lstm_79/while/lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚o
*lstm_79/while/lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?╚
(lstm_79/while/lstm_cell_83/dropout_7/MulMul/lstm_79/while/lstm_cell_83/ones_like_1:output:03lstm_79/while/lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚Й
*lstm_79/while/lstm_cell_83/dropout_7/ShapeShape/lstm_79/while/lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:╟
Alstm_79/while/lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform3lstm_79/while/lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0x
3lstm_79/while/lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>■
1lstm_79/while/lstm_cell_83/dropout_7/GreaterEqualGreaterEqualJlstm_79/while/lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:0<lstm_79/while/lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚к
)lstm_79/while/lstm_cell_83/dropout_7/CastCast5lstm_79/while/lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚┴
*lstm_79/while/lstm_cell_83/dropout_7/Mul_1Mul,lstm_79/while/lstm_cell_83/dropout_7/Mul:z:0-lstm_79/while/lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚└
lstm_79/while/lstm_cell_83/mulMul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_79/while/lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №─
 lstm_79/while/lstm_cell_83/mul_1Mul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0.lstm_79/while/lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №─
 lstm_79/while/lstm_cell_83/mul_2Mul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0.lstm_79/while/lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №─
 lstm_79/while/lstm_cell_83/mul_3Mul8lstm_79/while/TensorArrayV2Read/TensorListGetItem:item:0.lstm_79/while/lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №l
*lstm_79/while/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
/lstm_79/while/lstm_cell_83/split/ReadVariableOpReadVariableOp:lstm_79_while_lstm_cell_83_split_readvariableop_resource_0* 
_output_shapes
:
№а*
dtype0ў
 lstm_79/while/lstm_cell_83/splitSplit3lstm_79/while/lstm_cell_83/split/split_dim:output:07lstm_79/while/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitн
!lstm_79/while/lstm_cell_83/MatMulMatMul"lstm_79/while/lstm_cell_83/mul:z:0)lstm_79/while/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚▒
#lstm_79/while/lstm_cell_83/MatMul_1MatMul$lstm_79/while/lstm_cell_83/mul_1:z:0)lstm_79/while/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚▒
#lstm_79/while/lstm_cell_83/MatMul_2MatMul$lstm_79/while/lstm_cell_83/mul_2:z:0)lstm_79/while/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚▒
#lstm_79/while/lstm_cell_83/MatMul_3MatMul$lstm_79/while/lstm_cell_83/mul_3:z:0)lstm_79/while/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚n
,lstm_79/while/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : л
1lstm_79/while/lstm_cell_83/split_1/ReadVariableOpReadVariableOp<lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0*
_output_shapes	
:а*
dtype0щ
"lstm_79/while/lstm_cell_83/split_1Split5lstm_79/while/lstm_cell_83/split_1/split_dim:output:09lstm_79/while/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_split║
"lstm_79/while/lstm_cell_83/BiasAddBiasAdd+lstm_79/while/lstm_cell_83/MatMul:product:0+lstm_79/while/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚╛
$lstm_79/while/lstm_cell_83/BiasAdd_1BiasAdd-lstm_79/while/lstm_cell_83/MatMul_1:product:0+lstm_79/while/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚╛
$lstm_79/while/lstm_cell_83/BiasAdd_2BiasAdd-lstm_79/while/lstm_cell_83/MatMul_2:product:0+lstm_79/while/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚╛
$lstm_79/while/lstm_cell_83/BiasAdd_3BiasAdd-lstm_79/while/lstm_cell_83/MatMul_3:product:0+lstm_79/while/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚з
 lstm_79/while/lstm_cell_83/mul_4Mullstm_79_while_placeholder_2.lstm_79/while/lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚з
 lstm_79/while/lstm_cell_83/mul_5Mullstm_79_while_placeholder_2.lstm_79/while/lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚з
 lstm_79/while/lstm_cell_83/mul_6Mullstm_79_while_placeholder_2.lstm_79/while/lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚з
 lstm_79/while/lstm_cell_83/mul_7Mullstm_79_while_placeholder_2.lstm_79/while/lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚а
)lstm_79/while/lstm_cell_83/ReadVariableOpReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0
.lstm_79/while/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0lstm_79/while/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   Б
0lstm_79/while/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
(lstm_79/while/lstm_cell_83/strided_sliceStridedSlice1lstm_79/while/lstm_cell_83/ReadVariableOp:value:07lstm_79/while/lstm_cell_83/strided_slice/stack:output:09lstm_79/while/lstm_cell_83/strided_slice/stack_1:output:09lstm_79/while/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╣
#lstm_79/while/lstm_cell_83/MatMul_4MatMul$lstm_79/while/lstm_cell_83/mul_4:z:01lstm_79/while/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚╢
lstm_79/while/lstm_cell_83/addAddV2+lstm_79/while/lstm_cell_83/BiasAdd:output:0-lstm_79/while/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚Д
"lstm_79/while/lstm_cell_83/SigmoidSigmoid"lstm_79/while/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚в
+lstm_79/while/lstm_cell_83/ReadVariableOp_1ReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0Б
0lstm_79/while/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   Г
2lstm_79/while/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  Г
2lstm_79/while/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ■
*lstm_79/while/lstm_cell_83/strided_slice_1StridedSlice3lstm_79/while/lstm_cell_83/ReadVariableOp_1:value:09lstm_79/while/lstm_cell_83/strided_slice_1/stack:output:0;lstm_79/while/lstm_cell_83/strided_slice_1/stack_1:output:0;lstm_79/while/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╗
#lstm_79/while/lstm_cell_83/MatMul_5MatMul$lstm_79/while/lstm_cell_83/mul_5:z:03lstm_79/while/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚║
 lstm_79/while/lstm_cell_83/add_1AddV2-lstm_79/while/lstm_cell_83/BiasAdd_1:output:0-lstm_79/while/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚И
$lstm_79/while/lstm_cell_83/Sigmoid_1Sigmoid$lstm_79/while/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚б
 lstm_79/while/lstm_cell_83/mul_8Mul(lstm_79/while/lstm_cell_83/Sigmoid_1:y:0lstm_79_while_placeholder_3*
T0*(
_output_shapes
:         ╚в
+lstm_79/while/lstm_cell_83/ReadVariableOp_2ReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0Б
0lstm_79/while/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  Г
2lstm_79/while/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  Г
2lstm_79/while/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ■
*lstm_79/while/lstm_cell_83/strided_slice_2StridedSlice3lstm_79/while/lstm_cell_83/ReadVariableOp_2:value:09lstm_79/while/lstm_cell_83/strided_slice_2/stack:output:0;lstm_79/while/lstm_cell_83/strided_slice_2/stack_1:output:0;lstm_79/while/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╗
#lstm_79/while/lstm_cell_83/MatMul_6MatMul$lstm_79/while/lstm_cell_83/mul_6:z:03lstm_79/while/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚║
 lstm_79/while/lstm_cell_83/add_2AddV2-lstm_79/while/lstm_cell_83/BiasAdd_2:output:0-lstm_79/while/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚А
lstm_79/while/lstm_cell_83/ReluRelu$lstm_79/while/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚▒
 lstm_79/while/lstm_cell_83/mul_9Mul&lstm_79/while/lstm_cell_83/Sigmoid:y:0-lstm_79/while/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚и
 lstm_79/while/lstm_cell_83/add_3AddV2$lstm_79/while/lstm_cell_83/mul_8:z:0$lstm_79/while/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚в
+lstm_79/while/lstm_cell_83/ReadVariableOp_3ReadVariableOp4lstm_79_while_lstm_cell_83_readvariableop_resource_0* 
_output_shapes
:
╚а*
dtype0Б
0lstm_79/while/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  Г
2lstm_79/while/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Г
2lstm_79/while/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ■
*lstm_79/while/lstm_cell_83/strided_slice_3StridedSlice3lstm_79/while/lstm_cell_83/ReadVariableOp_3:value:09lstm_79/while/lstm_cell_83/strided_slice_3/stack:output:0;lstm_79/while/lstm_cell_83/strided_slice_3/stack_1:output:0;lstm_79/while/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_mask╗
#lstm_79/while/lstm_cell_83/MatMul_7MatMul$lstm_79/while/lstm_cell_83/mul_7:z:03lstm_79/while/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚║
 lstm_79/while/lstm_cell_83/add_4AddV2-lstm_79/while/lstm_cell_83/BiasAdd_3:output:0-lstm_79/while/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚И
$lstm_79/while/lstm_cell_83/Sigmoid_2Sigmoid$lstm_79/while/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚В
!lstm_79/while/lstm_cell_83/Relu_1Relu$lstm_79/while/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚╢
!lstm_79/while/lstm_cell_83/mul_10Mul(lstm_79/while/lstm_cell_83/Sigmoid_2:y:0/lstm_79/while/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚ц
2lstm_79/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_79_while_placeholder_1lstm_79_while_placeholder%lstm_79/while/lstm_cell_83/mul_10:z:0*
_output_shapes
: *
element_dtype0:щш╥U
lstm_79/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_79/while/addAddV2lstm_79_while_placeholderlstm_79/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_79/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_79/while/add_1AddV2(lstm_79_while_lstm_79_while_loop_counterlstm_79/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_79/while/IdentityIdentitylstm_79/while/add_1:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: К
lstm_79/while/Identity_1Identity.lstm_79_while_lstm_79_while_maximum_iterations^lstm_79/while/NoOp*
T0*
_output_shapes
: q
lstm_79/while/Identity_2Identitylstm_79/while/add:z:0^lstm_79/while/NoOp*
T0*
_output_shapes
: ▒
lstm_79/while/Identity_3IdentityBlstm_79/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_79/while/NoOp*
T0*
_output_shapes
: :щш╥У
lstm_79/while/Identity_4Identity%lstm_79/while/lstm_cell_83/mul_10:z:0^lstm_79/while/NoOp*
T0*(
_output_shapes
:         ╚Т
lstm_79/while/Identity_5Identity$lstm_79/while/lstm_cell_83/add_3:z:0^lstm_79/while/NoOp*
T0*(
_output_shapes
:         ╚Ё
lstm_79/while/NoOpNoOp*^lstm_79/while/lstm_cell_83/ReadVariableOp,^lstm_79/while/lstm_cell_83/ReadVariableOp_1,^lstm_79/while/lstm_cell_83/ReadVariableOp_2,^lstm_79/while/lstm_cell_83/ReadVariableOp_30^lstm_79/while/lstm_cell_83/split/ReadVariableOp2^lstm_79/while/lstm_cell_83/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_79_while_identitylstm_79/while/Identity:output:0"=
lstm_79_while_identity_1!lstm_79/while/Identity_1:output:0"=
lstm_79_while_identity_2!lstm_79/while/Identity_2:output:0"=
lstm_79_while_identity_3!lstm_79/while/Identity_3:output:0"=
lstm_79_while_identity_4!lstm_79/while/Identity_4:output:0"=
lstm_79_while_identity_5!lstm_79/while/Identity_5:output:0"P
%lstm_79_while_lstm_79_strided_slice_1'lstm_79_while_lstm_79_strided_slice_1_0"j
2lstm_79_while_lstm_cell_83_readvariableop_resource4lstm_79_while_lstm_cell_83_readvariableop_resource_0"z
:lstm_79_while_lstm_cell_83_split_1_readvariableop_resource<lstm_79_while_lstm_cell_83_split_1_readvariableop_resource_0"v
8lstm_79_while_lstm_cell_83_split_readvariableop_resource:lstm_79_while_lstm_cell_83_split_readvariableop_resource_0"╚
alstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensorclstm_79_while_tensorarrayv2read_tensorlistgetitem_lstm_79_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ╚:         ╚: : : : : 2V
)lstm_79/while/lstm_cell_83/ReadVariableOp)lstm_79/while/lstm_cell_83/ReadVariableOp2Z
+lstm_79/while/lstm_cell_83/ReadVariableOp_1+lstm_79/while/lstm_cell_83/ReadVariableOp_12Z
+lstm_79/while/lstm_cell_83/ReadVariableOp_2+lstm_79/while/lstm_cell_83/ReadVariableOp_22Z
+lstm_79/while/lstm_cell_83/ReadVariableOp_3+lstm_79/while/lstm_cell_83/ReadVariableOp_32b
/lstm_79/while/lstm_cell_83/split/ReadVariableOp/lstm_79/while/lstm_cell_83/split/ReadVariableOp2f
1lstm_79/while/lstm_cell_83/split_1/ReadVariableOp1lstm_79/while/lstm_cell_83/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
: 
НК
Ў
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101960

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

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
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
:         №O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Н
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
:         №p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
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
:         №Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
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
:         №t
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №p
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
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
:         №Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
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
:         №t
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №p
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
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
:         №Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:С
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
:         №t
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №p
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №G
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
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
 *  а?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚S
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:С
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
 *═╠L>н
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚t
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚p
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚X
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:         №\
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №\
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №\
mul_3Mulinputsdropout_3/Mul_1:z:0*
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
:         ╚\
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚\
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚\
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚\
mul_7Mulstatesdropout_7/Mul_1:z:0*
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
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:         ╚`
mul_9MulSigmoid:y:0Relu:activations:0*
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
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:         ╚e
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         ╚б
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
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
:         ╚К
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3H^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
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
ReadVariableOp_3ReadVariableOp_32Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2,
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
 
_user_specified_namestates
╥
ч
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103840

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identity

identity_1ИвStatefulPartitionedCallч
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102839д
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
 *-
config_proto

CPU

GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
╒O
°
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3103987

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

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвsplit/ReadVariableOpвsplit_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         №I
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
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
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:         ╚`
mul_9MulSigmoid:y:0Relu:activations:0*
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
Relu_1Relu	add_3:z:0*
T0*(
_output_shapes
:         ╚e
mul_10MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         ╚б
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
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
:         ╚К
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3H^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
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
ReadVariableOp_3ReadVariableOp_32Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2,
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
states/0:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states/1
ь╡
╤
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103325

inputsF
2lstm_79_lstm_cell_83_split_readvariableop_resource:
№аC
4lstm_79_lstm_cell_83_split_1_readvariableop_resource:	а@
,lstm_79_lstm_cell_83_readvariableop_resource:
╚а:
'dense_79_matmul_readvariableop_resource:	╚6
(dense_79_biasadd_readvariableop_resource:
identity

identity_1Ивdense_79/BiasAdd/ReadVariableOpвdense_79/MatMul/ReadVariableOpв#lstm_79/lstm_cell_83/ReadVariableOpв%lstm_79/lstm_cell_83/ReadVariableOp_1в%lstm_79/lstm_cell_83/ReadVariableOp_2в%lstm_79/lstm_cell_83/ReadVariableOp_3вGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpв)lstm_79/lstm_cell_83/split/ReadVariableOpв+lstm_79/lstm_cell_83/split_1/ReadVariableOpвlstm_79/whileC
lstm_79/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_79/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_79/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_79/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
lstm_79/strided_sliceStridedSlicelstm_79/Shape:output:0$lstm_79/strided_slice/stack:output:0&lstm_79/strided_slice/stack_1:output:0&lstm_79/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_79/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚Л
lstm_79/zeros/packedPacklstm_79/strided_slice:output:0lstm_79/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_79/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
lstm_79/zerosFilllstm_79/zeros/packed:output:0lstm_79/zeros/Const:output:0*
T0*(
_output_shapes
:         ╚[
lstm_79/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚П
lstm_79/zeros_1/packedPacklstm_79/strided_slice:output:0!lstm_79/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_79/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
lstm_79/zeros_1Filllstm_79/zeros_1/packed:output:0lstm_79/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚k
lstm_79/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
lstm_79/transpose	Transposeinputslstm_79/transpose/perm:output:0*
T0*,
_output_shapes
:         №T
lstm_79/Shape_1Shapelstm_79/transpose:y:0*
T0*
_output_shapes
:g
lstm_79/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_79/strided_slice_1StridedSlicelstm_79/Shape_1:output:0&lstm_79/strided_slice_1/stack:output:0(lstm_79/strided_slice_1/stack_1:output:0(lstm_79/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_79/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_79/TensorArrayV2TensorListReserve,lstm_79/TensorArrayV2/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
=lstm_79/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    №   °
/lstm_79/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_79/transpose:y:0Flstm_79/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥g
lstm_79/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_79/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
lstm_79/strided_slice_2StridedSlicelstm_79/transpose:y:0&lstm_79/strided_slice_2/stack:output:0(lstm_79/strided_slice_2/stack_1:output:0(lstm_79/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         №*
shrink_axis_maskt
$lstm_79/lstm_cell_83/ones_like/ShapeShape lstm_79/strided_slice_2:output:0*
T0*
_output_shapes
:i
$lstm_79/lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╖
lstm_79/lstm_cell_83/ones_likeFill-lstm_79/lstm_cell_83/ones_like/Shape:output:0-lstm_79/lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №l
&lstm_79/lstm_cell_83/ones_like_1/ShapeShapelstm_79/zeros:output:0*
T0*
_output_shapes
:k
&lstm_79/lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╜
 lstm_79/lstm_cell_83/ones_like_1Fill/lstm_79/lstm_cell_83/ones_like_1/Shape:output:0/lstm_79/lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚Э
lstm_79/lstm_cell_83/mulMul lstm_79/strided_slice_2:output:0'lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №Я
lstm_79/lstm_cell_83/mul_1Mul lstm_79/strided_slice_2:output:0'lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №Я
lstm_79/lstm_cell_83/mul_2Mul lstm_79/strided_slice_2:output:0'lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №Я
lstm_79/lstm_cell_83/mul_3Mul lstm_79/strided_slice_2:output:0'lstm_79/lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №f
$lstm_79/lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
)lstm_79/lstm_cell_83/split/ReadVariableOpReadVariableOp2lstm_79_lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0х
lstm_79/lstm_cell_83/splitSplit-lstm_79/lstm_cell_83/split/split_dim:output:01lstm_79/lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitЫ
lstm_79/lstm_cell_83/MatMulMatMullstm_79/lstm_cell_83/mul:z:0#lstm_79/lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/MatMul_1MatMullstm_79/lstm_cell_83/mul_1:z:0#lstm_79/lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/MatMul_2MatMullstm_79/lstm_cell_83/mul_2:z:0#lstm_79/lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/MatMul_3MatMullstm_79/lstm_cell_83/mul_3:z:0#lstm_79/lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚h
&lstm_79/lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
+lstm_79/lstm_cell_83/split_1/ReadVariableOpReadVariableOp4lstm_79_lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0╫
lstm_79/lstm_cell_83/split_1Split/lstm_79/lstm_cell_83/split_1/split_dim:output:03lstm_79/lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitи
lstm_79/lstm_cell_83/BiasAddBiasAdd%lstm_79/lstm_cell_83/MatMul:product:0%lstm_79/lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚м
lstm_79/lstm_cell_83/BiasAdd_1BiasAdd'lstm_79/lstm_cell_83/MatMul_1:product:0%lstm_79/lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚м
lstm_79/lstm_cell_83/BiasAdd_2BiasAdd'lstm_79/lstm_cell_83/MatMul_2:product:0%lstm_79/lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚м
lstm_79/lstm_cell_83/BiasAdd_3BiasAdd'lstm_79/lstm_cell_83/MatMul_3:product:0%lstm_79/lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚Ч
lstm_79/lstm_cell_83/mul_4Mullstm_79/zeros:output:0)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Ч
lstm_79/lstm_cell_83/mul_5Mullstm_79/zeros:output:0)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Ч
lstm_79/lstm_cell_83/mul_6Mullstm_79/zeros:output:0)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Ч
lstm_79/lstm_cell_83/mul_7Mullstm_79/zeros:output:0)lstm_79/lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚Т
#lstm_79/lstm_cell_83/ReadVariableOpReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0y
(lstm_79/lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_79/lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   {
*lstm_79/lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╓
"lstm_79/lstm_cell_83/strided_sliceStridedSlice+lstm_79/lstm_cell_83/ReadVariableOp:value:01lstm_79/lstm_cell_83/strided_slice/stack:output:03lstm_79/lstm_cell_83/strided_slice/stack_1:output:03lstm_79/lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskз
lstm_79/lstm_cell_83/MatMul_4MatMullstm_79/lstm_cell_83/mul_4:z:0+lstm_79/lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚д
lstm_79/lstm_cell_83/addAddV2%lstm_79/lstm_cell_83/BiasAdd:output:0'lstm_79/lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚x
lstm_79/lstm_cell_83/SigmoidSigmoidlstm_79/lstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Ф
%lstm_79/lstm_cell_83/ReadVariableOp_1ReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0{
*lstm_79/lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   }
,lstm_79/lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  }
,lstm_79/lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      р
$lstm_79/lstm_cell_83/strided_slice_1StridedSlice-lstm_79/lstm_cell_83/ReadVariableOp_1:value:03lstm_79/lstm_cell_83/strided_slice_1/stack:output:05lstm_79/lstm_cell_83/strided_slice_1/stack_1:output:05lstm_79/lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskй
lstm_79/lstm_cell_83/MatMul_5MatMullstm_79/lstm_cell_83/mul_5:z:0-lstm_79/lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚и
lstm_79/lstm_cell_83/add_1AddV2'lstm_79/lstm_cell_83/BiasAdd_1:output:0'lstm_79/lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚|
lstm_79/lstm_cell_83/Sigmoid_1Sigmoidlstm_79/lstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚Т
lstm_79/lstm_cell_83/mul_8Mul"lstm_79/lstm_cell_83/Sigmoid_1:y:0lstm_79/zeros_1:output:0*
T0*(
_output_shapes
:         ╚Ф
%lstm_79/lstm_cell_83/ReadVariableOp_2ReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0{
*lstm_79/lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  }
,lstm_79/lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  }
,lstm_79/lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      р
$lstm_79/lstm_cell_83/strided_slice_2StridedSlice-lstm_79/lstm_cell_83/ReadVariableOp_2:value:03lstm_79/lstm_cell_83/strided_slice_2/stack:output:05lstm_79/lstm_cell_83/strided_slice_2/stack_1:output:05lstm_79/lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskй
lstm_79/lstm_cell_83/MatMul_6MatMullstm_79/lstm_cell_83/mul_6:z:0-lstm_79/lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚и
lstm_79/lstm_cell_83/add_2AddV2'lstm_79/lstm_cell_83/BiasAdd_2:output:0'lstm_79/lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚t
lstm_79/lstm_cell_83/ReluRelulstm_79/lstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚Я
lstm_79/lstm_cell_83/mul_9Mul lstm_79/lstm_cell_83/Sigmoid:y:0'lstm_79/lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚Ц
lstm_79/lstm_cell_83/add_3AddV2lstm_79/lstm_cell_83/mul_8:z:0lstm_79/lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Ф
%lstm_79/lstm_cell_83/ReadVariableOp_3ReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0{
*lstm_79/lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  }
,lstm_79/lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm_79/lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      р
$lstm_79/lstm_cell_83/strided_slice_3StridedSlice-lstm_79/lstm_cell_83/ReadVariableOp_3:value:03lstm_79/lstm_cell_83/strided_slice_3/stack:output:05lstm_79/lstm_cell_83/strided_slice_3/stack_1:output:05lstm_79/lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskй
lstm_79/lstm_cell_83/MatMul_7MatMullstm_79/lstm_cell_83/mul_7:z:0-lstm_79/lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚и
lstm_79/lstm_cell_83/add_4AddV2'lstm_79/lstm_cell_83/BiasAdd_3:output:0'lstm_79/lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚|
lstm_79/lstm_cell_83/Sigmoid_2Sigmoidlstm_79/lstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚v
lstm_79/lstm_cell_83/Relu_1Relulstm_79/lstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚д
lstm_79/lstm_cell_83/mul_10Mul"lstm_79/lstm_cell_83/Sigmoid_2:y:0)lstm_79/lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚v
%lstm_79/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╨
lstm_79/TensorArrayV2_1TensorListReserve.lstm_79/TensorArrayV2_1/element_shape:output:0 lstm_79/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥N
lstm_79/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_79/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_79/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
lstm_79/whileWhile#lstm_79/while/loop_counter:output:0)lstm_79/while/maximum_iterations:output:0lstm_79/time:output:0 lstm_79/TensorArrayV2_1:handle:0lstm_79/zeros:output:0lstm_79/zeros_1:output:0 lstm_79/strided_slice_1:output:0?lstm_79/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_79_lstm_cell_83_split_readvariableop_resource4lstm_79_lstm_cell_83_split_1_readvariableop_resource,lstm_79_lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_79_while_body_3103166*&
condR
lstm_79_while_cond_3103165*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Й
8lstm_79/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   █
*lstm_79/TensorArrayV2Stack/TensorListStackTensorListStacklstm_79/while:output:3Alstm_79/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0p
lstm_79/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_79/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_79/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
lstm_79/strided_slice_3StridedSlice3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_79/strided_slice_3/stack:output:0(lstm_79/strided_slice_3/stack_1:output:0(lstm_79/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskm
lstm_79/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
lstm_79/transpose_1	Transpose3lstm_79/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_79/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚c
lstm_79/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Б
"lstm_79/ActivityRegularizer/SquareSquare lstm_79/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚r
!lstm_79/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
lstm_79/ActivityRegularizer/SumSum&lstm_79/ActivityRegularizer/Square:y:0*lstm_79/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!lstm_79/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Э
lstm_79/ActivityRegularizer/mulMul*lstm_79/ActivityRegularizer/mul/x:output:0(lstm_79/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: q
!lstm_79/ActivityRegularizer/ShapeShape lstm_79/strided_slice_3:output:0*
T0*
_output_shapes
:y
/lstm_79/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_79/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_79/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)lstm_79/ActivityRegularizer/strided_sliceStridedSlice*lstm_79/ActivityRegularizer/Shape:output:08lstm_79/ActivityRegularizer/strided_slice/stack:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 lstm_79/ActivityRegularizer/CastCast2lstm_79/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ъ
#lstm_79/ActivityRegularizer/truedivRealDiv#lstm_79/ActivityRegularizer/mul:z:0$lstm_79/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: З
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0Х
dense_79/MatMulMatMul lstm_79/strided_slice_3:output:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╢
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp,lstm_79_lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_79/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         g

Identity_1Identity'lstm_79/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: █
NoOpNoOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp$^lstm_79/lstm_cell_83/ReadVariableOp&^lstm_79/lstm_cell_83/ReadVariableOp_1&^lstm_79/lstm_cell_83/ReadVariableOp_2&^lstm_79/lstm_cell_83/ReadVariableOp_3H^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp*^lstm_79/lstm_cell_83/split/ReadVariableOp,^lstm_79/lstm_cell_83/split_1/ReadVariableOp^lstm_79/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2J
#lstm_79/lstm_cell_83/ReadVariableOp#lstm_79/lstm_cell_83/ReadVariableOp2N
%lstm_79/lstm_cell_83/ReadVariableOp_1%lstm_79/lstm_cell_83/ReadVariableOp_12N
%lstm_79/lstm_cell_83/ReadVariableOp_2%lstm_79/lstm_cell_83/ReadVariableOp_22N
%lstm_79/lstm_cell_83/ReadVariableOp_3%lstm_79/lstm_cell_83/ReadVariableOp_32Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2V
)lstm_79/lstm_cell_83/split/ReadVariableOp)lstm_79/lstm_cell_83/split/ReadVariableOp2Z
+lstm_79/lstm_cell_83/split_1/ReadVariableOp+lstm_79/lstm_cell_83/split_1/ReadVariableOp2
lstm_79/whilelstm_79/while:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
Ў
№
/__inference_sequential_79_layer_call_fn_3102437
lstm_79_input
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
	unknown_2:	╚
	unknown_3:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCalllstm_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         : *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102423o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
_user_specified_namelstm_79_input
х╒
┤
D__inference_lstm_79_layer_call_and_return_conditional_losses_3105402

inputs>
*lstm_cell_83_split_readvariableop_resource:
№а;
,lstm_cell_83_split_1_readvariableop_resource:	а8
$lstm_cell_83_readvariableop_resource:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвlstm_cell_83/ReadVariableOpвlstm_cell_83/ReadVariableOp_1вlstm_cell_83/ReadVariableOp_2вlstm_cell_83/ReadVariableOp_3в!lstm_cell_83/split/ReadVariableOpв#lstm_cell_83/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
:         №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_maskd
lstm_cell_83/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:a
lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
lstm_cell_83/ones_likeFill%lstm_cell_83/ones_like/Shape:output:0%lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №_
lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ш
lstm_cell_83/dropout/MulMullstm_cell_83/ones_like:output:0#lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №i
lstm_cell_83/dropout/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:з
1lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0h
#lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╬
!lstm_cell_83/dropout/GreaterEqualGreaterEqual:lstm_cell_83/dropout/random_uniform/RandomUniform:output:0,lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №К
lstm_cell_83/dropout/CastCast%lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №С
lstm_cell_83/dropout/Mul_1Mullstm_cell_83/dropout/Mul:z:0lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_1/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_1/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_1/GreaterEqualGreaterEqual<lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_1/CastCast'lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_1/Mul_1Mullstm_cell_83/dropout_1/Mul:z:0lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_2/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_2/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_2/GreaterEqualGreaterEqual<lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_2/CastCast'lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_2/Mul_1Mullstm_cell_83/dropout_2/Mul:z:0lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_3/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_3/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_3/GreaterEqualGreaterEqual<lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_3/CastCast'lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_3/Mul_1Mullstm_cell_83/dropout_3/Mul:z:0lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №\
lstm_cell_83/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:c
lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
lstm_cell_83/ones_like_1Fill'lstm_cell_83/ones_like_1/Shape:output:0'lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_4/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_4/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_4/GreaterEqualGreaterEqual<lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_4/CastCast'lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_4/Mul_1Mullstm_cell_83/dropout_4/Mul:z:0lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_5/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_5/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_5/GreaterEqualGreaterEqual<lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_5/CastCast'lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_5/Mul_1Mullstm_cell_83/dropout_5/Mul:z:0lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_6/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_6/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_6/GreaterEqualGreaterEqual<lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_6/CastCast'lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_6/Mul_1Mullstm_cell_83/dropout_6/Mul:z:0lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_7/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_7/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_7/GreaterEqualGreaterEqual<lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_7/CastCast'lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_7/Mul_1Mullstm_cell_83/dropout_7/Mul:z:0lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/mulMulstrided_slice_2:output:0lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_1Mulstrided_slice_2:output:0 lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_2Mulstrided_slice_2:output:0 lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_3Mulstrided_slice_2:output:0 lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :О
!lstm_cell_83/split/ReadVariableOpReadVariableOp*lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0═
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0)lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitГ
lstm_cell_83/MatMulMatMullstm_cell_83/mul:z:0lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_1MatMullstm_cell_83/mul_1:z:0lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_2MatMullstm_cell_83/mul_2:z:0lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_3MatMullstm_cell_83/mul_3:z:0lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚`
lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Н
#lstm_cell_83/split_1/ReadVariableOpReadVariableOp,lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0┐
lstm_cell_83/split_1Split'lstm_cell_83/split_1/split_dim:output:0+lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitР
lstm_cell_83/BiasAddBiasAddlstm_cell_83/MatMul:product:0lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_1BiasAddlstm_cell_83/MatMul_1:product:0lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_2BiasAddlstm_cell_83/MatMul_2:product:0lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_3BiasAddlstm_cell_83/MatMul_3:product:0lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_4Mulzeros:output:0 lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_5Mulzeros:output:0 lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_6Mulzeros:output:0 lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_7Mulzeros:output:0 lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚В
lstm_cell_83/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0q
 lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   s
"lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
lstm_cell_83/strided_sliceStridedSlice#lstm_cell_83/ReadVariableOp:value:0)lstm_cell_83/strided_slice/stack:output:0+lstm_cell_83/strided_slice/stack_1:output:0+lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskП
lstm_cell_83/MatMul_4MatMullstm_cell_83/mul_4:z:0#lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/addAddV2lstm_cell_83/BiasAdd:output:0lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚h
lstm_cell_83/SigmoidSigmoidlstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_1ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   u
$lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_1StridedSlice%lstm_cell_83/ReadVariableOp_1:value:0+lstm_cell_83/strided_slice_1/stack:output:0-lstm_cell_83/strided_slice_1/stack_1:output:0-lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_5MatMullstm_cell_83/mul_5:z:0%lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_1AddV2lstm_cell_83/BiasAdd_1:output:0lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚z
lstm_cell_83/mul_8Mullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_2ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_2StridedSlice%lstm_cell_83/ReadVariableOp_2:value:0+lstm_cell_83/strided_slice_2/stack:output:0-lstm_cell_83/strided_slice_2/stack_1:output:0-lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_6MatMullstm_cell_83/mul_6:z:0%lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_2AddV2lstm_cell_83/BiasAdd_2:output:0lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚d
lstm_cell_83/ReluRelulstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/mul_9Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/add_3AddV2lstm_cell_83/mul_8:z:0lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_3ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_3StridedSlice%lstm_cell_83/ReadVariableOp_3:value:0+lstm_cell_83/strided_slice_3/stack:output:0-lstm_cell_83/strided_slice_3/stack_1:output:0-lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_7MatMullstm_cell_83/mul_7:z:0%lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_4AddV2lstm_cell_83/BiasAdd_3:output:0lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚f
lstm_cell_83/Relu_1Relulstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/mul_10Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : ■
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_83_split_readvariableop_resource,lstm_cell_83_split_1_readvariableop_resource$lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3105198*
condR
while_cond_3105197*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0h
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
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    о
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚р
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^lstm_cell_83/ReadVariableOp^lstm_cell_83/ReadVariableOp_1^lstm_cell_83/ReadVariableOp_2^lstm_cell_83/ReadVariableOp_3"^lstm_cell_83/split/ReadVariableOp$^lstm_cell_83/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_83/ReadVariableOplstm_cell_83/ReadVariableOp2>
lstm_cell_83/ReadVariableOp_1lstm_cell_83/ReadVariableOp_12>
lstm_cell_83/ReadVariableOp_2lstm_cell_83/ReadVariableOp_22>
lstm_cell_83/ReadVariableOp_3lstm_cell_83/ReadVariableOp_32F
!lstm_cell_83/split/ReadVariableOp!lstm_cell_83/split/ReadVariableOp2J
#lstm_cell_83/split_1/ReadVariableOp#lstm_cell_83/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
з
А
(sequential_79_lstm_79_while_cond_3101397H
Dsequential_79_lstm_79_while_sequential_79_lstm_79_while_loop_counterN
Jsequential_79_lstm_79_while_sequential_79_lstm_79_while_maximum_iterations+
'sequential_79_lstm_79_while_placeholder-
)sequential_79_lstm_79_while_placeholder_1-
)sequential_79_lstm_79_while_placeholder_2-
)sequential_79_lstm_79_while_placeholder_3J
Fsequential_79_lstm_79_while_less_sequential_79_lstm_79_strided_slice_1a
]sequential_79_lstm_79_while_sequential_79_lstm_79_while_cond_3101397___redundant_placeholder0a
]sequential_79_lstm_79_while_sequential_79_lstm_79_while_cond_3101397___redundant_placeholder1a
]sequential_79_lstm_79_while_sequential_79_lstm_79_while_cond_3101397___redundant_placeholder2a
]sequential_79_lstm_79_while_sequential_79_lstm_79_while_cond_3101397___redundant_placeholder3(
$sequential_79_lstm_79_while_identity
║
 sequential_79/lstm_79/while/LessLess'sequential_79_lstm_79_while_placeholderFsequential_79_lstm_79_while_less_sequential_79_lstm_79_strided_slice_1*
T0*
_output_shapes
: w
$sequential_79/lstm_79/while/IdentityIdentity$sequential_79/lstm_79/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_79_lstm_79_while_identity-sequential_79/lstm_79/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
╛
╚
while_cond_3102242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3102242___redundant_placeholder05
1while_while_cond_3102242___redundant_placeholder15
1while_while_cond_3102242___redundant_placeholder25
1while_while_cond_3102242___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:
╥Н
╢
D__inference_lstm_79_layer_call_and_return_conditional_losses_3104399
inputs_0>
*lstm_cell_83_split_readvariableop_resource:
№а;
,lstm_cell_83_split_1_readvariableop_resource:	а8
$lstm_cell_83_readvariableop_resource:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвlstm_cell_83/ReadVariableOpвlstm_cell_83/ReadVariableOp_1вlstm_cell_83/ReadVariableOp_2вlstm_cell_83/ReadVariableOp_3в!lstm_cell_83/split/ReadVariableOpв#lstm_cell_83/split_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
!:                  №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_maskd
lstm_cell_83/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:a
lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
lstm_cell_83/ones_likeFill%lstm_cell_83/ones_like/Shape:output:0%lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №\
lstm_cell_83/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:c
lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
lstm_cell_83/ones_like_1Fill'lstm_cell_83/ones_like_1/Shape:output:0'lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚Е
lstm_cell_83/mulMulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_1Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_2Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №З
lstm_cell_83/mul_3Mulstrided_slice_2:output:0lstm_cell_83/ones_like:output:0*
T0*(
_output_shapes
:         №^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :О
!lstm_cell_83/split/ReadVariableOpReadVariableOp*lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0═
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0)lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitГ
lstm_cell_83/MatMulMatMullstm_cell_83/mul:z:0lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_1MatMullstm_cell_83/mul_1:z:0lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_2MatMullstm_cell_83/mul_2:z:0lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_3MatMullstm_cell_83/mul_3:z:0lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚`
lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Н
#lstm_cell_83/split_1/ReadVariableOpReadVariableOp,lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0┐
lstm_cell_83/split_1Split'lstm_cell_83/split_1/split_dim:output:0+lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitР
lstm_cell_83/BiasAddBiasAddlstm_cell_83/MatMul:product:0lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_1BiasAddlstm_cell_83/MatMul_1:product:0lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_2BiasAddlstm_cell_83/MatMul_2:product:0lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_3BiasAddlstm_cell_83/MatMul_3:product:0lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_4Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_5Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_6Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚
lstm_cell_83/mul_7Mulzeros:output:0!lstm_cell_83/ones_like_1:output:0*
T0*(
_output_shapes
:         ╚В
lstm_cell_83/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0q
 lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   s
"lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
lstm_cell_83/strided_sliceStridedSlice#lstm_cell_83/ReadVariableOp:value:0)lstm_cell_83/strided_slice/stack:output:0+lstm_cell_83/strided_slice/stack_1:output:0+lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskП
lstm_cell_83/MatMul_4MatMullstm_cell_83/mul_4:z:0#lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/addAddV2lstm_cell_83/BiasAdd:output:0lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚h
lstm_cell_83/SigmoidSigmoidlstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_1ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   u
$lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_1StridedSlice%lstm_cell_83/ReadVariableOp_1:value:0+lstm_cell_83/strided_slice_1/stack:output:0-lstm_cell_83/strided_slice_1/stack_1:output:0-lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_5MatMullstm_cell_83/mul_5:z:0%lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_1AddV2lstm_cell_83/BiasAdd_1:output:0lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚z
lstm_cell_83/mul_8Mullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_2ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_2StridedSlice%lstm_cell_83/ReadVariableOp_2:value:0+lstm_cell_83/strided_slice_2/stack:output:0-lstm_cell_83/strided_slice_2/stack_1:output:0-lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_6MatMullstm_cell_83/mul_6:z:0%lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_2AddV2lstm_cell_83/BiasAdd_2:output:0lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚d
lstm_cell_83/ReluRelulstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/mul_9Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/add_3AddV2lstm_cell_83/mul_8:z:0lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_3ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_3StridedSlice%lstm_cell_83/ReadVariableOp_3:value:0+lstm_cell_83/strided_slice_3/stack:output:0-lstm_cell_83/strided_slice_3/stack_1:output:0-lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_7MatMullstm_cell_83/mul_7:z:0%lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_4AddV2lstm_cell_83/BiasAdd_3:output:0lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚f
lstm_cell_83/Relu_1Relulstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/mul_10Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : ■
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_83_split_readvariableop_resource,lstm_cell_83_split_1_readvariableop_resource$lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3104259*
condR
while_cond_3104258*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╚*
element_dtype0h
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
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    о
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚р
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^lstm_cell_83/ReadVariableOp^lstm_cell_83/ReadVariableOp_1^lstm_cell_83/ReadVariableOp_2^lstm_cell_83/ReadVariableOp_3"^lstm_cell_83/split/ReadVariableOp$^lstm_cell_83/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_83/ReadVariableOplstm_cell_83/ReadVariableOp2>
lstm_cell_83/ReadVariableOp_1lstm_cell_83/ReadVariableOp_12>
lstm_cell_83/ReadVariableOp_2lstm_cell_83/ReadVariableOp_22>
lstm_cell_83/ReadVariableOp_3lstm_cell_83/ReadVariableOp_32F
!lstm_cell_83/split/ReadVariableOp!lstm_cell_83/split/ReadVariableOp2J
#lstm_cell_83/split_1/ReadVariableOp#lstm_cell_83/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  №
"
_user_specified_name
inputs/0
Ъ╓
╢
D__inference_lstm_79_layer_call_and_return_conditional_losses_3104776
inputs_0>
*lstm_cell_83_split_readvariableop_resource:
№а;
,lstm_cell_83_split_1_readvariableop_resource:	а8
$lstm_cell_83_readvariableop_resource:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвlstm_cell_83/ReadVariableOpвlstm_cell_83/ReadVariableOp_1вlstm_cell_83/ReadVariableOp_2вlstm_cell_83/ReadVariableOp_3в!lstm_cell_83/split/ReadVariableOpв#lstm_cell_83/split_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
!:                  №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_maskd
lstm_cell_83/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:a
lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
lstm_cell_83/ones_likeFill%lstm_cell_83/ones_like/Shape:output:0%lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №_
lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ш
lstm_cell_83/dropout/MulMullstm_cell_83/ones_like:output:0#lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №i
lstm_cell_83/dropout/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:з
1lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0h
#lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╬
!lstm_cell_83/dropout/GreaterEqualGreaterEqual:lstm_cell_83/dropout/random_uniform/RandomUniform:output:0,lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №К
lstm_cell_83/dropout/CastCast%lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №С
lstm_cell_83/dropout/Mul_1Mullstm_cell_83/dropout/Mul:z:0lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_1/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_1/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_1/GreaterEqualGreaterEqual<lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_1/CastCast'lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_1/Mul_1Mullstm_cell_83/dropout_1/Mul:z:0lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_2/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_2/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_2/GreaterEqualGreaterEqual<lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_2/CastCast'lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_2/Mul_1Mullstm_cell_83/dropout_2/Mul:z:0lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_3/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_3/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_3/GreaterEqualGreaterEqual<lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_3/CastCast'lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_3/Mul_1Mullstm_cell_83/dropout_3/Mul:z:0lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №\
lstm_cell_83/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:c
lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
lstm_cell_83/ones_like_1Fill'lstm_cell_83/ones_like_1/Shape:output:0'lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_4/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_4/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_4/GreaterEqualGreaterEqual<lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_4/CastCast'lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_4/Mul_1Mullstm_cell_83/dropout_4/Mul:z:0lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_5/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_5/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_5/GreaterEqualGreaterEqual<lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_5/CastCast'lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_5/Mul_1Mullstm_cell_83/dropout_5/Mul:z:0lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_6/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_6/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_6/GreaterEqualGreaterEqual<lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_6/CastCast'lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_6/Mul_1Mullstm_cell_83/dropout_6/Mul:z:0lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_7/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_7/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_7/GreaterEqualGreaterEqual<lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_7/CastCast'lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_7/Mul_1Mullstm_cell_83/dropout_7/Mul:z:0lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/mulMulstrided_slice_2:output:0lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_1Mulstrided_slice_2:output:0 lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_2Mulstrided_slice_2:output:0 lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_3Mulstrided_slice_2:output:0 lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :О
!lstm_cell_83/split/ReadVariableOpReadVariableOp*lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0═
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0)lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitГ
lstm_cell_83/MatMulMatMullstm_cell_83/mul:z:0lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_1MatMullstm_cell_83/mul_1:z:0lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_2MatMullstm_cell_83/mul_2:z:0lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_3MatMullstm_cell_83/mul_3:z:0lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚`
lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Н
#lstm_cell_83/split_1/ReadVariableOpReadVariableOp,lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0┐
lstm_cell_83/split_1Split'lstm_cell_83/split_1/split_dim:output:0+lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitР
lstm_cell_83/BiasAddBiasAddlstm_cell_83/MatMul:product:0lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_1BiasAddlstm_cell_83/MatMul_1:product:0lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_2BiasAddlstm_cell_83/MatMul_2:product:0lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_3BiasAddlstm_cell_83/MatMul_3:product:0lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_4Mulzeros:output:0 lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_5Mulzeros:output:0 lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_6Mulzeros:output:0 lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_7Mulzeros:output:0 lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚В
lstm_cell_83/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0q
 lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   s
"lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
lstm_cell_83/strided_sliceStridedSlice#lstm_cell_83/ReadVariableOp:value:0)lstm_cell_83/strided_slice/stack:output:0+lstm_cell_83/strided_slice/stack_1:output:0+lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskП
lstm_cell_83/MatMul_4MatMullstm_cell_83/mul_4:z:0#lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/addAddV2lstm_cell_83/BiasAdd:output:0lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚h
lstm_cell_83/SigmoidSigmoidlstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_1ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   u
$lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_1StridedSlice%lstm_cell_83/ReadVariableOp_1:value:0+lstm_cell_83/strided_slice_1/stack:output:0-lstm_cell_83/strided_slice_1/stack_1:output:0-lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_5MatMullstm_cell_83/mul_5:z:0%lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_1AddV2lstm_cell_83/BiasAdd_1:output:0lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚z
lstm_cell_83/mul_8Mullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_2ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_2StridedSlice%lstm_cell_83/ReadVariableOp_2:value:0+lstm_cell_83/strided_slice_2/stack:output:0-lstm_cell_83/strided_slice_2/stack_1:output:0-lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_6MatMullstm_cell_83/mul_6:z:0%lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_2AddV2lstm_cell_83/BiasAdd_2:output:0lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚d
lstm_cell_83/ReluRelulstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/mul_9Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/add_3AddV2lstm_cell_83/mul_8:z:0lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_3ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_3StridedSlice%lstm_cell_83/ReadVariableOp_3:value:0+lstm_cell_83/strided_slice_3/stack:output:0-lstm_cell_83/strided_slice_3/stack_1:output:0-lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_7MatMullstm_cell_83/mul_7:z:0%lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_4AddV2lstm_cell_83/BiasAdd_3:output:0lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚f
lstm_cell_83/Relu_1Relulstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/mul_10Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : ■
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_83_split_readvariableop_resource,lstm_cell_83_split_1_readvariableop_resource$lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3104572*
condR
while_cond_3104571*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╚*
element_dtype0h
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
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    о
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚р
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^lstm_cell_83/ReadVariableOp^lstm_cell_83/ReadVariableOp_1^lstm_cell_83/ReadVariableOp_2^lstm_cell_83/ReadVariableOp_3"^lstm_cell_83/split/ReadVariableOp$^lstm_cell_83/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_83/ReadVariableOplstm_cell_83/ReadVariableOp2>
lstm_cell_83/ReadVariableOp_1lstm_cell_83/ReadVariableOp_12>
lstm_cell_83/ReadVariableOp_2lstm_cell_83/ReadVariableOp_22>
lstm_cell_83/ReadVariableOp_3lstm_cell_83/ReadVariableOp_32F
!lstm_cell_83/split/ReadVariableOp!lstm_cell_83/split/ReadVariableOp2J
#lstm_cell_83/split_1/ReadVariableOp#lstm_cell_83/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  №
"
_user_specified_name
inputs/0
╥
ч
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103827

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identity

identity_1ИвStatefulPartitionedCallч
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102383д
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
 *-
config_proto

CPU

GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
═
р
__inference_loss_fn_0_3104150d
Plstm_79_lstm_cell_83_recurrent_kernel_regularizer_square_readvariableop_resource:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp┌
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpPlstm_79_lstm_cell_83_recurrent_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity9lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: Р
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp
Н[
▓
#__inference__traced_restore_3105567
file_prefix3
 assignvariableop_dense_79_kernel:	╚.
 assignvariableop_1_dense_79_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: B
.assignvariableop_7_lstm_79_lstm_cell_83_kernel:
№аL
8assignvariableop_8_lstm_79_lstm_cell_83_recurrent_kernel:
╚а;
,assignvariableop_9_lstm_79_lstm_cell_83_bias:	а#
assignvariableop_10_total: #
assignvariableop_11_count: =
*assignvariableop_12_adam_dense_79_kernel_m:	╚6
(assignvariableop_13_adam_dense_79_bias_m:J
6assignvariableop_14_adam_lstm_79_lstm_cell_83_kernel_m:
№аT
@assignvariableop_15_adam_lstm_79_lstm_cell_83_recurrent_kernel_m:
╚аC
4assignvariableop_16_adam_lstm_79_lstm_cell_83_bias_m:	а=
*assignvariableop_17_adam_dense_79_kernel_v:	╚6
(assignvariableop_18_adam_dense_79_bias_v:J
6assignvariableop_19_adam_lstm_79_lstm_cell_83_kernel_v:
№аT
@assignvariableop_20_adam_lstm_79_lstm_cell_83_recurrent_kernel_v:
╚аC
4assignvariableop_21_adam_lstm_79_lstm_cell_83_bias_v:	а
identity_23ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9и
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╬

value─
B┴
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЮ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_dense_79_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_79_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_79_lstm_cell_83_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_79_lstm_cell_83_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_79_lstm_cell_83_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_79_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_dense_79_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_14AssignVariableOp6assignvariableop_14_adam_lstm_79_lstm_cell_83_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_lstm_79_lstm_cell_83_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_lstm_79_lstm_cell_83_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_79_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_79_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_lstm_79_lstm_cell_83_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_lstm_79_lstm_cell_83_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_79_lstm_cell_83_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 │
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: а
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212(
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
_user_specified_namefile_prefix
х╒
┤
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102839

inputs>
*lstm_cell_83_split_readvariableop_resource:
№а;
,lstm_cell_83_split_1_readvariableop_resource:	а8
$lstm_cell_83_readvariableop_resource:
╚а
identityИвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpвlstm_cell_83/ReadVariableOpвlstm_cell_83/ReadVariableOp_1вlstm_cell_83/ReadVariableOp_2вlstm_cell_83/ReadVariableOp_3в!lstm_cell_83/split/ReadVariableOpв#lstm_cell_83/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
:         №D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
shrink_axis_maskd
lstm_cell_83/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:a
lstm_cell_83/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
lstm_cell_83/ones_likeFill%lstm_cell_83/ones_like/Shape:output:0%lstm_cell_83/ones_like/Const:output:0*
T0*(
_output_shapes
:         №_
lstm_cell_83/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ш
lstm_cell_83/dropout/MulMullstm_cell_83/ones_like:output:0#lstm_cell_83/dropout/Const:output:0*
T0*(
_output_shapes
:         №i
lstm_cell_83/dropout/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:з
1lstm_cell_83/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_83/dropout/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0h
#lstm_cell_83/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╬
!lstm_cell_83/dropout/GreaterEqualGreaterEqual:lstm_cell_83/dropout/random_uniform/RandomUniform:output:0,lstm_cell_83/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №К
lstm_cell_83/dropout/CastCast%lstm_cell_83/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №С
lstm_cell_83/dropout/Mul_1Mullstm_cell_83/dropout/Mul:z:0lstm_cell_83/dropout/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_1/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_1/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_1/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_1/GreaterEqualGreaterEqual<lstm_cell_83/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_1/CastCast'lstm_cell_83/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_1/Mul_1Mullstm_cell_83/dropout_1/Mul:z:0lstm_cell_83/dropout_1/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_2/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_2/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_2/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_2/GreaterEqualGreaterEqual<lstm_cell_83/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_2/CastCast'lstm_cell_83/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_2/Mul_1Mullstm_cell_83/dropout_2/Mul:z:0lstm_cell_83/dropout_2/Cast:y:0*
T0*(
_output_shapes
:         №a
lstm_cell_83/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Oь─?Ь
lstm_cell_83/dropout_3/MulMullstm_cell_83/ones_like:output:0%lstm_cell_83/dropout_3/Const:output:0*
T0*(
_output_shapes
:         №k
lstm_cell_83/dropout_3/ShapeShapelstm_cell_83/ones_like:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         №*
dtype0j
%lstm_cell_83/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *33│>╘
#lstm_cell_83/dropout_3/GreaterEqualGreaterEqual<lstm_cell_83/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         №О
lstm_cell_83/dropout_3/CastCast'lstm_cell_83/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         №Ч
lstm_cell_83/dropout_3/Mul_1Mullstm_cell_83/dropout_3/Mul:z:0lstm_cell_83/dropout_3/Cast:y:0*
T0*(
_output_shapes
:         №\
lstm_cell_83/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:c
lstm_cell_83/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?е
lstm_cell_83/ones_like_1Fill'lstm_cell_83/ones_like_1/Shape:output:0'lstm_cell_83/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_4/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_4/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_4/GreaterEqualGreaterEqual<lstm_cell_83/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_4/CastCast'lstm_cell_83/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_4/Mul_1Mullstm_cell_83/dropout_4/Mul:z:0lstm_cell_83/dropout_4/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_5/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_5/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_5/GreaterEqualGreaterEqual<lstm_cell_83/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_5/CastCast'lstm_cell_83/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_5/Mul_1Mullstm_cell_83/dropout_5/Mul:z:0lstm_cell_83/dropout_5/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_6/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_6/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_6/GreaterEqualGreaterEqual<lstm_cell_83/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_6/CastCast'lstm_cell_83/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_6/Mul_1Mullstm_cell_83/dropout_6/Mul:z:0lstm_cell_83/dropout_6/Cast:y:0*
T0*(
_output_shapes
:         ╚a
lstm_cell_83/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ю
lstm_cell_83/dropout_7/MulMul!lstm_cell_83/ones_like_1:output:0%lstm_cell_83/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ╚m
lstm_cell_83/dropout_7/ShapeShape!lstm_cell_83/ones_like_1:output:0*
T0*
_output_shapes
:л
3lstm_cell_83/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_83/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ╚*
dtype0j
%lstm_cell_83/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╘
#lstm_cell_83/dropout_7/GreaterEqualGreaterEqual<lstm_cell_83/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_83/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ╚О
lstm_cell_83/dropout_7/CastCast'lstm_cell_83/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ╚Ч
lstm_cell_83/dropout_7/Mul_1Mullstm_cell_83/dropout_7/Mul:z:0lstm_cell_83/dropout_7/Cast:y:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/mulMulstrided_slice_2:output:0lstm_cell_83/dropout/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_1Mulstrided_slice_2:output:0 lstm_cell_83/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_2Mulstrided_slice_2:output:0 lstm_cell_83/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:         №И
lstm_cell_83/mul_3Mulstrided_slice_2:output:0 lstm_cell_83/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:         №^
lstm_cell_83/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :О
!lstm_cell_83/split/ReadVariableOpReadVariableOp*lstm_cell_83_split_readvariableop_resource* 
_output_shapes
:
№а*
dtype0═
lstm_cell_83/splitSplit%lstm_cell_83/split/split_dim:output:0)lstm_cell_83/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
№╚:
№╚:
№╚:
№╚*
	num_splitГ
lstm_cell_83/MatMulMatMullstm_cell_83/mul:z:0lstm_cell_83/split:output:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_1MatMullstm_cell_83/mul_1:z:0lstm_cell_83/split:output:1*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_2MatMullstm_cell_83/mul_2:z:0lstm_cell_83/split:output:2*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/MatMul_3MatMullstm_cell_83/mul_3:z:0lstm_cell_83/split:output:3*
T0*(
_output_shapes
:         ╚`
lstm_cell_83/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Н
#lstm_cell_83/split_1/ReadVariableOpReadVariableOp,lstm_cell_83_split_1_readvariableop_resource*
_output_shapes	
:а*
dtype0┐
lstm_cell_83/split_1Split'lstm_cell_83/split_1/split_dim:output:0+lstm_cell_83/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:╚:╚:╚:╚*
	num_splitР
lstm_cell_83/BiasAddBiasAddlstm_cell_83/MatMul:product:0lstm_cell_83/split_1:output:0*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_1BiasAddlstm_cell_83/MatMul_1:product:0lstm_cell_83/split_1:output:1*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_2BiasAddlstm_cell_83/MatMul_2:product:0lstm_cell_83/split_1:output:2*
T0*(
_output_shapes
:         ╚Ф
lstm_cell_83/BiasAdd_3BiasAddlstm_cell_83/MatMul_3:product:0lstm_cell_83/split_1:output:3*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_4Mulzeros:output:0 lstm_cell_83/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_5Mulzeros:output:0 lstm_cell_83/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_6Mulzeros:output:0 lstm_cell_83/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/mul_7Mulzeros:output:0 lstm_cell_83/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:         ╚В
lstm_cell_83/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0q
 lstm_cell_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ╚   s
"lstm_cell_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
lstm_cell_83/strided_sliceStridedSlice#lstm_cell_83/ReadVariableOp:value:0)lstm_cell_83/strided_slice/stack:output:0+lstm_cell_83/strided_slice/stack_1:output:0+lstm_cell_83/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskП
lstm_cell_83/MatMul_4MatMullstm_cell_83/mul_4:z:0#lstm_cell_83/strided_slice:output:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/addAddV2lstm_cell_83/BiasAdd:output:0lstm_cell_83/MatMul_4:product:0*
T0*(
_output_shapes
:         ╚h
lstm_cell_83/SigmoidSigmoidlstm_cell_83/add:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_1ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ╚   u
$lstm_cell_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_1StridedSlice%lstm_cell_83/ReadVariableOp_1:value:0+lstm_cell_83/strided_slice_1/stack:output:0-lstm_cell_83/strided_slice_1/stack_1:output:0-lstm_cell_83/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_5MatMullstm_cell_83/mul_5:z:0%lstm_cell_83/strided_slice_1:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_1AddV2lstm_cell_83/BiasAdd_1:output:0lstm_cell_83/MatMul_5:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_1Sigmoidlstm_cell_83/add_1:z:0*
T0*(
_output_shapes
:         ╚z
lstm_cell_83/mul_8Mullstm_cell_83/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_2ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р  u
$lstm_cell_83/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_2StridedSlice%lstm_cell_83/ReadVariableOp_2:value:0+lstm_cell_83/strided_slice_2/stack:output:0-lstm_cell_83/strided_slice_2/stack_1:output:0-lstm_cell_83/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_6MatMullstm_cell_83/mul_6:z:0%lstm_cell_83/strided_slice_2:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_2AddV2lstm_cell_83/BiasAdd_2:output:0lstm_cell_83/MatMul_6:product:0*
T0*(
_output_shapes
:         ╚d
lstm_cell_83/ReluRelulstm_cell_83/add_2:z:0*
T0*(
_output_shapes
:         ╚З
lstm_cell_83/mul_9Mullstm_cell_83/Sigmoid:y:0lstm_cell_83/Relu:activations:0*
T0*(
_output_shapes
:         ╚~
lstm_cell_83/add_3AddV2lstm_cell_83/mul_8:z:0lstm_cell_83/mul_9:z:0*
T0*(
_output_shapes
:         ╚Д
lstm_cell_83/ReadVariableOp_3ReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0s
"lstm_cell_83/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  u
$lstm_cell_83/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_83/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╕
lstm_cell_83/strided_slice_3StridedSlice%lstm_cell_83/ReadVariableOp_3:value:0+lstm_cell_83/strided_slice_3/stack:output:0-lstm_cell_83/strided_slice_3/stack_1:output:0-lstm_cell_83/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
╚╚*

begin_mask*
end_maskС
lstm_cell_83/MatMul_7MatMullstm_cell_83/mul_7:z:0%lstm_cell_83/strided_slice_3:output:0*
T0*(
_output_shapes
:         ╚Р
lstm_cell_83/add_4AddV2lstm_cell_83/BiasAdd_3:output:0lstm_cell_83/MatMul_7:product:0*
T0*(
_output_shapes
:         ╚l
lstm_cell_83/Sigmoid_2Sigmoidlstm_cell_83/add_4:z:0*
T0*(
_output_shapes
:         ╚f
lstm_cell_83/Relu_1Relulstm_cell_83/add_3:z:0*
T0*(
_output_shapes
:         ╚М
lstm_cell_83/mul_10Mullstm_cell_83/Sigmoid_2:y:0!lstm_cell_83/Relu_1:activations:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
value	B : ■
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_83_split_readvariableop_resource,lstm_cell_83_split_1_readvariableop_resource$lstm_cell_83_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ╚:         ╚: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3102635*
condR
while_cond_3102634*M
output_shapes<
:: : : : :         ╚:         ╚: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0h
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
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    о
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp$lstm_cell_83_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ╚р
NoOpNoOpH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp^lstm_cell_83/ReadVariableOp^lstm_cell_83/ReadVariableOp_1^lstm_cell_83/ReadVariableOp_2^lstm_cell_83/ReadVariableOp_3"^lstm_cell_83/split/ReadVariableOp$^lstm_cell_83/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         №: : : 2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_83/ReadVariableOplstm_cell_83/ReadVariableOp2>
lstm_cell_83/ReadVariableOp_1lstm_cell_83/ReadVariableOp_12>
lstm_cell_83/ReadVariableOp_2lstm_cell_83/ReadVariableOp_22>
lstm_cell_83/ReadVariableOp_3lstm_cell_83/ReadVariableOp_32F
!lstm_cell_83/split/ReadVariableOp!lstm_cell_83/split/ReadVariableOp2J
#lstm_cell_83/split_1/ReadVariableOp#lstm_cell_83/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         №
 
_user_specified_nameinputs
ъ
щ
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103814
inputs_0
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identity

identity_1ИвStatefulPartitionedCallщ
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102094д
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
 *-
config_proto

CPU

GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  №: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  №
"
_user_specified_name
inputs/0
√
∙
.__inference_lstm_cell_83_layer_call_fn_3103882

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

identity_2ИвStatefulPartitionedCallм
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
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3101686p
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
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
states/0:RN
(
_output_shapes
:         ╚
"
_user_specified_name
states/1
└%
╛
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102982
lstm_79_input#
lstm_79_3102954:
№а
lstm_79_3102956:	а#
lstm_79_3102958:
╚а#
dense_79_3102969:	╚
dense_79_3102971:
identity

identity_1Ив dense_79/StatefulPartitionedCallвlstm_79/StatefulPartitionedCallвGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpК
lstm_79/StatefulPartitionedCallStatefulPartitionedCalllstm_79_inputlstm_79_3102954lstm_79_3102956lstm_79_3102958*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102383╚
+lstm_79/ActivityRegularizer/PartitionedCallPartitionedCall(lstm_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
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
GPU 2J 8В *9
f4R2
0__inference_lstm_79_activity_regularizer_3101563y
!lstm_79/ActivityRegularizer/ShapeShape(lstm_79/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/lstm_79/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1lstm_79/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1lstm_79/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▌
)lstm_79/ActivityRegularizer/strided_sliceStridedSlice*lstm_79/ActivityRegularizer/Shape:output:08lstm_79/ActivityRegularizer/strided_slice/stack:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_1:output:0:lstm_79/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 lstm_79/ActivityRegularizer/CastCast2lstm_79/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: л
#lstm_79/ActivityRegularizer/truedivRealDiv4lstm_79/ActivityRegularizer/PartitionedCall:output:0$lstm_79/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Х
 dense_79/StatefulPartitionedCallStatefulPartitionedCall(lstm_79/StatefulPartitionedCall:output:0dense_79_3102969dense_79_3102971*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_79_layer_call_and_return_conditional_losses_3102409Щ
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_79_3102958* 
_output_shapes
:
╚а*
dtype0╛
8lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SquareSquareOlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аИ
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/SumSum<lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square:y:0@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▀
5lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mulMul@lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/mul/x:output:0>lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         g

Identity_1Identity'lstm_79/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ╒
NoOpNoOp!^dense_79/StatefulPartitionedCall ^lstm_79/StatefulPartitionedCallH^lstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         №: : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2B
lstm_79/StatefulPartitionedCalllstm_79/StatefulPartitionedCall2Т
Glstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOpGlstm_79/lstm_cell_83/recurrent_kernel/Regularizer/Square/ReadVariableOp:[ W
,
_output_shapes
:         №
'
_user_specified_namelstm_79_input
 
╕
)__inference_lstm_79_layer_call_fn_3103777

inputs
unknown:
№а
	unknown_0:	а
	unknown_1:
╚а
identityИвStatefulPartitionedCallч
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
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_79_layer_call_and_return_conditional_losses_3102383p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
 
_user_specified_nameinputs
╛
╚
while_cond_3105197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3105197___redundant_placeholder05
1while_while_cond_3105197___redundant_placeholder15
1while_while_cond_3105197___redundant_placeholder25
1while_while_cond_3105197___redundant_placeholder3
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
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :
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
:         ╚:

_output_shapes
: :

_output_shapes
:"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultи
L
lstm_79_input;
serving_default_lstm_79_input:0         №<
dense_790
StatefulPartitionedCall:0         tensorflow/serving/predict:Ъu
┤
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
┌
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
н
iter

beta_1

beta_2
	 decay
!learning_ratemKmL"mM#mN$mOvPvQ"vR#vS$vT"
	optimizer
C
"0
#1
$2
3
4"
trackable_list_wrapper
C
"0
#1
$2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
К2З
/__inference_sequential_79_layer_call_fn_3102437
/__inference_sequential_79_layer_call_fn_3103041
/__inference_sequential_79_layer_call_fn_3103057
/__inference_sequential_79_layer_call_fn_3102951└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ў2є
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103325
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103721
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102982
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103013└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╙B╨
"__inference__wrapped_model_3101550lstm_79_input"Ш
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
,
*serving_default"
signature_map
°
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
'
30"
trackable_list_wrapper
╓

4states
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
:activity_regularizer_fn
*&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
З2Д
)__inference_lstm_79_layer_call_fn_3103755
)__inference_lstm_79_layer_call_fn_3103766
)__inference_lstm_79_layer_call_fn_3103777
)__inference_lstm_79_layer_call_fn_3103788╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Г2А
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103801
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103814
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103827
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103840╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
": 	╚2dense_79/kernel
:2dense_79/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_dense_79_layer_call_fn_3103849в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
я2ь
E__inference_dense_79_layer_call_and_return_conditional_losses_3103859в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
/:-
№а2lstm_79/lstm_cell_83/kernel
9:7
╚а2%lstm_79/lstm_cell_83/recurrent_kernel
(:&а2lstm_79/lstm_cell_83/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
%__inference_signature_wrapper_3103738lstm_79_input"Ф
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
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
'
30"
trackable_list_wrapper
н
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
д2б
.__inference_lstm_cell_83_layer_call_fn_3103882
.__inference_lstm_cell_83_layer_call_fn_3103899╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
┌2╫
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3103987
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3104139╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
┤2▒
__inference_loss_fn_0_3104150П
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
с2▐
0__inference_lstm_79_activity_regularizer_3101563й
Ф▓Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в
	К
є2Ё
D__inference_lstm_79_layer_call_and_return_conditional_losses_3104399
D__inference_lstm_79_layer_call_and_return_conditional_losses_3104776
D__inference_lstm_79_layer_call_and_return_conditional_losses_3105025
D__inference_lstm_79_layer_call_and_return_conditional_losses_3105402╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
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
N
	Gtotal
	Hcount
I	variables
J	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
30"
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
G0
H1"
trackable_list_wrapper
-
I	variables"
_generic_user_object
':%	╚2Adam/dense_79/kernel/m
 :2Adam/dense_79/bias/m
4:2
№а2"Adam/lstm_79/lstm_cell_83/kernel/m
>:<
╚а2,Adam/lstm_79/lstm_cell_83/recurrent_kernel/m
-:+а2 Adam/lstm_79/lstm_cell_83/bias/m
':%	╚2Adam/dense_79/kernel/v
 :2Adam/dense_79/bias/v
4:2
№а2"Adam/lstm_79/lstm_cell_83/kernel/v
>:<
╚а2,Adam/lstm_79/lstm_cell_83/recurrent_kernel/v
-:+а2 Adam/lstm_79/lstm_cell_83/bias/vЯ
"__inference__wrapped_model_3101550y"$#;в8
1в.
,К)
lstm_79_input         №
к "3к0
.
dense_79"К
dense_79         ж
E__inference_dense_79_layer_call_and_return_conditional_losses_3103859]0в-
&в#
!К
inputs         ╚
к "%в"
К
0         
Ъ ~
*__inference_dense_79_layer_call_fn_3103849P0в-
&в#
!К
inputs         ╚
к "К         <
__inference_loss_fn_0_3104150#в

в 
к "К Z
0__inference_lstm_79_activity_regularizer_3101563&в
в
К	
x
к "К ┌
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103801Н"$#PвM
FвC
5Ъ2
0К-
inputs/0                  №

 
p 

 
к "4в1
К
0         ╚
Ъ
К	
1/0 ┌
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103814Н"$#PвM
FвC
5Ъ2
0К-
inputs/0                  №

 
p

 
к "4в1
К
0         ╚
Ъ
К	
1/0 ╔
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103827}"$#@в=
6в3
%К"
inputs         №

 
p 

 
к "4в1
К
0         ╚
Ъ
К	
1/0 ╔
H__inference_lstm_79_layer_call_and_return_all_conditional_losses_3103840}"$#@в=
6в3
%К"
inputs         №

 
p

 
к "4в1
К
0         ╚
Ъ
К	
1/0 ╟
D__inference_lstm_79_layer_call_and_return_conditional_losses_3104399"$#PвM
FвC
5Ъ2
0К-
inputs/0                  №

 
p 

 
к "&в#
К
0         ╚
Ъ ╟
D__inference_lstm_79_layer_call_and_return_conditional_losses_3104776"$#PвM
FвC
5Ъ2
0К-
inputs/0                  №

 
p

 
к "&в#
К
0         ╚
Ъ ╖
D__inference_lstm_79_layer_call_and_return_conditional_losses_3105025o"$#@в=
6в3
%К"
inputs         №

 
p 

 
к "&в#
К
0         ╚
Ъ ╖
D__inference_lstm_79_layer_call_and_return_conditional_losses_3105402o"$#@в=
6в3
%К"
inputs         №

 
p

 
к "&в#
К
0         ╚
Ъ Я
)__inference_lstm_79_layer_call_fn_3103755r"$#PвM
FвC
5Ъ2
0К-
inputs/0                  №

 
p 

 
к "К         ╚Я
)__inference_lstm_79_layer_call_fn_3103766r"$#PвM
FвC
5Ъ2
0К-
inputs/0                  №

 
p

 
к "К         ╚П
)__inference_lstm_79_layer_call_fn_3103777b"$#@в=
6в3
%К"
inputs         №

 
p 

 
к "К         ╚П
)__inference_lstm_79_layer_call_fn_3103788b"$#@в=
6в3
%К"
inputs         №

 
p

 
к "К         ╚╥
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3103987Д"$#ДвА
yвv
!К
inputs         №
MвJ
#К 
states/0         ╚
#К 
states/1         ╚
p 
к "vвs
lвi
К
0/0         ╚
GЪD
 К
0/1/0         ╚
 К
0/1/1         ╚
Ъ ╥
I__inference_lstm_cell_83_layer_call_and_return_conditional_losses_3104139Д"$#ДвА
yвv
!К
inputs         №
MвJ
#К 
states/0         ╚
#К 
states/1         ╚
p
к "vвs
lвi
К
0/0         ╚
GЪD
 К
0/1/0         ╚
 К
0/1/1         ╚
Ъ з
.__inference_lstm_cell_83_layer_call_fn_3103882Ї"$#ДвА
yвv
!К
inputs         №
MвJ
#К 
states/0         ╚
#К 
states/1         ╚
p 
к "fвc
К
0         ╚
CЪ@
К
1/0         ╚
К
1/1         ╚з
.__inference_lstm_cell_83_layer_call_fn_3103899Ї"$#ДвА
yвv
!К
inputs         №
MвJ
#К 
states/0         ╚
#К 
states/1         ╚
p
к "fвc
К
0         ╚
CЪ@
К
1/0         ╚
К
1/1         ╚╨
J__inference_sequential_79_layer_call_and_return_conditional_losses_3102982Б"$#Cв@
9в6
,К)
lstm_79_input         №
p 

 
к "3в0
К
0         
Ъ
К	
1/0 ╨
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103013Б"$#Cв@
9в6
,К)
lstm_79_input         №
p

 
к "3в0
К
0         
Ъ
К	
1/0 ╚
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103325z"$#<в9
2в/
%К"
inputs         №
p 

 
к "3в0
К
0         
Ъ
К	
1/0 ╚
J__inference_sequential_79_layer_call_and_return_conditional_losses_3103721z"$#<в9
2в/
%К"
inputs         №
p

 
к "3в0
К
0         
Ъ
К	
1/0 Щ
/__inference_sequential_79_layer_call_fn_3102437f"$#Cв@
9в6
,К)
lstm_79_input         №
p 

 
к "К         Щ
/__inference_sequential_79_layer_call_fn_3102951f"$#Cв@
9в6
,К)
lstm_79_input         №
p

 
к "К         Т
/__inference_sequential_79_layer_call_fn_3103041_"$#<в9
2в/
%К"
inputs         №
p 

 
к "К         Т
/__inference_sequential_79_layer_call_fn_3103057_"$#<в9
2в/
%К"
inputs         №
p

 
к "К         ┤
%__inference_signature_wrapper_3103738К"$#LвI
в 
Bк?
=
lstm_79_input,К)
lstm_79_input         №"3к0
.
dense_79"К
dense_79         