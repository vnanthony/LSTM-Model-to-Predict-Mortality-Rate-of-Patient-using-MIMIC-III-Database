┼╚
╗Л
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
h
Any	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
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
resourceИ
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
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
dtypetypeИ
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
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
И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48╨ї
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
┐
RMSprop/velocity/output/biasVarHandleOp*
_output_shapes
: *-

debug_nameRMSprop/velocity/output/bias/*
dtype0*
shape:*-
shared_nameRMSprop/velocity/output/bias
Й
0RMSprop/velocity/output/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/output/bias*
_output_shapes
:*
dtype0
╔
RMSprop/velocity/output/kernelVarHandleOp*
_output_shapes
: */

debug_name!RMSprop/velocity/output/kernel/*
dtype0*
shape
:*/
shared_name RMSprop/velocity/output/kernel
С
2RMSprop/velocity/output/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/output/kernel*
_output_shapes

:*
dtype0
┌
%RMSprop/velocity/lstm1/lstm_cell/biasVarHandleOp*
_output_shapes
: *6

debug_name(&RMSprop/velocity/lstm1/lstm_cell/bias/*
dtype0*
shape:@*6
shared_name'%RMSprop/velocity/lstm1/lstm_cell/bias
Ы
9RMSprop/velocity/lstm1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp%RMSprop/velocity/lstm1/lstm_cell/bias*
_output_shapes
:@*
dtype0
В
1RMSprop/velocity/lstm1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *B

debug_name42RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel/*
dtype0*
shape
:@*B
shared_name31RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel
╖
ERMSprop/velocity/lstm1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp1RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel*
_output_shapes

:@*
dtype0
ф
'RMSprop/velocity/lstm1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *8

debug_name*(RMSprop/velocity/lstm1/lstm_cell/kernel/*
dtype0*
shape
:=@*8
shared_name)'RMSprop/velocity/lstm1/lstm_cell/kernel
г
;RMSprop/velocity/lstm1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp'RMSprop/velocity/lstm1/lstm_cell/kernel*
_output_shapes

:=@*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
М
output/biasVarHandleOp*
_output_shapes
: *

debug_nameoutput/bias/*
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
Ц
output/kernelVarHandleOp*
_output_shapes
: *

debug_nameoutput/kernel/*
dtype0*
shape
:*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:*
dtype0
з
lstm1/lstm_cell/biasVarHandleOp*
_output_shapes
: *%

debug_namelstm1/lstm_cell/bias/*
dtype0*
shape:@*%
shared_namelstm1/lstm_cell/bias
y
(lstm1/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm1/lstm_cell/bias*
_output_shapes
:@*
dtype0
╧
 lstm1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *1

debug_name#!lstm1/lstm_cell/recurrent_kernel/*
dtype0*
shape
:@*1
shared_name" lstm1/lstm_cell/recurrent_kernel
Х
4lstm1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp lstm1/lstm_cell/recurrent_kernel*
_output_shapes

:@*
dtype0
▒
lstm1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *'

debug_namelstm1/lstm_cell/kernel/*
dtype0*
shape
:=@*'
shared_namelstm1/lstm_cell/kernel
Б
*lstm1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm1/lstm_cell/kernel*
_output_shapes

:=@*
dtype0
Т
serving_default_inputPlaceholder*4
_output_shapes"
 :                  =*
dtype0*)
shape :                  =
│
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputlstm1/lstm_cell/kernellstm1/lstm_cell/bias lstm1/lstm_cell/recurrent_kerneloutput/kerneloutput/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_100616

NoOpNoOp
╞,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Б,
valueў+BЇ+ Bэ+
┤
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
Ы
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
	#layer*
'
$0
%1
&2
'3
(4*
'
$0
%1
&2
'3
(4*
* 
░
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

.trace_0
/trace_1* 

0trace_0
1trace_1* 
* 
Щ
2
_variables
3_iterations
4_learning_rate
5_index_dict
6_velocities
7
_momentums
8_average_gradients
9_update_step_xla*

:serving_default* 
* 
* 
* 
С
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

@trace_0* 

Atrace_0* 

$0
%1
&2*

$0
%1
&2*
* 
Я

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
* 
у
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

$kernel
%recurrent_kernel
&bias*
* 

'0
(1*

'0
(1*
* 
У
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

]trace_0
^trace_1* 

_trace_0
`trace_1* 
ж
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

'kernel
(bias*
VP
VARIABLE_VALUElstm1/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE lstm1/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUElstm1/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEoutput/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEoutput/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

g0*
* 
* 
* 
* 
* 
* 
.
30
h1
i2
j3
k4
l5*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
h0
i1
j2
k3
l4*
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

0*
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
$0
%1
&2*

$0
%1
&2*
* 
У
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

rtrace_0
strace_1* 

ttrace_0
utrace_1* 
* 
* 
* 

#0*
* 
* 
* 
* 
* 
* 
* 

'0
(1*

'0
(1*
* 
У
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
9
}	variables
~	keras_api
	total

Аcount*
rl
VARIABLE_VALUE'RMSprop/velocity/lstm1/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE1RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%RMSprop/velocity/lstm1/lstm_cell/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUERMSprop/velocity/output/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUERMSprop/velocity/output/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 

0
А1*

}	variables*
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
■
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelstm1/lstm_cell/kernel lstm1/lstm_cell/recurrent_kernellstm1/lstm_cell/biasoutput/kerneloutput/bias	iterationlearning_rate'RMSprop/velocity/lstm1/lstm_cell/kernel1RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel%RMSprop/velocity/lstm1/lstm_cell/biasRMSprop/velocity/output/kernelRMSprop/velocity/output/biastotalcountConst*
Tin
2*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_102314
∙
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelstm1/lstm_cell/kernel lstm1/lstm_cell/recurrent_kernellstm1/lstm_cell/biasoutput/kerneloutput/bias	iterationlearning_rate'RMSprop/velocity/lstm1/lstm_cell/kernel1RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel%RMSprop/velocity/lstm1/lstm_cell/biasRMSprop/velocity/output/kernelRMSprop/velocity/output/biastotalcount*
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_102365ХШ
дz
╟
A__inference_lstm1_layer_call_and_return_conditional_losses_100525

inputs9
'lstm_cell_split_readvariableop_resource:=@7
)lstm_cell_split_1_readvariableop_resource:@3
!lstm_cell_readvariableop_resource:@
identityИвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:         =c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:         y
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes

:=@*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes
:@*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         s
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         z
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
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
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         В
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         ]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         _
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : ╥
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_100395*
condR
while_cond_100394*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  р
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :                  =
 
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
г8
Ё
@__inference_lstm1_layer_call_and_return_conditional_losses_99760

inputs!
lstm_cell_99678:=@
lstm_cell_99680:@!
lstm_cell_99682:@
identityИв!lstm_cell/StatefulPartitionedCallвwhileI
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskт
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_99678lstm_cell_99680lstm_cell_99682*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99677n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_99678lstm_cell_99680lstm_cell_99682*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_99691*
condR
while_cond_99690*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  =
 
_user_specified_nameinputs:%!

_user_specified_name99678:%!

_user_specified_name99680:%!

_user_specified_name99682
К	
d
H__inference_input_masked_layer_call_and_return_conditional_losses_100632

inputs
identityO

NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    p
NotEqualNotEqualinputsNotEqual/y:output:0*
T0*4
_output_shapes"
 :                  =`
Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         
AnyAnyNotEqual:z:0Any/reduction_indices:output:0*4
_output_shapes"
 :                  *
	keep_dims(h
CastCastAny:output:0*

DstT0*

SrcT0
*4
_output_shapes"
 :                  [
mulMulinputsCast:y:0*
T0*4
_output_shapes"
 :                  ={
SqueezeSqueezeAny:output:0*
T0
*0
_output_shapes
:                  *
squeeze_dims

         \
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :                  ="
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  =:\ X
4
_output_shapes"
 :                  =
 
_user_specified_nameinputs
╪
I
-__inference_input_masked_layer_call_fn_100621

inputs
identity┐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  =* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_input_masked_layer_call_and_return_conditional_losses_99907m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  ="
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  =:\ X
4
_output_shapes"
 :                  =
 
_user_specified_nameinputs
╠
└
A__inference_output_layer_call_and_return_conditional_losses_99867

inputs
dense_9_99857:
dense_9_99859:
identityИвdense_9/StatefulPartitionedCallI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         є
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_99857dense_9_99859*
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
GPU 2J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_99836\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  D
NoOpNoOp ^dense_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:%!

_user_specified_name99857:%!

_user_specified_name99859
Ыo
·
while_body_101742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0A
/while_lstm_cell_split_readvariableop_resource_0:=@?
1while_lstm_cell_split_1_readvariableop_resource_0:@;
)while_lstm_cell_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor?
-while_lstm_cell_split_readvariableop_resource:=@=
/while_lstm_cell_split_1_readvariableop_resource:@9
'while_lstm_cell_readvariableop_resource:@Ивwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:         =n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:         Э
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes

:=@*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes
:@*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_4Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_5Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_6Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_7Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         И
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
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
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         Ф
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         В
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         Е
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ж
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         К
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         В

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
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2@
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC
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
ь╥
Я
 __inference__wrapped_model_99314	
inputG
5model_9_lstm1_lstm_cell_split_readvariableop_resource:=@E
7model_9_lstm1_lstm_cell_split_1_readvariableop_resource:@A
/model_9_lstm1_lstm_cell_readvariableop_resource:@G
5model_9_output_dense_9_matmul_readvariableop_resource:D
6model_9_output_dense_9_biasadd_readvariableop_resource:
identityИв&model_9/lstm1/lstm_cell/ReadVariableOpв(model_9/lstm1/lstm_cell/ReadVariableOp_1в(model_9/lstm1/lstm_cell/ReadVariableOp_2в(model_9/lstm1/lstm_cell/ReadVariableOp_3в,model_9/lstm1/lstm_cell/split/ReadVariableOpв.model_9/lstm1/lstm_cell/split_1/ReadVariableOpвmodel_9/lstm1/whileв-model_9/output/dense_9/BiasAdd/ReadVariableOpв,model_9/output/dense_9/MatMul/ReadVariableOpd
model_9/input_masked/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
model_9/input_masked/NotEqualNotEqualinput(model_9/input_masked/NotEqual/y:output:0*
T0*4
_output_shapes"
 :                  =u
*model_9/input_masked/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         ╛
model_9/input_masked/AnyAny!model_9/input_masked/NotEqual:z:03model_9/input_masked/Any/reduction_indices:output:0*4
_output_shapes"
 :                  *
	keep_dims(Т
model_9/input_masked/CastCast!model_9/input_masked/Any:output:0*

DstT0*

SrcT0
*4
_output_shapes"
 :                  Д
model_9/input_masked/mulMulinputmodel_9/input_masked/Cast:y:0*
T0*4
_output_shapes"
 :                  =е
model_9/input_masked/SqueezeSqueeze!model_9/input_masked/Any:output:0*
T0
*0
_output_shapes
:                  *
squeeze_dims

         m
model_9/lstm1/ShapeShapemodel_9/input_masked/mul:z:0*
T0*
_output_shapes
::э╧k
!model_9/lstm1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_9/lstm1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_9/lstm1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
model_9/lstm1/strided_sliceStridedSlicemodel_9/lstm1/Shape:output:0*model_9/lstm1/strided_slice/stack:output:0,model_9/lstm1/strided_slice/stack_1:output:0,model_9/lstm1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
model_9/lstm1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Э
model_9/lstm1/zeros/packedPack$model_9/lstm1/strided_slice:output:0%model_9/lstm1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
model_9/lstm1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
model_9/lstm1/zerosFill#model_9/lstm1/zeros/packed:output:0"model_9/lstm1/zeros/Const:output:0*
T0*'
_output_shapes
:         `
model_9/lstm1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :б
model_9/lstm1/zeros_1/packedPack$model_9/lstm1/strided_slice:output:0'model_9/lstm1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
model_9/lstm1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
model_9/lstm1/zeros_1Fill%model_9/lstm1/zeros_1/packed:output:0$model_9/lstm1/zeros_1/Const:output:0*
T0*'
_output_shapes
:         q
model_9/lstm1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
model_9/lstm1/transpose	Transposemodel_9/input_masked/mul:z:0%model_9/lstm1/transpose/perm:output:0*
T0*4
_output_shapes"
 :                  =n
model_9/lstm1/Shape_1Shapemodel_9/lstm1/transpose:y:0*
T0*
_output_shapes
::э╧m
#model_9/lstm1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_9/lstm1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_9/lstm1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
model_9/lstm1/strided_slice_1StridedSlicemodel_9/lstm1/Shape_1:output:0,model_9/lstm1/strided_slice_1/stack:output:0.model_9/lstm1/strided_slice_1/stack_1:output:0.model_9/lstm1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
model_9/lstm1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         │
model_9/lstm1/ExpandDims
ExpandDims%model_9/input_masked/Squeeze:output:0%model_9/lstm1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :                  s
model_9/lstm1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
model_9/lstm1/transpose_1	Transpose!model_9/lstm1/ExpandDims:output:0'model_9/lstm1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :                  t
)model_9/lstm1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▐
model_9/lstm1/TensorArrayV2TensorListReserve2model_9/lstm1/TensorArrayV2/element_shape:output:0&model_9/lstm1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ф
Cmodel_9/lstm1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   К
5model_9/lstm1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_9/lstm1/transpose:y:0Lmodel_9/lstm1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥m
#model_9/lstm1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_9/lstm1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_9/lstm1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
model_9/lstm1/strided_slice_2StridedSlicemodel_9/lstm1/transpose:y:0,model_9/lstm1/strided_slice_2/stack:output:0.model_9/lstm1/strided_slice_2/stack_1:output:0.model_9/lstm1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskЗ
!model_9/lstm1/lstm_cell/ones_likeOnesLike&model_9/lstm1/strided_slice_2:output:0*
T0*'
_output_shapes
:         =
#model_9/lstm1/lstm_cell/ones_like_1OnesLikemodel_9/lstm1/zeros:output:0*
T0*'
_output_shapes
:         г
model_9/lstm1/lstm_cell/mulMul&model_9/lstm1/strided_slice_2:output:0%model_9/lstm1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =е
model_9/lstm1/lstm_cell/mul_1Mul&model_9/lstm1/strided_slice_2:output:0%model_9/lstm1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =е
model_9/lstm1/lstm_cell/mul_2Mul&model_9/lstm1/strided_slice_2:output:0%model_9/lstm1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =е
model_9/lstm1/lstm_cell/mul_3Mul&model_9/lstm1/strided_slice_2:output:0%model_9/lstm1/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =i
'model_9/lstm1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :в
,model_9/lstm1/lstm_cell/split/ReadVariableOpReadVariableOp5model_9_lstm1_lstm_cell_split_readvariableop_resource*
_output_shapes

:=@*
dtype0ц
model_9/lstm1/lstm_cell/splitSplit0model_9/lstm1/lstm_cell/split/split_dim:output:04model_9/lstm1/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splitг
model_9/lstm1/lstm_cell/MatMulMatMulmodel_9/lstm1/lstm_cell/mul:z:0&model_9/lstm1/lstm_cell/split:output:0*
T0*'
_output_shapes
:         з
 model_9/lstm1/lstm_cell/MatMul_1MatMul!model_9/lstm1/lstm_cell/mul_1:z:0&model_9/lstm1/lstm_cell/split:output:1*
T0*'
_output_shapes
:         з
 model_9/lstm1/lstm_cell/MatMul_2MatMul!model_9/lstm1/lstm_cell/mul_2:z:0&model_9/lstm1/lstm_cell/split:output:2*
T0*'
_output_shapes
:         з
 model_9/lstm1/lstm_cell/MatMul_3MatMul!model_9/lstm1/lstm_cell/mul_3:z:0&model_9/lstm1/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
)model_9/lstm1/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : в
.model_9/lstm1/lstm_cell/split_1/ReadVariableOpReadVariableOp7model_9_lstm1_lstm_cell_split_1_readvariableop_resource*
_output_shapes
:@*
dtype0▄
model_9/lstm1/lstm_cell/split_1Split2model_9/lstm1/lstm_cell/split_1/split_dim:output:06model_9/lstm1/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split░
model_9/lstm1/lstm_cell/BiasAddBiasAdd(model_9/lstm1/lstm_cell/MatMul:product:0(model_9/lstm1/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         ┤
!model_9/lstm1/lstm_cell/BiasAdd_1BiasAdd*model_9/lstm1/lstm_cell/MatMul_1:product:0(model_9/lstm1/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         ┤
!model_9/lstm1/lstm_cell/BiasAdd_2BiasAdd*model_9/lstm1/lstm_cell/MatMul_2:product:0(model_9/lstm1/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         ┤
!model_9/lstm1/lstm_cell/BiasAdd_3BiasAdd*model_9/lstm1/lstm_cell/MatMul_3:product:0(model_9/lstm1/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         Э
model_9/lstm1/lstm_cell/mul_4Mulmodel_9/lstm1/zeros:output:0'model_9/lstm1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Э
model_9/lstm1/lstm_cell/mul_5Mulmodel_9/lstm1/zeros:output:0'model_9/lstm1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Э
model_9/lstm1/lstm_cell/mul_6Mulmodel_9/lstm1/zeros:output:0'model_9/lstm1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Э
model_9/lstm1/lstm_cell/mul_7Mulmodel_9/lstm1/zeros:output:0'model_9/lstm1/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Ц
&model_9/lstm1/lstm_cell/ReadVariableOpReadVariableOp/model_9_lstm1_lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0|
+model_9/lstm1/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-model_9/lstm1/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-model_9/lstm1/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      у
%model_9/lstm1/lstm_cell/strided_sliceStridedSlice.model_9/lstm1/lstm_cell/ReadVariableOp:value:04model_9/lstm1/lstm_cell/strided_slice/stack:output:06model_9/lstm1/lstm_cell/strided_slice/stack_1:output:06model_9/lstm1/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskп
 model_9/lstm1/lstm_cell/MatMul_4MatMul!model_9/lstm1/lstm_cell/mul_4:z:0.model_9/lstm1/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         м
model_9/lstm1/lstm_cell/addAddV2(model_9/lstm1/lstm_cell/BiasAdd:output:0*model_9/lstm1/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         }
model_9/lstm1/lstm_cell/SigmoidSigmoidmodel_9/lstm1/lstm_cell/add:z:0*
T0*'
_output_shapes
:         Ш
(model_9/lstm1/lstm_cell/ReadVariableOp_1ReadVariableOp/model_9_lstm1_lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0~
-model_9/lstm1/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       А
/model_9/lstm1/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        А
/model_9/lstm1/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
'model_9/lstm1/lstm_cell/strided_slice_1StridedSlice0model_9/lstm1/lstm_cell/ReadVariableOp_1:value:06model_9/lstm1/lstm_cell/strided_slice_1/stack:output:08model_9/lstm1/lstm_cell/strided_slice_1/stack_1:output:08model_9/lstm1/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask▒
 model_9/lstm1/lstm_cell/MatMul_5MatMul!model_9/lstm1/lstm_cell/mul_5:z:00model_9/lstm1/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         ░
model_9/lstm1/lstm_cell/add_1AddV2*model_9/lstm1/lstm_cell/BiasAdd_1:output:0*model_9/lstm1/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         Б
!model_9/lstm1/lstm_cell/Sigmoid_1Sigmoid!model_9/lstm1/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Э
model_9/lstm1/lstm_cell/mul_8Mul%model_9/lstm1/lstm_cell/Sigmoid_1:y:0model_9/lstm1/zeros_1:output:0*
T0*'
_output_shapes
:         Ш
(model_9/lstm1/lstm_cell/ReadVariableOp_2ReadVariableOp/model_9_lstm1_lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0~
-model_9/lstm1/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        А
/model_9/lstm1/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   А
/model_9/lstm1/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
'model_9/lstm1/lstm_cell/strided_slice_2StridedSlice0model_9/lstm1/lstm_cell/ReadVariableOp_2:value:06model_9/lstm1/lstm_cell/strided_slice_2/stack:output:08model_9/lstm1/lstm_cell/strided_slice_2/stack_1:output:08model_9/lstm1/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask▒
 model_9/lstm1/lstm_cell/MatMul_6MatMul!model_9/lstm1/lstm_cell/mul_6:z:00model_9/lstm1/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         ░
model_9/lstm1/lstm_cell/add_2AddV2*model_9/lstm1/lstm_cell/BiasAdd_2:output:0*model_9/lstm1/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         y
model_9/lstm1/lstm_cell/TanhTanh!model_9/lstm1/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         Э
model_9/lstm1/lstm_cell/mul_9Mul#model_9/lstm1/lstm_cell/Sigmoid:y:0 model_9/lstm1/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ю
model_9/lstm1/lstm_cell/add_3AddV2!model_9/lstm1/lstm_cell/mul_8:z:0!model_9/lstm1/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         Ш
(model_9/lstm1/lstm_cell/ReadVariableOp_3ReadVariableOp/model_9_lstm1_lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0~
-model_9/lstm1/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   А
/model_9/lstm1/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        А
/model_9/lstm1/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
'model_9/lstm1/lstm_cell/strided_slice_3StridedSlice0model_9/lstm1/lstm_cell/ReadVariableOp_3:value:06model_9/lstm1/lstm_cell/strided_slice_3/stack:output:08model_9/lstm1/lstm_cell/strided_slice_3/stack_1:output:08model_9/lstm1/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask▒
 model_9/lstm1/lstm_cell/MatMul_7MatMul!model_9/lstm1/lstm_cell/mul_7:z:00model_9/lstm1/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         ░
model_9/lstm1/lstm_cell/add_4AddV2*model_9/lstm1/lstm_cell/BiasAdd_3:output:0*model_9/lstm1/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         Б
!model_9/lstm1/lstm_cell/Sigmoid_2Sigmoid!model_9/lstm1/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         {
model_9/lstm1/lstm_cell/Tanh_1Tanh!model_9/lstm1/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         в
model_9/lstm1/lstm_cell/mul_10Mul%model_9/lstm1/lstm_cell/Sigmoid_2:y:0"model_9/lstm1/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         |
+model_9/lstm1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
model_9/lstm1/TensorArrayV2_1TensorListReserve4model_9/lstm1/TensorArrayV2_1/element_shape:output:0&model_9/lstm1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥T
model_9/lstm1/timeConst*
_output_shapes
: *
dtype0*
value	B : v
+model_9/lstm1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         т
model_9/lstm1/TensorArrayV2_2TensorListReserve4model_9/lstm1/TensorArrayV2_2/element_shape:output:0&model_9/lstm1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щш╚Ц
Emodel_9/lstm1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Р
7model_9/lstm1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensormodel_9/lstm1/transpose_1:y:0Nmodel_9/lstm1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:щш╚{
model_9/lstm1/zeros_like	ZerosLike"model_9/lstm1/lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:         q
&model_9/lstm1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         b
 model_9/lstm1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : з
model_9/lstm1/whileWhile)model_9/lstm1/while/loop_counter:output:0/model_9/lstm1/while/maximum_iterations:output:0model_9/lstm1/time:output:0&model_9/lstm1/TensorArrayV2_1:handle:0model_9/lstm1/zeros_like:y:0model_9/lstm1/zeros:output:0model_9/lstm1/zeros_1:output:0&model_9/lstm1/strided_slice_1:output:0Emodel_9/lstm1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Gmodel_9/lstm1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:05model_9_lstm1_lstm_cell_split_readvariableop_resource7model_9_lstm1_lstm_cell_split_1_readvariableop_resource/model_9_lstm1_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :         :         :         : : : : : : *%
_read_only_resource_inputs

**
body"R 
model_9_lstm1_while_body_99136**
cond"R 
model_9_lstm1_while_cond_99135*`
output_shapesO
M: : : : :         :         :         : : : : : : *
parallel_iterations П
>model_9/lstm1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
0model_9/lstm1/TensorArrayV2Stack/TensorListStackTensorListStackmodel_9/lstm1/while:output:3Gmodel_9/lstm1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0v
#model_9/lstm1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         o
%model_9/lstm1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%model_9/lstm1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
model_9/lstm1/strided_slice_3StridedSlice9model_9/lstm1/TensorArrayV2Stack/TensorListStack:tensor:0,model_9/lstm1/strided_slice_3/stack:output:0.model_9/lstm1/strided_slice_3/stack_1:output:0.model_9/lstm1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masks
model_9/lstm1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╔
model_9/lstm1/transpose_2	Transpose9model_9/lstm1/TensorArrayV2Stack/TensorListStack:tensor:0'model_9/lstm1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :                  i
model_9/lstm1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
model_9/output/ShapeShapemodel_9/lstm1/transpose_2:y:0*
T0*
_output_shapes
::э╧l
"model_9/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$model_9/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$model_9/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
model_9/output/strided_sliceStridedSlicemodel_9/output/Shape:output:0+model_9/output/strided_slice/stack:output:0-model_9/output/strided_slice/stack_1:output:0-model_9/output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
model_9/output/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       Щ
model_9/output/ReshapeReshapemodel_9/lstm1/transpose_2:y:0%model_9/output/Reshape/shape:output:0*
T0*'
_output_shapes
:         в
,model_9/output/dense_9/MatMul/ReadVariableOpReadVariableOp5model_9_output_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0░
model_9/output/dense_9/MatMulMatMulmodel_9/output/Reshape:output:04model_9/output/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-model_9/output/dense_9/BiasAdd/ReadVariableOpReadVariableOp6model_9_output_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
model_9/output/dense_9/BiasAddBiasAdd'model_9/output/dense_9/MatMul:product:05model_9/output/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
model_9/output/dense_9/SigmoidSigmoid'model_9/output/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         k
 model_9/output/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         b
 model_9/output/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╤
model_9/output/Reshape_1/shapePack)model_9/output/Reshape_1/shape/0:output:0%model_9/output/strided_slice:output:0)model_9/output/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:п
model_9/output/Reshape_1Reshape"model_9/output/dense_9/Sigmoid:y:0'model_9/output/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  q
model_9/output/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         б
model_9/output/Reshape_2Reshape%model_9/input_masked/Squeeze:output:0'model_9/output/Reshape_2/shape:output:0*
T0
*#
_output_shapes
:         o
model_9/output/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
model_9/output/Reshape_3Reshapemodel_9/lstm1/transpose_2:y:0'model_9/output/Reshape_3/shape:output:0*
T0*'
_output_shapes
:         q
model_9/output/Shape_1Shapemodel_9/lstm1/transpose_2:y:0*
T0*
_output_shapes
::э╧n
$model_9/output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&model_9/output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_9/output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
model_9/output/strided_slice_1StridedSlicemodel_9/output/Shape_1:output:0-model_9/output/strided_slice_1/stack:output:0/model_9/output/strided_slice_1/stack_1:output:0/model_9/output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 model_9/output/Reshape_4/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         и
model_9/output/Reshape_4/shapePack)model_9/output/Reshape_4/shape/0:output:0'model_9/output/strided_slice_1:output:0*
N*
T0*
_output_shapes
:к
model_9/output/Reshape_4Reshape!model_9/output/Reshape_2:output:0'model_9/output/Reshape_4/shape:output:0*
T0
*0
_output_shapes
:                  }
IdentityIdentity!model_9/output/Reshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  б
NoOpNoOp'^model_9/lstm1/lstm_cell/ReadVariableOp)^model_9/lstm1/lstm_cell/ReadVariableOp_1)^model_9/lstm1/lstm_cell/ReadVariableOp_2)^model_9/lstm1/lstm_cell/ReadVariableOp_3-^model_9/lstm1/lstm_cell/split/ReadVariableOp/^model_9/lstm1/lstm_cell/split_1/ReadVariableOp^model_9/lstm1/while.^model_9/output/dense_9/BiasAdd/ReadVariableOp-^model_9/output/dense_9/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:                  =: : : : : 2P
&model_9/lstm1/lstm_cell/ReadVariableOp&model_9/lstm1/lstm_cell/ReadVariableOp2T
(model_9/lstm1/lstm_cell/ReadVariableOp_1(model_9/lstm1/lstm_cell/ReadVariableOp_12T
(model_9/lstm1/lstm_cell/ReadVariableOp_2(model_9/lstm1/lstm_cell/ReadVariableOp_22T
(model_9/lstm1/lstm_cell/ReadVariableOp_3(model_9/lstm1/lstm_cell/ReadVariableOp_32\
,model_9/lstm1/lstm_cell/split/ReadVariableOp,model_9/lstm1/lstm_cell/split/ReadVariableOp2`
.model_9/lstm1/lstm_cell/split_1/ReadVariableOp.model_9/lstm1/lstm_cell/split_1/ReadVariableOp2*
model_9/lstm1/whilemodel_9/lstm1/while2^
-model_9/output/dense_9/BiasAdd/ReadVariableOp-model_9/output/dense_9/BiasAdd/ReadVariableOp2\
,model_9/output/dense_9/MatMul/ReadVariableOp,model_9/output/dense_9/MatMul/ReadVariableOp:[ W
4
_output_shapes"
 :                  =

_user_specified_nameinput:($
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
╡
Ё
*__inference_lstm_cell_layer_call_fn_101968

inputs
states_0
states_1
unknown:=@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99677o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         =:         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         =
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:&"
 
_user_specified_name101956:&"
 
_user_specified_name101958:&"
 
_user_specified_name101960
Э
Ф
'__inference_output_layer_call_fn_101890

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_99867|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:&"
 
_user_specified_name101884:&"
 
_user_specified_name101886
╡
Ё
*__inference_lstm_cell_layer_call_fn_101951

inputs
states_0
states_1
unknown:=@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИвStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99486o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         =:         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         =
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:&"
 
_user_specified_name101939:&"
 
_user_specified_name101941:&"
 
_user_specified_name101943
▌
╝
C__inference_model_9_layer_call_and_return_conditional_losses_100541	
input
lstm1_100526:=@
lstm1_100528:@
lstm1_100530:@
output_100533:
output_100535:
identityИвlstm1/StatefulPartitionedCallвoutput/StatefulPartitionedCall╦
input_masked/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  =* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_input_masked_layer_call_and_return_conditional_losses_99907а
lstm1/StatefulPartitionedCallStatefulPartitionedCall%input_masked/PartitionedCall:output:0lstm1_100526lstm1_100528lstm1_100530*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm1_layer_call_and_return_conditional_losses_100525Ф
output/StatefulPartitionedCallStatefulPartitionedCall&lstm1/StatefulPartitionedCall:output:0output_100533output_100535*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_99867e
output/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       Т
output/ReshapeReshape&lstm1/StatefulPartitionedCall:output:0output/Reshape/shape:output:0*
T0*'
_output_shapes
:         Г
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  c
NoOpNoOp^lstm1/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:                  =: : : : : 2>
lstm1/StatefulPartitionedCalllstm1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:[ W
4
_output_shapes"
 :                  =

_user_specified_nameinput:&"
 
_user_specified_name100526:&"
 
_user_specified_name100528:&"
 
_user_specified_name100530:&"
 
_user_specified_name100533:&"
 
_user_specified_name100535
и┴
╟
A__inference_lstm1_layer_call_and_return_conditional_losses_100271

inputs9
'lstm_cell_split_readvariableop_resource:=@7
)lstm_cell_split_1_readvariableop_resource:@3
!lstm_cell_readvariableop_resource:@
identityИвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:         =\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Й
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         =l
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧а
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         Е
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes

:=@*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes
:@*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         z
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
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
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         В
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         ]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         _
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : ╥
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_100077*
condR
while_cond_100076*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  р
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :                  =
 
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
┬	
├
while_cond_100076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_100076___redundant_placeholder04
0while_while_cond_100076___redundant_placeholder14
0while_while_cond_100076___redundant_placeholder24
0while_while_cond_100076___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╔

Ї
C__inference_dense_9_layer_call_and_return_conditional_losses_102208

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ё
░
&__inference_lstm1_layer_call_fn_100676

inputs
unknown:=@
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm1_layer_call_and_return_conditional_losses_100525|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  =
 
_user_specified_nameinputs:&"
 
_user_specified_name100668:&"
 
_user_specified_name100670:&"
 
_user_specified_name100672
Х

ч
(__inference_model_9_layer_call_fn_100556	
input
unknown:=@
	unknown_0:@
	unknown_1:@
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_9_layer_call_and_return_conditional_losses_100287|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:                  =: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
4
_output_shapes"
 :                  =

_user_specified_nameinput:&"
 
_user_specified_name100544:&"
 
_user_specified_name100546:&"
 
_user_specified_name100548:&"
 
_user_specified_name100550:&"
 
_user_specified_name100552
┤A
е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102188

inputs
states_0
states_1/
split_readvariableop_resource:=@-
split_1_readvariableop_resource:@)
readvariableop_resource:@
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:         =S
ones_like_1OnesLikestates_0*
T0*'
_output_shapes
:         S
mulMulinputsones_like:y:0*
T0*'
_output_shapes
:         =U
mul_1Mulinputsones_like:y:0*
T0*'
_output_shapes
:         =U
mul_2Mulinputsones_like:y:0*
T0*'
_output_shapes
:         =U
mul_3Mulinputsones_like:y:0*
T0*'
_output_shapes
:         =Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :r
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes

:=@*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         _
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         _
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         _
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         Y
mul_4Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:         Y
mul_5Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:         Y
mul_6Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:         Y
mul_7Mulstates_0ones_like_1:y:0*
T0*'
_output_shapes
:         f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:@*
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
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   h
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
_output_shapes

:*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         [

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         =:         :         : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         =
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
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
и┴
╟
A__inference_lstm1_layer_call_and_return_conditional_losses_101637

inputs9
'lstm_cell_split_readvariableop_resource:=@7
)lstm_cell_split_1_readvariableop_resource:@3
!lstm_cell_readvariableop_resource:@
identityИвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:         =\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Й
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         =l
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧а
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         Е
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes

:=@*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes
:@*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         z
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
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
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         В
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         ]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         _
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : ╥
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_101443*
condR
while_cond_101442*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  р
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :                  =
 
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
В
У
B__inference_output_layer_call_and_return_conditional_losses_101912

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Д
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Г
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         \
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:В
	Reshape_1Reshapedense_9/Sigmoid:y:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  c
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╜	
╛
while_cond_99690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_99690___redundant_placeholder03
/while_while_cond_99690___redundant_placeholder13
/while_while_cond_99690___redundant_placeholder23
/while_while_cond_99690___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
┬	
├
while_cond_101741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_101741___redundant_placeholder04
0while_while_cond_101741___redundant_placeholder14
0while_while_cond_101741___redundant_placeholder24
0while_while_cond_101741___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ыo
·
while_body_100395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0A
/while_lstm_cell_split_readvariableop_resource_0:=@?
1while_lstm_cell_split_1_readvariableop_resource_0:@;
)while_lstm_cell_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor?
-while_lstm_cell_split_readvariableop_resource:=@=
/while_lstm_cell_split_1_readvariableop_resource:@9
'while_lstm_cell_readvariableop_resource:@Ивwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:         =n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:         Э
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes

:=@*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes
:@*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_4Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_5Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_6Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_7Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         И
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
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
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         Ф
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         В
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         Е
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ж
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         К
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         В

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
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2@
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC
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
┬	
├
while_cond_100394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_100394___redundant_placeholder04
0while_while_cond_100394___redundant_placeholder14
0while_while_cond_100394___redundant_placeholder24
0while_while_cond_100394___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
гA
в
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99677

inputs

states
states_1/
split_readvariableop_resource:=@-
split_1_readvariableop_resource:@)
readvariableop_resource:@
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:         =Q
ones_like_1OnesLikestates*
T0*'
_output_shapes
:         S
mulMulinputsones_like:y:0*
T0*'
_output_shapes
:         =U
mul_1Mulinputsones_like:y:0*
T0*'
_output_shapes
:         =U
mul_2Mulinputsones_like:y:0*
T0*'
_output_shapes
:         =U
mul_3Mulinputsones_like:y:0*
T0*'
_output_shapes
:         =Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :r
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes

:=@*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         _
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         _
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         _
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         W
mul_4Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:         W
mul_5Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:         W
mul_6Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:         W
mul_7Mulstatesones_like_1:y:0*
T0*'
_output_shapes
:         f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:@*
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
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   h
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
_output_shapes

:*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         [

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         =:         :         : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         =
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
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
ї
▓
&__inference_lstm1_layer_call_fn_100654
inputs_0
unknown:=@
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm1_layer_call_and_return_conditional_losses_99760|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  =
"
_user_specified_name
inputs_0:&"
 
_user_specified_name100646:&"
 
_user_specified_name100648:&"
 
_user_specified_name100650
г8
Ё
@__inference_lstm1_layer_call_and_return_conditional_losses_99569

inputs!
lstm_cell_99487:=@
lstm_cell_99489:@!
lstm_cell_99491:@
identityИв!lstm_cell/StatefulPartitionedCallвwhileI
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskт
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_99487lstm_cell_99489lstm_cell_99491*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99486n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_99487lstm_cell_99489lstm_cell_99491*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_99500*
condR
while_cond_99499*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  =
 
_user_specified_nameinputs:%!

_user_specified_name99487:%!

_user_specified_name99489:%!

_user_specified_name99491
░┴
╔
A__inference_lstm1_layer_call_and_return_conditional_losses_101039
inputs_09
'lstm_cell_split_readvariableop_resource:=@7
)lstm_cell_split_1_readvariableop_resource:@3
!lstm_cell_readvariableop_resource:@
identityИвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileK
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:         =\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Й
lstm_cell/dropout/MulMullstm_cell/ones_like:y:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         =l
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧а
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_1/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_2/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Н
lstm_cell/dropout_3/MulMullstm_cell/ones_like:y:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         =n
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:y:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         p
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧д
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╩
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         `
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         Е
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =Й
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes

:=@*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes
:@*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         z
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
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
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         В
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         ]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         _
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : ╥
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_100845*
condR
while_cond_100844*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  р
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  =
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
╬
╬
model_9_lstm1_while_cond_991358
4model_9_lstm1_while_model_9_lstm1_while_loop_counter>
:model_9_lstm1_while_model_9_lstm1_while_maximum_iterations#
model_9_lstm1_while_placeholder%
!model_9_lstm1_while_placeholder_1%
!model_9_lstm1_while_placeholder_2%
!model_9_lstm1_while_placeholder_3%
!model_9_lstm1_while_placeholder_4:
6model_9_lstm1_while_less_model_9_lstm1_strided_slice_1O
Kmodel_9_lstm1_while_model_9_lstm1_while_cond_99135___redundant_placeholder0O
Kmodel_9_lstm1_while_model_9_lstm1_while_cond_99135___redundant_placeholder1O
Kmodel_9_lstm1_while_model_9_lstm1_while_cond_99135___redundant_placeholder2O
Kmodel_9_lstm1_while_model_9_lstm1_while_cond_99135___redundant_placeholder3O
Kmodel_9_lstm1_while_model_9_lstm1_while_cond_99135___redundant_placeholder4 
model_9_lstm1_while_identity
Ъ
model_9/lstm1/while/LessLessmodel_9_lstm1_while_placeholder6model_9_lstm1_while_less_model_9_lstm1_strided_slice_1*
T0*
_output_shapes
: g
model_9/lstm1/while/IdentityIdentitymodel_9/lstm1/while/Less:z:0*
T0
*
_output_shapes
: "E
model_9_lstm1_while_identity%model_9/lstm1/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :         :         :         : ::::::X T

_output_shapes
: 
:
_user_specified_name" model_9/lstm1/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&model_9/lstm1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :UQ

_output_shapes
: 
7
_user_specified_namemodel_9/lstm1/strided_slice_1:

_output_shapes
::	

_output_shapes
:
Х

ч
(__inference_model_9_layer_call_fn_100571	
input
unknown:=@
	unknown_0:@
	unknown_1:@
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_9_layer_call_and_return_conditional_losses_100541|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:                  =: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
4
_output_shapes"
 :                  =

_user_specified_nameinput:&"
 
_user_specified_name100559:&"
 
_user_specified_name100561:&"
 
_user_specified_name100563:&"
 
_user_specified_name100565:&"
 
_user_specified_name100567
╦╝
·
while_body_101443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0A
/while_lstm_cell_split_readvariableop_resource_0:=@?
1while_lstm_cell_split_1_readvariableop_resource_0:@;
)while_lstm_cell_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor?
-while_lstm_cell_split_readvariableop_resource:=@=
/while_lstm_cell_split_1_readvariableop_resource:@9
'while_lstm_cell_readvariableop_resource:@Ивwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:         =b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ы
while/lstm_cell/dropout/MulMulwhile/lstm_cell/ones_like:y:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         =x
while/lstm_cell/dropout/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧м
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╓
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_1/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_1/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_2/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_2/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_3/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_3/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_4/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_4/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_5/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_5/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_6/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_6/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_7/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_7/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         й
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes

:=@*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes
:@*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         И
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
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
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         Ф
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         В
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         Е
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ж
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         К
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         В

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
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2@
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC
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
ю	
у
$__inference_signature_wrapper_100616	
input
unknown:=@
	unknown_0:@
	unknown_1:@
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_99314|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:                  =: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
4
_output_shapes"
 :                  =

_user_specified_nameinput:&"
 
_user_specified_name100604:&"
 
_user_specified_name100606:&"
 
_user_specified_name100608:&"
 
_user_specified_name100610:&"
 
_user_specified_name100612
╜	
╛
while_cond_99499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_99499___redundant_placeholder03
/while_while_cond_99499___redundant_placeholder13
/while_while_cond_99499___redundant_placeholder23
/while_while_cond_99499___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
▄}
е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102110

inputs
states_0
states_1/
split_readvariableop_resource:=@-
split_1_readvariableop_resource:@)
readvariableop_resource:@
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:         =R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?k
dropout/MulMulones_like:y:0dropout/Const:output:0*
T0*'
_output_shapes
:         =X
dropout/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         =T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?o
dropout_1/MulMulones_like:y:0dropout_1/Const:output:0*
T0*'
_output_shapes
:         =Z
dropout_1/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧Р
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>м
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?o
dropout_2/MulMulones_like:y:0dropout_2/Const:output:0*
T0*'
_output_shapes
:         =Z
dropout_2/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧Р
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>м
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?o
dropout_3/MulMulones_like:y:0dropout_3/Const:output:0*
T0*'
_output_shapes
:         =Z
dropout_3/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧Р
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>м
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =S
ones_like_1OnesLikestates_0*
T0*'
_output_shapes
:         T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_4/MulMulones_like_1:y:0dropout_4/Const:output:0*
T0*'
_output_shapes
:         \
dropout_4/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_5/MulMulones_like_1:y:0dropout_5/Const:output:0*
T0*'
_output_shapes
:         \
dropout_5/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_6/MulMulones_like_1:y:0dropout_6/Const:output:0*
T0*'
_output_shapes
:         \
dropout_6/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_7/MulMulones_like_1:y:0dropout_7/Const:output:0*
T0*'
_output_shapes
:         \
dropout_7/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         _
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:         =c
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =c
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =c
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :r
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes

:=@*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         _
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         _
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         _
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         e
mul_4Mulstates_0dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         e
mul_5Mulstates_0dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         e
mul_6Mulstates_0dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         e
mul_7Mulstates_0dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:@*
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
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   h
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
_output_shapes

:*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         [

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         =:         :         : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         =
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
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
В
У
B__inference_output_layer_call_and_return_conditional_losses_101934

inputs8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Д
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Г
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         \
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:В
	Reshape_1Reshapedense_9/Sigmoid:y:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  c
NoOpNoOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
мz
╔
A__inference_lstm1_layer_call_and_return_conditional_losses_101274
inputs_09
'lstm_cell_split_readvariableop_resource:=@7
)lstm_cell_split_1_readvariableop_resource:@3
!lstm_cell_readvariableop_resource:@
identityИвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileK
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:         =c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:         y
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes

:=@*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes
:@*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         s
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         z
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
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
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         В
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         ]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         _
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : ╥
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_101144*
condR
while_cond_101143*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  р
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  =
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
дz
╟
A__inference_lstm1_layer_call_and_return_conditional_losses_101872

inputs9
'lstm_cell_split_readvariableop_resource:=@7
)lstm_cell_split_1_readvariableop_resource:@3
!lstm_cell_readvariableop_resource:@
identityИвlstm_cell/ReadVariableOpвlstm_cell/ReadVariableOp_1вlstm_cell/ReadVariableOp_2вlstm_cell/ReadVariableOp_3вlstm_cell/split/ReadVariableOpв lstm_cell/split_1/ReadVariableOpвwhileI
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  =R
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
valueB"    =   р
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         =*
shrink_axis_maskk
lstm_cell/ones_likeOnesLikestrided_slice_2:output:0*
T0*'
_output_shapes
:         =c
lstm_cell/ones_like_1OnesLikezeros:output:0*
T0*'
_output_shapes
:         y
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         ={
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes

:=@*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ж
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes
:@*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitЖ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         К
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         s
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         z
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
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
valueB"       p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЕ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         В
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         ]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         |
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes

:@*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЗ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ж
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         _
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
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
value	B : ╥
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_101742*
condR
while_cond_101741*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
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
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  р
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :                  =
 
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
ы
Х
(__inference_dense_9_layer_call_fn_102197

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall╫
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
GPU 2J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_99836o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:&"
 
_user_specified_name102191:&"
 
_user_specified_name102193
и$
┴
while_body_99500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_99524_0:=@%
while_lstm_cell_99526_0:@)
while_lstm_cell_99528_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_99524:=@#
while_lstm_cell_99526:@'
while_lstm_cell_99528:@Ив'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0а
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_99524_0while_lstm_cell_99526_0while_lstm_cell_99528_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99486┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
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
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_99524while_lstm_cell_99524_0"0
while_lstm_cell_99526while_lstm_cell_99526_0"0
while_lstm_cell_99528while_lstm_cell_99528_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name99524:%	!

_user_specified_name99526:%
!

_user_specified_name99528
ї
▓
&__inference_lstm1_layer_call_fn_100643
inputs_0
unknown:=@
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lstm1_layer_call_and_return_conditional_losses_99569|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  =
"
_user_specified_name
inputs_0:&"
 
_user_specified_name100635:&"
 
_user_specified_name100637:&"
 
_user_specified_name100639
┬	
├
while_cond_101143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_101143___redundant_placeholder04
0while_while_cond_101143___redundant_placeholder14
0while_while_cond_101143___redundant_placeholder24
0while_while_cond_101143___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Э
Ф
'__inference_output_layer_call_fn_101881

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_99847|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:&"
 
_user_specified_name101875:&"
 
_user_specified_name101877
Ё
░
&__inference_lstm1_layer_call_fn_100665

inputs
unknown:=@
	unknown_0:@
	unknown_1:@
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm1_layer_call_and_return_conditional_losses_100271|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  =: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  =
 
_user_specified_nameinputs:&"
 
_user_specified_name100657:&"
 
_user_specified_name100659:&"
 
_user_specified_name100661
Й	
c
G__inference_input_masked_layer_call_and_return_conditional_losses_99907

inputs
identityO

NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    p
NotEqualNotEqualinputsNotEqual/y:output:0*
T0*4
_output_shapes"
 :                  =`
Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         
AnyAnyNotEqual:z:0Any/reduction_indices:output:0*4
_output_shapes"
 :                  *
	keep_dims(h
CastCastAny:output:0*

DstT0*

SrcT0
*4
_output_shapes"
 :                  [
mulMulinputsCast:y:0*
T0*4
_output_shapes"
 :                  ={
SqueezeSqueezeAny:output:0*
T0
*0
_output_shapes
:                  *
squeeze_dims

         \
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :                  ="
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :                  =:\ X
4
_output_shapes"
 :                  =
 
_user_specified_nameinputs
╦╝
·
while_body_100845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0A
/while_lstm_cell_split_readvariableop_resource_0:=@?
1while_lstm_cell_split_1_readvariableop_resource_0:@;
)while_lstm_cell_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor?
-while_lstm_cell_split_readvariableop_resource:=@=
/while_lstm_cell_split_1_readvariableop_resource:@9
'while_lstm_cell_readvariableop_resource:@Ивwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:         =b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ы
while/lstm_cell/dropout/MulMulwhile/lstm_cell/ones_like:y:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         =x
while/lstm_cell/dropout/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧м
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╓
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_1/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_1/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_2/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_2/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_3/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_3/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_4/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_4/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_5/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_5/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_6/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_6/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_7/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_7/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         й
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes

:=@*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes
:@*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         И
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
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
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         Ф
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         В
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         Е
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ж
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         К
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         В

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
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2@
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC
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
╚

є
B__inference_dense_9_layer_call_and_return_conditional_losses_99836

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ое
Ю
model_9_lstm1_while_body_991368
4model_9_lstm1_while_model_9_lstm1_while_loop_counter>
:model_9_lstm1_while_model_9_lstm1_while_maximum_iterations#
model_9_lstm1_while_placeholder%
!model_9_lstm1_while_placeholder_1%
!model_9_lstm1_while_placeholder_2%
!model_9_lstm1_while_placeholder_3%
!model_9_lstm1_while_placeholder_47
3model_9_lstm1_while_model_9_lstm1_strided_slice_1_0s
omodel_9_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_tensorlistfromtensor_0w
smodel_9_lstm1_while_tensorarrayv2read_1_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_1_tensorlistfromtensor_0O
=model_9_lstm1_while_lstm_cell_split_readvariableop_resource_0:=@M
?model_9_lstm1_while_lstm_cell_split_1_readvariableop_resource_0:@I
7model_9_lstm1_while_lstm_cell_readvariableop_resource_0:@ 
model_9_lstm1_while_identity"
model_9_lstm1_while_identity_1"
model_9_lstm1_while_identity_2"
model_9_lstm1_while_identity_3"
model_9_lstm1_while_identity_4"
model_9_lstm1_while_identity_5"
model_9_lstm1_while_identity_65
1model_9_lstm1_while_model_9_lstm1_strided_slice_1q
mmodel_9_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_tensorlistfromtensoru
qmodel_9_lstm1_while_tensorarrayv2read_1_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_1_tensorlistfromtensorM
;model_9_lstm1_while_lstm_cell_split_readvariableop_resource:=@K
=model_9_lstm1_while_lstm_cell_split_1_readvariableop_resource:@G
5model_9_lstm1_while_lstm_cell_readvariableop_resource:@Ив,model_9/lstm1/while/lstm_cell/ReadVariableOpв.model_9/lstm1/while/lstm_cell/ReadVariableOp_1в.model_9/lstm1/while/lstm_cell/ReadVariableOp_2в.model_9/lstm1/while/lstm_cell/ReadVariableOp_3в2model_9/lstm1/while/lstm_cell/split/ReadVariableOpв4model_9/lstm1/while/lstm_cell/split_1/ReadVariableOpЦ
Emodel_9/lstm1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ь
7model_9/lstm1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_9_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_tensorlistfromtensor_0model_9_lstm1_while_placeholderNmodel_9/lstm1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0Ш
Gmodel_9/lstm1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ї
9model_9/lstm1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemsmodel_9_lstm1_while_tensorarrayv2read_1_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_1_tensorlistfromtensor_0model_9_lstm1_while_placeholderPmodel_9/lstm1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0
е
'model_9/lstm1/while/lstm_cell/ones_likeOnesLike>model_9/lstm1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:         =К
)model_9/lstm1/while/lstm_cell/ones_like_1OnesLike!model_9_lstm1_while_placeholder_3*
T0*'
_output_shapes
:         ╟
!model_9/lstm1/while/lstm_cell/mulMul>model_9/lstm1/while/TensorArrayV2Read/TensorListGetItem:item:0+model_9/lstm1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =╔
#model_9/lstm1/while/lstm_cell/mul_1Mul>model_9/lstm1/while/TensorArrayV2Read/TensorListGetItem:item:0+model_9/lstm1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =╔
#model_9/lstm1/while/lstm_cell/mul_2Mul>model_9/lstm1/while/TensorArrayV2Read/TensorListGetItem:item:0+model_9/lstm1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =╔
#model_9/lstm1/while/lstm_cell/mul_3Mul>model_9/lstm1/while/TensorArrayV2Read/TensorListGetItem:item:0+model_9/lstm1/while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =o
-model_9/lstm1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :░
2model_9/lstm1/while/lstm_cell/split/ReadVariableOpReadVariableOp=model_9_lstm1_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes

:=@*
dtype0°
#model_9/lstm1/while/lstm_cell/splitSplit6model_9/lstm1/while/lstm_cell/split/split_dim:output:0:model_9/lstm1/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_split╡
$model_9/lstm1/while/lstm_cell/MatMulMatMul%model_9/lstm1/while/lstm_cell/mul:z:0,model_9/lstm1/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ╣
&model_9/lstm1/while/lstm_cell/MatMul_1MatMul'model_9/lstm1/while/lstm_cell/mul_1:z:0,model_9/lstm1/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ╣
&model_9/lstm1/while/lstm_cell/MatMul_2MatMul'model_9/lstm1/while/lstm_cell/mul_2:z:0,model_9/lstm1/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ╣
&model_9/lstm1/while/lstm_cell/MatMul_3MatMul'model_9/lstm1/while/lstm_cell/mul_3:z:0,model_9/lstm1/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         q
/model_9/lstm1/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ░
4model_9/lstm1/while/lstm_cell/split_1/ReadVariableOpReadVariableOp?model_9_lstm1_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes
:@*
dtype0ю
%model_9/lstm1/while/lstm_cell/split_1Split8model_9/lstm1/while/lstm_cell/split_1/split_dim:output:0<model_9/lstm1/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_split┬
%model_9/lstm1/while/lstm_cell/BiasAddBiasAdd.model_9/lstm1/while/lstm_cell/MatMul:product:0.model_9/lstm1/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         ╞
'model_9/lstm1/while/lstm_cell/BiasAdd_1BiasAdd0model_9/lstm1/while/lstm_cell/MatMul_1:product:0.model_9/lstm1/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         ╞
'model_9/lstm1/while/lstm_cell/BiasAdd_2BiasAdd0model_9/lstm1/while/lstm_cell/MatMul_2:product:0.model_9/lstm1/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         ╞
'model_9/lstm1/while/lstm_cell/BiasAdd_3BiasAdd0model_9/lstm1/while/lstm_cell/MatMul_3:product:0.model_9/lstm1/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         о
#model_9/lstm1/while/lstm_cell/mul_4Mul!model_9_lstm1_while_placeholder_3-model_9/lstm1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         о
#model_9/lstm1/while/lstm_cell/mul_5Mul!model_9_lstm1_while_placeholder_3-model_9/lstm1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         о
#model_9/lstm1/while/lstm_cell/mul_6Mul!model_9_lstm1_while_placeholder_3-model_9/lstm1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         о
#model_9/lstm1/while/lstm_cell/mul_7Mul!model_9_lstm1_while_placeholder_3-model_9/lstm1/while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         д
,model_9/lstm1/while/lstm_cell/ReadVariableOpReadVariableOp7model_9_lstm1_while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0В
1model_9/lstm1/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Д
3model_9/lstm1/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Д
3model_9/lstm1/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
+model_9/lstm1/while/lstm_cell/strided_sliceStridedSlice4model_9/lstm1/while/lstm_cell/ReadVariableOp:value:0:model_9/lstm1/while/lstm_cell/strided_slice/stack:output:0<model_9/lstm1/while/lstm_cell/strided_slice/stack_1:output:0<model_9/lstm1/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask┴
&model_9/lstm1/while/lstm_cell/MatMul_4MatMul'model_9/lstm1/while/lstm_cell/mul_4:z:04model_9/lstm1/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         ╛
!model_9/lstm1/while/lstm_cell/addAddV2.model_9/lstm1/while/lstm_cell/BiasAdd:output:00model_9/lstm1/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         Й
%model_9/lstm1/while/lstm_cell/SigmoidSigmoid%model_9/lstm1/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:         ж
.model_9/lstm1/while/lstm_cell/ReadVariableOp_1ReadVariableOp7model_9_lstm1_while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0Д
3model_9/lstm1/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       Ж
5model_9/lstm1/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ж
5model_9/lstm1/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
-model_9/lstm1/while/lstm_cell/strided_slice_1StridedSlice6model_9/lstm1/while/lstm_cell/ReadVariableOp_1:value:0<model_9/lstm1/while/lstm_cell/strided_slice_1/stack:output:0>model_9/lstm1/while/lstm_cell/strided_slice_1/stack_1:output:0>model_9/lstm1/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask├
&model_9/lstm1/while/lstm_cell/MatMul_5MatMul'model_9/lstm1/while/lstm_cell/mul_5:z:06model_9/lstm1/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         ┬
#model_9/lstm1/while/lstm_cell/add_1AddV20model_9/lstm1/while/lstm_cell/BiasAdd_1:output:00model_9/lstm1/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         Н
'model_9/lstm1/while/lstm_cell/Sigmoid_1Sigmoid'model_9/lstm1/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         м
#model_9/lstm1/while/lstm_cell/mul_8Mul+model_9/lstm1/while/lstm_cell/Sigmoid_1:y:0!model_9_lstm1_while_placeholder_4*
T0*'
_output_shapes
:         ж
.model_9/lstm1/while/lstm_cell/ReadVariableOp_2ReadVariableOp7model_9_lstm1_while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0Д
3model_9/lstm1/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ж
5model_9/lstm1/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   Ж
5model_9/lstm1/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
-model_9/lstm1/while/lstm_cell/strided_slice_2StridedSlice6model_9/lstm1/while/lstm_cell/ReadVariableOp_2:value:0<model_9/lstm1/while/lstm_cell/strided_slice_2/stack:output:0>model_9/lstm1/while/lstm_cell/strided_slice_2/stack_1:output:0>model_9/lstm1/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask├
&model_9/lstm1/while/lstm_cell/MatMul_6MatMul'model_9/lstm1/while/lstm_cell/mul_6:z:06model_9/lstm1/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         ┬
#model_9/lstm1/while/lstm_cell/add_2AddV20model_9/lstm1/while/lstm_cell/BiasAdd_2:output:00model_9/lstm1/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         Е
"model_9/lstm1/while/lstm_cell/TanhTanh'model_9/lstm1/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         п
#model_9/lstm1/while/lstm_cell/mul_9Mul)model_9/lstm1/while/lstm_cell/Sigmoid:y:0&model_9/lstm1/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         ░
#model_9/lstm1/while/lstm_cell/add_3AddV2'model_9/lstm1/while/lstm_cell/mul_8:z:0'model_9/lstm1/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         ж
.model_9/lstm1/while/lstm_cell/ReadVariableOp_3ReadVariableOp7model_9_lstm1_while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0Д
3model_9/lstm1/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   Ж
5model_9/lstm1/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ж
5model_9/lstm1/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Л
-model_9/lstm1/while/lstm_cell/strided_slice_3StridedSlice6model_9/lstm1/while/lstm_cell/ReadVariableOp_3:value:0<model_9/lstm1/while/lstm_cell/strided_slice_3/stack:output:0>model_9/lstm1/while/lstm_cell/strided_slice_3/stack_1:output:0>model_9/lstm1/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask├
&model_9/lstm1/while/lstm_cell/MatMul_7MatMul'model_9/lstm1/while/lstm_cell/mul_7:z:06model_9/lstm1/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         ┬
#model_9/lstm1/while/lstm_cell/add_4AddV20model_9/lstm1/while/lstm_cell/BiasAdd_3:output:00model_9/lstm1/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         Н
'model_9/lstm1/while/lstm_cell/Sigmoid_2Sigmoid'model_9/lstm1/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         З
$model_9/lstm1/while/lstm_cell/Tanh_1Tanh'model_9/lstm1/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         ┤
$model_9/lstm1/while/lstm_cell/mul_10Mul+model_9/lstm1/while/lstm_cell/Sigmoid_2:y:0(model_9/lstm1/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         s
"model_9/lstm1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ┴
model_9/lstm1/while/TileTile@model_9/lstm1/while/TensorArrayV2Read_1/TensorListGetItem:item:0+model_9/lstm1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:         ╩
model_9/lstm1/while/SelectV2SelectV2!model_9/lstm1/while/Tile:output:0(model_9/lstm1/while/lstm_cell/mul_10:z:0!model_9_lstm1_while_placeholder_2*
T0*'
_output_shapes
:         u
$model_9/lstm1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ┼
model_9/lstm1/while/Tile_1Tile@model_9/lstm1/while/TensorArrayV2Read_1/TensorListGetItem:item:0-model_9/lstm1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:         u
$model_9/lstm1/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ┼
model_9/lstm1/while/Tile_2Tile@model_9/lstm1/while/TensorArrayV2Read_1/TensorListGetItem:item:0-model_9/lstm1/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:         ╬
model_9/lstm1/while/SelectV2_1SelectV2#model_9/lstm1/while/Tile_1:output:0(model_9/lstm1/while/lstm_cell/mul_10:z:0!model_9_lstm1_while_placeholder_3*
T0*'
_output_shapes
:         ═
model_9/lstm1/while/SelectV2_2SelectV2#model_9/lstm1/while/Tile_2:output:0'model_9/lstm1/while/lstm_cell/add_3:z:0!model_9_lstm1_while_placeholder_4*
T0*'
_output_shapes
:         °
8model_9/lstm1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!model_9_lstm1_while_placeholder_1model_9_lstm1_while_placeholder%model_9/lstm1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:щш╥[
model_9/lstm1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ж
model_9/lstm1/while/addAddV2model_9_lstm1_while_placeholder"model_9/lstm1/while/add/y:output:0*
T0*
_output_shapes
: ]
model_9/lstm1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
model_9/lstm1/while/add_1AddV24model_9_lstm1_while_model_9_lstm1_while_loop_counter$model_9/lstm1/while/add_1/y:output:0*
T0*
_output_shapes
: Г
model_9/lstm1/while/IdentityIdentitymodel_9/lstm1/while/add_1:z:0^model_9/lstm1/while/NoOp*
T0*
_output_shapes
: в
model_9/lstm1/while/Identity_1Identity:model_9_lstm1_while_model_9_lstm1_while_maximum_iterations^model_9/lstm1/while/NoOp*
T0*
_output_shapes
: Г
model_9/lstm1/while/Identity_2Identitymodel_9/lstm1/while/add:z:0^model_9/lstm1/while/NoOp*
T0*
_output_shapes
: ░
model_9/lstm1/while/Identity_3IdentityHmodel_9/lstm1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_9/lstm1/while/NoOp*
T0*
_output_shapes
: Ю
model_9/lstm1/while/Identity_4Identity%model_9/lstm1/while/SelectV2:output:0^model_9/lstm1/while/NoOp*
T0*'
_output_shapes
:         а
model_9/lstm1/while/Identity_5Identity'model_9/lstm1/while/SelectV2_1:output:0^model_9/lstm1/while/NoOp*
T0*'
_output_shapes
:         а
model_9/lstm1/while/Identity_6Identity'model_9/lstm1/while/SelectV2_2:output:0^model_9/lstm1/while/NoOp*
T0*'
_output_shapes
:         ф
model_9/lstm1/while/NoOpNoOp-^model_9/lstm1/while/lstm_cell/ReadVariableOp/^model_9/lstm1/while/lstm_cell/ReadVariableOp_1/^model_9/lstm1/while/lstm_cell/ReadVariableOp_2/^model_9/lstm1/while/lstm_cell/ReadVariableOp_33^model_9/lstm1/while/lstm_cell/split/ReadVariableOp5^model_9/lstm1/while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "E
model_9_lstm1_while_identity%model_9/lstm1/while/Identity:output:0"I
model_9_lstm1_while_identity_1'model_9/lstm1/while/Identity_1:output:0"I
model_9_lstm1_while_identity_2'model_9/lstm1/while/Identity_2:output:0"I
model_9_lstm1_while_identity_3'model_9/lstm1/while/Identity_3:output:0"I
model_9_lstm1_while_identity_4'model_9/lstm1/while/Identity_4:output:0"I
model_9_lstm1_while_identity_5'model_9/lstm1/while/Identity_5:output:0"I
model_9_lstm1_while_identity_6'model_9/lstm1/while/Identity_6:output:0"p
5model_9_lstm1_while_lstm_cell_readvariableop_resource7model_9_lstm1_while_lstm_cell_readvariableop_resource_0"А
=model_9_lstm1_while_lstm_cell_split_1_readvariableop_resource?model_9_lstm1_while_lstm_cell_split_1_readvariableop_resource_0"|
;model_9_lstm1_while_lstm_cell_split_readvariableop_resource=model_9_lstm1_while_lstm_cell_split_readvariableop_resource_0"h
1model_9_lstm1_while_model_9_lstm1_strided_slice_13model_9_lstm1_while_model_9_lstm1_strided_slice_1_0"ш
qmodel_9_lstm1_while_tensorarrayv2read_1_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_1_tensorlistfromtensorsmodel_9_lstm1_while_tensorarrayv2read_1_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_1_tensorlistfromtensor_0"р
mmodel_9_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_tensorlistfromtensoromodel_9_lstm1_while_tensorarrayv2read_tensorlistgetitem_model_9_lstm1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :         :         :         : : : : : : 2\
,model_9/lstm1/while/lstm_cell/ReadVariableOp,model_9/lstm1/while/lstm_cell/ReadVariableOp2`
.model_9/lstm1/while/lstm_cell/ReadVariableOp_1.model_9/lstm1/while/lstm_cell/ReadVariableOp_12`
.model_9/lstm1/while/lstm_cell/ReadVariableOp_2.model_9/lstm1/while/lstm_cell/ReadVariableOp_22`
.model_9/lstm1/while/lstm_cell/ReadVariableOp_3.model_9/lstm1/while/lstm_cell/ReadVariableOp_32h
2model_9/lstm1/while/lstm_cell/split/ReadVariableOp2model_9/lstm1/while/lstm_cell/split/ReadVariableOp2l
4model_9/lstm1/while/lstm_cell/split_1/ReadVariableOp4model_9/lstm1/while/lstm_cell/split_1/ReadVariableOp:X T

_output_shapes
: 
:
_user_specified_name" model_9/lstm1/while/loop_counter:^Z

_output_shapes
: 
@
_user_specified_name(&model_9/lstm1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :UQ

_output_shapes
: 
7
_user_specified_namemodel_9/lstm1/strided_slice_1:mi

_output_shapes
: 
O
_user_specified_name75model_9/lstm1/TensorArrayUnstack/TensorListFromTensor:o	k

_output_shapes
: 
Q
_user_specified_name97model_9/lstm1/TensorArrayUnstack_1/TensorListFromTensor:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┬	
├
while_cond_100844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_100844___redundant_placeholder04
0while_while_cond_100844___redundant_placeholder14
0while_while_cond_100844___redundant_placeholder24
0while_while_cond_100844___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ыo
·
while_body_101144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0A
/while_lstm_cell_split_readvariableop_resource_0:=@?
1while_lstm_cell_split_1_readvariableop_resource_0:@;
)while_lstm_cell_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor?
-while_lstm_cell_split_readvariableop_resource:=@=
/while_lstm_cell_split_1_readvariableop_resource:@9
'while_lstm_cell_readvariableop_resource:@Ивwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:         =n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:         Э
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =Я
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/ones_like:y:0*
T0*'
_output_shapes
:         =a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes

:=@*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes
:@*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_4Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_5Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_6Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         Д
while/lstm_cell/mul_7Mulwhile_placeholder_2while/lstm_cell/ones_like_1:y:0*
T0*'
_output_shapes
:         И
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
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
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         Ф
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         В
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         Е
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ж
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         К
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         В

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
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2@
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC
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
╠
└
A__inference_output_layer_call_and_return_conditional_losses_99847

inputs
dense_9_99837:
dense_9_99839:
identityИвdense_9/StatefulPartitionedCallI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         є
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_99837dense_9_99839*
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
GPU 2J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_99836\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  D
NoOpNoOp ^dense_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:                  : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:%!

_user_specified_name99837:%!

_user_specified_name99839
ъE
Ю	
"__inference__traced_restore_102365
file_prefix9
'assignvariableop_lstm1_lstm_cell_kernel:=@E
3assignvariableop_1_lstm1_lstm_cell_recurrent_kernel:@5
'assignvariableop_2_lstm1_lstm_cell_bias:@2
 assignvariableop_3_output_kernel:,
assignvariableop_4_output_bias:&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: L
:assignvariableop_7_rmsprop_velocity_lstm1_lstm_cell_kernel:=@V
Dassignvariableop_8_rmsprop_velocity_lstm1_lstm_cell_recurrent_kernel:@F
8assignvariableop_9_rmsprop_velocity_lstm1_lstm_cell_bias:@D
2assignvariableop_10_rmsprop_velocity_output_kernel:>
0assignvariableop_11_rmsprop_velocity_output_bias:#
assignvariableop_12_total: #
assignvariableop_13_count: 
identity_15ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9з
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*═
value├B└B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHО
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B щ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOpAssignVariableOp'assignvariableop_lstm1_lstm_cell_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_1AssignVariableOp3assignvariableop_1_lstm1_lstm_cell_recurrent_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_2AssignVariableOp'assignvariableop_2_lstm1_lstm_cell_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_3AssignVariableOp assignvariableop_3_output_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_4AssignVariableOpassignvariableop_4_output_biasIdentity_4:output:0"/device:CPU:0*&
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
:╤
AssignVariableOp_7AssignVariableOp:assignvariableop_7_rmsprop_velocity_lstm1_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:█
AssignVariableOp_8AssignVariableOpDassignvariableop_8_rmsprop_velocity_lstm1_lstm_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_9AssignVariableOp8assignvariableop_9_rmsprop_velocity_lstm1_lstm_cell_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_10AssignVariableOp2assignvariableop_10_rmsprop_velocity_output_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_11AssignVariableOp0assignvariableop_11_rmsprop_velocity_output_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Г
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ╠
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_15Identity_15:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
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
_user_specified_namefile_prefix:62
0
_user_specified_namelstm1/lstm_cell/kernel:@<
:
_user_specified_name" lstm1/lstm_cell/recurrent_kernel:40
.
_user_specified_namelstm1/lstm_cell/bias:-)
'
_user_specified_nameoutput/kernel:+'
%
_user_specified_nameoutput/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:GC
A
_user_specified_name)'RMSprop/velocity/lstm1/lstm_cell/kernel:Q	M
K
_user_specified_name31RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel:E
A
?
_user_specified_name'%RMSprop/velocity/lstm1/lstm_cell/bias:>:
8
_user_specified_name RMSprop/velocity/output/kernel:<8
6
_user_specified_nameRMSprop/velocity/output/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
░v
╝
__inference__traced_save_102314
file_prefix?
-read_disablecopyonread_lstm1_lstm_cell_kernel:=@K
9read_1_disablecopyonread_lstm1_lstm_cell_recurrent_kernel:@;
-read_2_disablecopyonread_lstm1_lstm_cell_bias:@8
&read_3_disablecopyonread_output_kernel:2
$read_4_disablecopyonread_output_bias:,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: R
@read_7_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_kernel:=@\
Jread_8_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_recurrent_kernel:@L
>read_9_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_bias:@J
8read_10_disablecopyonread_rmsprop_velocity_output_kernel:D
6read_11_disablecopyonread_rmsprop_velocity_output_bias:)
read_12_disablecopyonread_total: )
read_13_disablecopyonread_count: 
savev2_const
identity_29ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
: 
Read/DisableCopyOnReadDisableCopyOnRead-read_disablecopyonread_lstm1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 й
Read/ReadVariableOpReadVariableOp-read_disablecopyonread_lstm1_lstm_cell_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:=@*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:=@a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:=@Н
Read_1/DisableCopyOnReadDisableCopyOnRead9read_1_disablecopyonread_lstm1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╣
Read_1/ReadVariableOpReadVariableOp9read_1_disablecopyonread_lstm1_lstm_cell_recurrent_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:@Б
Read_2/DisableCopyOnReadDisableCopyOnRead-read_2_disablecopyonread_lstm1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 й
Read_2/ReadVariableOpReadVariableOp-read_2_disablecopyonread_lstm1_lstm_cell_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:@z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_output_kernel"/device:CPU:0*
_output_shapes
 ж
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_output_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_output_bias"/device:CPU:0*
_output_shapes
 а
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_output_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:v
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
: Ф
Read_7/DisableCopyOnReadDisableCopyOnRead@read_7_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 └
Read_7/ReadVariableOpReadVariableOp@read_7_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:=@*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:=@e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:=@Ю
Read_8/DisableCopyOnReadDisableCopyOnReadJread_8_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╩
Read_8/ReadVariableOpReadVariableOpJread_8_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_recurrent_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@Т
Read_9/DisableCopyOnReadDisableCopyOnRead>read_9_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ║
Read_9/ReadVariableOpReadVariableOp>read_9_disablecopyonread_rmsprop_velocity_lstm1_lstm_cell_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@Н
Read_10/DisableCopyOnReadDisableCopyOnRead8read_10_disablecopyonread_rmsprop_velocity_output_kernel"/device:CPU:0*
_output_shapes
 ║
Read_10/ReadVariableOpReadVariableOp8read_10_disablecopyonread_rmsprop_velocity_output_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:Л
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_rmsprop_velocity_output_bias"/device:CPU:0*
_output_shapes
 ┤
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_rmsprop_velocity_output_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_12/DisableCopyOnReadDisableCopyOnReadread_12_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_12/ReadVariableOpReadVariableOpread_12_disablecopyonread_total^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_13/DisableCopyOnReadDisableCopyOnReadread_13_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_13/ReadVariableOpReadVariableOpread_13_disablecopyonread_count^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: д
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*═
value├B└B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЛ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B Х
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: Е
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2(
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
Read_13/ReadVariableOpRead_13/ReadVariableOp24
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
_user_specified_namefile_prefix:62
0
_user_specified_namelstm1/lstm_cell/kernel:@<
:
_user_specified_name" lstm1/lstm_cell/recurrent_kernel:40
.
_user_specified_namelstm1/lstm_cell/bias:-)
'
_user_specified_nameoutput/kernel:+'
%
_user_specified_nameoutput/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:GC
A
_user_specified_name)'RMSprop/velocity/lstm1/lstm_cell/kernel:Q	M
K
_user_specified_name31RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel:E
A
?
_user_specified_name'%RMSprop/velocity/lstm1/lstm_cell/bias:>:
8
_user_specified_name RMSprop/velocity/output/kernel:<8
6
_user_specified_nameRMSprop/velocity/output/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
▌
╝
C__inference_model_9_layer_call_and_return_conditional_losses_100287	
input
lstm1_100272:=@
lstm1_100274:@
lstm1_100276:@
output_100279:
output_100281:
identityИвlstm1/StatefulPartitionedCallвoutput/StatefulPartitionedCall╦
input_masked/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  =* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_input_masked_layer_call_and_return_conditional_losses_99907а
lstm1/StatefulPartitionedCallStatefulPartitionedCall%input_masked/PartitionedCall:output:0lstm1_100272lstm1_100274lstm1_100276*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm1_layer_call_and_return_conditional_losses_100271Ф
output/StatefulPartitionedCallStatefulPartitionedCall&lstm1/StatefulPartitionedCall:output:0output_100279output_100281*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_99847e
output/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       Т
output/ReshapeReshape&lstm1/StatefulPartitionedCall:output:0output/Reshape/shape:output:0*
T0*'
_output_shapes
:         Г
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  c
NoOpNoOp^lstm1/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:                  =: : : : : 2>
lstm1/StatefulPartitionedCalllstm1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:[ W
4
_output_shapes"
 :                  =

_user_specified_nameinput:&"
 
_user_specified_name100272:&"
 
_user_specified_name100274:&"
 
_user_specified_name100276:&"
 
_user_specified_name100279:&"
 
_user_specified_name100281
╦╝
·
while_body_100077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0A
/while_lstm_cell_split_readvariableop_resource_0:=@?
1while_lstm_cell_split_1_readvariableop_resource_0:@;
)while_lstm_cell_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor?
-while_lstm_cell_split_readvariableop_resource:=@=
/while_lstm_cell_split_1_readvariableop_resource:@9
'while_lstm_cell_readvariableop_resource:@Ивwhile/lstm_cell/ReadVariableOpв while/lstm_cell/ReadVariableOp_1в while/lstm_cell/ReadVariableOp_2в while/lstm_cell/ReadVariableOp_3в$while/lstm_cell/split/ReadVariableOpв&while/lstm_cell/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0Й
while/lstm_cell/ones_likeOnesLike0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*'
_output_shapes
:         =b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ы
while/lstm_cell/dropout/MulMulwhile/lstm_cell/ones_like:y:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         =x
while/lstm_cell/dropout/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧м
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╓
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╙
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_1/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_1/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_2/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_2/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Я
while/lstm_cell/dropout_3/MulMulwhile/lstm_cell/ones_like:y:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         =z
while/lstm_cell/dropout_3/ShapeShapewhile/lstm_cell/ones_like:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =f
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =n
while/lstm_cell/ones_like_1OnesLikewhile_placeholder_2*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_4/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_4/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_5/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_5/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_6/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_6/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?б
while/lstm_cell/dropout_7/MulMulwhile/lstm_cell/ones_like_1:y:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell/dropout_7/ShapeShapewhile/lstm_cell/ones_like_1:y:0*
T0*
_output_shapes
::э╧░
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▄
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         й
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =н
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes

:=@*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_splitЛ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         П
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ф
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes
:@*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splitШ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         Ь
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         Р
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         И
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
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
valueB"       v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЧ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         Ф
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         В
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         Е
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         Ж
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         К
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes

:@*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskЩ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ш
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         К
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         В

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
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2@
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC
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
╦}
в
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99486

inputs

states
states_1/
split_readvariableop_resource:=@-
split_1_readvariableop_resource:@)
readvariableop_resource:@
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpO
	ones_likeOnesLikeinputs*
T0*'
_output_shapes
:         =R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?k
dropout/MulMulones_like:y:0dropout/Const:output:0*
T0*'
_output_shapes
:         =X
dropout/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         =T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?o
dropout_1/MulMulones_like:y:0dropout_1/Const:output:0*
T0*'
_output_shapes
:         =Z
dropout_1/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧Р
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>м
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         =T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?o
dropout_2/MulMulones_like:y:0dropout_2/Const:output:0*
T0*'
_output_shapes
:         =Z
dropout_2/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧Р
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>м
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         =T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?o
dropout_3/MulMulones_like:y:0dropout_3/Const:output:0*
T0*'
_output_shapes
:         =Z
dropout_3/ShapeShapeones_like:y:0*
T0*
_output_shapes
::э╧Р
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:         =*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>м
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         =V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         =Q
ones_like_1OnesLikestates*
T0*'
_output_shapes
:         T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_4/MulMulones_like_1:y:0dropout_4/Const:output:0*
T0*'
_output_shapes
:         \
dropout_4/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_5/MulMulones_like_1:y:0dropout_5/Const:output:0*
T0*'
_output_shapes
:         \
dropout_5/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_6/MulMulones_like_1:y:0dropout_6/Const:output:0*
T0*'
_output_shapes
:         \
dropout_6/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?q
dropout_7/MulMulones_like_1:y:0dropout_7/Const:output:0*
T0*'
_output_shapes
:         \
dropout_7/ShapeShapeones_like_1:y:0*
T0*
_output_shapes
::э╧Р
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         _
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:         =c
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         =c
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         =c
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         =Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :r
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes

:=@*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:=:=:=:=*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         _
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         _
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         _
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : r
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
::::*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         c
mul_4Mulstatesdropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         c
mul_5Mulstatesdropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         c
mul_6Mulstatesdropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         c
mul_7Mulstatesdropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         f
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:@*
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
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    0   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         h
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes

:@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    0   h
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
_output_shapes

:*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         [

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         =:         :         : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         =
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
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
┬	
├
while_cond_101442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_101442___redundant_placeholder04
0while_while_cond_101442___redundant_placeholder14
0while_while_cond_101442___redundant_placeholder24
0while_while_cond_101442___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
и$
┴
while_body_99691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0)
while_lstm_cell_99715_0:=@%
while_lstm_cell_99717_0:@)
while_lstm_cell_99719_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor'
while_lstm_cell_99715:=@#
while_lstm_cell_99717:@'
while_lstm_cell_99719:@Ив'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    =   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         =*
element_dtype0а
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_99715_0while_lstm_cell_99717_0while_lstm_cell_99719_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_99677┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
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
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_99715while_lstm_cell_99715_0"0
while_lstm_cell_99717while_lstm_cell_99717_0"0
while_lstm_cell_99719while_lstm_cell_99719_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
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
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name99715:%	!

_user_specified_name99717:%
!

_user_specified_name99719"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┐
serving_defaultл
D
input;
serving_default_input:0                  =G
output=
StatefulPartitionedCall:0                  tensorflow/serving/predict:╛▒
╦
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
░
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
	#layer"
_tf_keras_layer
C
$0
%1
&2
'3
(4"
trackable_list_wrapper
C
$0
%1
&2
'3
(4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
├
.trace_0
/trace_12М
(__inference_model_9_layer_call_fn_100556
(__inference_model_9_layer_call_fn_100571╡
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
 z.trace_0z/trace_1
∙
0trace_0
1trace_12┬
C__inference_model_9_layer_call_and_return_conditional_losses_100287
C__inference_model_9_layer_call_and_return_conditional_losses_100541╡
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
 z0trace_0z1trace_1
╔B╞
 __inference__wrapped_model_99314input"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
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
┤
2
_variables
3_iterations
4_learning_rate
5_index_dict
6_velocities
7
_momentums
8_average_gradients
9_update_step_xla"
experimentalOptimizer
,
:serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ч
@trace_02╩
-__inference_input_masked_layer_call_fn_100621Ш
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
 z@trace_0
В
Atrace_02х
H__inference_input_masked_layer_call_and_return_conditional_losses_100632Ш
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
 zAtrace_0
5
$0
%1
&2"
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╪
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32э
&__inference_lstm1_layer_call_fn_100643
&__inference_lstm1_layer_call_fn_100654
&__inference_lstm1_layer_call_fn_100665
&__inference_lstm1_layer_call_fn_100676╩
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
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
─
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32┘
A__inference_lstm1_layer_call_and_return_conditional_losses_101039
A__inference_lstm1_layer_call_and_return_conditional_losses_101274
A__inference_lstm1_layer_call_and_return_conditional_losses_101637
A__inference_lstm1_layer_call_and_return_conditional_losses_101872╩
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
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
"
_generic_user_object
°
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

$kernel
%recurrent_kernel
&bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
┴
]trace_0
^trace_12К
'__inference_output_layer_call_fn_101881
'__inference_output_layer_call_fn_101890╡
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
 z]trace_0z^trace_1
ў
_trace_0
`trace_12└
B__inference_output_layer_call_and_return_conditional_losses_101912
B__inference_output_layer_call_and_return_conditional_losses_101934╡
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
 z_trace_0z`trace_1
╗
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
(:&=@2lstm1/lstm_cell/kernel
2:0@2 lstm1/lstm_cell/recurrent_kernel
": @2lstm1/lstm_cell/bias
:2output/kernel
:2output/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
g0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
(__inference_model_9_layer_call_fn_100556input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
хBт
(__inference_model_9_layer_call_fn_100571input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
АB¤
C__inference_model_9_layer_call_and_return_conditional_losses_100287input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
АB¤
C__inference_model_9_layer_call_and_return_conditional_losses_100541input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
J
30
h1
i2
j3
k4
l5"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
h0
i1
j2
k3
l4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡2▓п
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
 0
╠B╔
$__inference_signature_wrapper_100616input"Ч
Р▓М
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ	
jinput
kwonlydefaults
 
annotationsк *
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
╫B╘
-__inference_input_masked_layer_call_fn_100621inputs"Ш
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
ЄBя
H__inference_input_masked_layer_call_and_return_conditional_losses_100632inputs"Ш
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўBЇ
&__inference_lstm1_layer_call_fn_100643inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
&__inference_lstm1_layer_call_fn_100654inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
&__inference_lstm1_layer_call_fn_100665inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
&__inference_lstm1_layer_call_fn_100676inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
A__inference_lstm1_layer_call_and_return_conditional_losses_101039inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
A__inference_lstm1_layer_call_and_return_conditional_losses_101274inputs_0"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
A__inference_lstm1_layer_call_and_return_conditional_losses_101637inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
A__inference_lstm1_layer_call_and_return_conditional_losses_101872inputs"╜
╢▓▓
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
$0
%1
&2"
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
┼
rtrace_0
strace_12О
*__inference_lstm_cell_layer_call_fn_101951
*__inference_lstm_cell_layer_call_fn_101968│
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
 zrtrace_0zstrace_1
√
ttrace_0
utrace_12─
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102110
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102188│
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
 zttrace_0zutrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
'__inference_output_layer_call_fn_101881inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
хBт
'__inference_output_layer_call_fn_101890inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
АB¤
B__inference_output_layer_call_and_return_conditional_losses_101912inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
АB¤
B__inference_output_layer_call_and_return_conditional_losses_101934inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
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
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
т
{trace_02┼
(__inference_dense_9_layer_call_fn_102197Ш
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
 z{trace_0
¤
|trace_02р
C__inference_dense_9_layer_call_and_return_conditional_losses_102208Ш
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
 z|trace_0
O
}	variables
~	keras_api
	total

Аcount"
_tf_keras_metric
7:5=@2'RMSprop/velocity/lstm1/lstm_cell/kernel
A:?@21RMSprop/velocity/lstm1/lstm_cell/recurrent_kernel
1:/@2%RMSprop/velocity/lstm1/lstm_cell/bias
.:,2RMSprop/velocity/output/kernel
(:&2RMSprop/velocity/output/bias
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
■B√
*__inference_lstm_cell_layer_call_fn_101951inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
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
■B√
*__inference_lstm_cell_layer_call_fn_101968inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
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
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102110inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
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
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102188inputsstates_0states_1"о
з▓г
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
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
╥B╧
(__inference_dense_9_layer_call_fn_102197inputs"Ш
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
эBъ
C__inference_dense_9_layer_call_and_return_conditional_losses_102208inputs"Ш
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
/
0
А1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
:  (2total
:  (2countз
 __inference__wrapped_model_99314В$&%'(;в8
1в.
,К)
input                  =
к "<к9
7
output-К*
output                  к
C__inference_dense_9_layer_call_and_return_conditional_losses_102208c'(/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ Д
(__inference_dense_9_layer_call_fn_102197X'(/в,
%в"
 К
inputs         
к "!К
unknown         ┼
H__inference_input_masked_layer_call_and_return_conditional_losses_100632y<в9
2в/
-К*
inputs                  =
к "9в6
/К,
tensor_0                  =
Ъ Я
-__inference_input_masked_layer_call_fn_100621n<в9
2в/
-К*
inputs                  =
к ".К+
unknown                  =╫
A__inference_lstm1_layer_call_and_return_conditional_losses_101039С$&%OвL
EвB
4Ъ1
/К,
inputs_0                  =

 
p

 
к "9в6
/К,
tensor_0                  
Ъ ╫
A__inference_lstm1_layer_call_and_return_conditional_losses_101274С$&%OвL
EвB
4Ъ1
/К,
inputs_0                  =

 
p 

 
к "9в6
/К,
tensor_0                  
Ъ ╨
A__inference_lstm1_layer_call_and_return_conditional_losses_101637К$&%HвE
>в;
-К*
inputs                  =

 
p

 
к "9в6
/К,
tensor_0                  
Ъ ╨
A__inference_lstm1_layer_call_and_return_conditional_losses_101872К$&%HвE
>в;
-К*
inputs                  =

 
p 

 
к "9в6
/К,
tensor_0                  
Ъ ▒
&__inference_lstm1_layer_call_fn_100643Ж$&%OвL
EвB
4Ъ1
/К,
inputs_0                  =

 
p

 
к ".К+
unknown                  ▒
&__inference_lstm1_layer_call_fn_100654Ж$&%OвL
EвB
4Ъ1
/К,
inputs_0                  =

 
p 

 
к ".К+
unknown                  й
&__inference_lstm1_layer_call_fn_100665$&%HвE
>в;
-К*
inputs                  =

 
p

 
к ".К+
unknown                  й
&__inference_lstm1_layer_call_fn_100676$&%HвE
>в;
-К*
inputs                  =

 
p 

 
к ".К+
unknown                  ▐
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102110Ф$&%Ав}
vвs
 К
inputs         =
KвH
"К
states_0         
"К
states_1         
p
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▐
E__inference_lstm_cell_layer_call_and_return_conditional_losses_102188Ф$&%Ав}
vвs
 К
inputs         =
KвH
"К
states_0         
"К
states_1         
p 
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▒
*__inference_lstm_cell_layer_call_fn_101951В$&%Ав}
vвs
 К
inputs         =
KвH
"К
states_0         
"К
states_1         
p
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ▒
*__inference_lstm_cell_layer_call_fn_101968В$&%Ав}
vвs
 К
inputs         =
KвH
"К
states_0         
"К
states_1         
p 
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ╧
C__inference_model_9_layer_call_and_return_conditional_losses_100287З$&%'(Cв@
9в6
,К)
input                  =
p

 
к "9в6
/К,
tensor_0                  
Ъ ╧
C__inference_model_9_layer_call_and_return_conditional_losses_100541З$&%'(Cв@
9в6
,К)
input                  =
p 

 
к "9в6
/К,
tensor_0                  
Ъ и
(__inference_model_9_layer_call_fn_100556|$&%'(Cв@
9в6
,К)
input                  =
p

 
к ".К+
unknown                  и
(__inference_model_9_layer_call_fn_100571|$&%'(Cв@
9в6
,К)
input                  =
p 

 
к ".К+
unknown                  ╠
B__inference_output_layer_call_and_return_conditional_losses_101912Е'(DвA
:в7
-К*
inputs                  
p

 
к "9в6
/К,
tensor_0                  
Ъ ╠
B__inference_output_layer_call_and_return_conditional_losses_101934Е'(DвA
:в7
-К*
inputs                  
p 

 
к "9в6
/К,
tensor_0                  
Ъ е
'__inference_output_layer_call_fn_101881z'(DвA
:в7
-К*
inputs                  
p

 
к ".К+
unknown                  е
'__inference_output_layer_call_fn_101890z'(DвA
:в7
-К*
inputs                  
p 

 
к ".К+
unknown                  ┤
$__inference_signature_wrapper_100616Л$&%'(DвA
в 
:к7
5
input,К)
input                  ="<к9
7
output-К*
output                  