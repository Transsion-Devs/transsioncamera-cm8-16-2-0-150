.class public final enum Lcom/fasterxml/jackson/databind/DeserializationFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_UNRESOLVED_OBJECT_IDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 31

    .line 49
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v0, "USE_BIG_DECIMAL_FOR_FLOATS"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 67
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "USE_BIG_INTEGER_FOR_INTS"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 88
    new-instance v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v5, "USE_LONG_FOR_INTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 99
    new-instance v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v6, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v6, v5

    .line 121
    new-instance v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v7, "FAIL_ON_UNKNOWN_PROPERTIES"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v7, v6

    .line 132
    new-instance v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v8, "FAIL_ON_NULL_FOR_PRIMITIVES"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v8, v7

    .line 146
    new-instance v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v9, "FAIL_ON_NUMBERS_FOR_ENUMS"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v9, v8

    .line 159
    new-instance v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v10, "FAIL_ON_INVALID_SUBTYPE"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v10, v9

    .line 176
    new-instance v9, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v11, "FAIL_ON_READING_DUP_TREE_KEY"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v11, v10

    .line 187
    new-instance v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v12, "FAIL_ON_IGNORED_PROPERTIES"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v12, v11

    .line 203
    new-instance v11, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v13, "FAIL_ON_UNRESOLVED_OBJECT_IDS"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNRESOLVED_OBJECT_IDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v13, v12

    .line 224
    new-instance v12, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v14, "FAIL_ON_MISSING_CREATOR_PROPERTIES"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v14, v13

    .line 237
    new-instance v13, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v15, "FAIL_ON_NULL_CREATOR_PROPERTIES"

    const/16 v4, 0xc

    invoke-direct {v13, v15, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object v4, v14

    .line 251
    new-instance v14, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v15, "FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY"

    const/16 v2, 0xd

    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-direct {v14, v15, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 271
    new-instance v15, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v2, "FAIL_ON_TRAILING_TOKENS"

    const/16 v0, 0xe

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-direct {v15, v2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 294
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v2, "WRAP_EXCEPTIONS"

    const/16 v1, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 313
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v2, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    const/16 v3, 0x10

    move-object/from16 v21, v0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 326
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "UNWRAP_SINGLE_VALUE_ARRAYS"

    move-object/from16 v17, v1

    const/16 v1, 0x11

    invoke-direct {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 338
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "UNWRAP_ROOT_VALUE"

    move-object/from16 v22, v2

    const/16 v2, 0x12

    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 362
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    move-object/from16 v23, v1

    const/16 v1, 0x13

    invoke-direct {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 378
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT"

    move-object/from16 v24, v2

    const/16 v2, 0x14

    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 392
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "ACCEPT_FLOAT_AS_INT"

    const/16 v0, 0x15

    move-object/from16 v26, v1

    const/4 v1, 0x1

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 405
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v1, "READ_ENUMS_USING_TO_STRING"

    const/16 v3, 0x16

    move-object/from16 v27, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 420
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "READ_UNKNOWN_ENUM_VALUES_AS_NULL"

    move-object/from16 v25, v0

    const/16 v0, 0x17

    invoke-direct {v1, v3, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 432
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE"

    move-object/from16 v28, v1

    const/16 v1, 0x18

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 449
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v2, "READ_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/16 v3, 0x19

    move-object/from16 v29, v0

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 473
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    move-object/from16 v16, v1

    const/16 v1, 0x1a

    invoke-direct {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 495
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const-string v3, "EAGER_DESERIALIZER_FETCH"

    move-object/from16 v30, v2

    const/16 v2, 0x1b

    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object/from16 v2, v26

    move-object/from16 v26, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v18, v22

    move-object/from16 v20, v24

    move-object/from16 v22, v27

    move-object/from16 v24, v28

    move-object/from16 v27, v30

    move-object/from16 v28, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v29

    .line 21
    filled-new-array/range {v1 .. v28}, [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 502
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 503
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_defaultState:Z

    const/4 p1, 0x1

    .line 504
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .registers 2

    .line 21
    const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .registers 1

    .line 21
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/DeserializationFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .registers 1

    .line 508
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_defaultState:Z

    return p0
.end method

.method public enabledIn(I)Z
    .registers 2

    .line 514
    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public getMask()I
    .registers 1

    .line 511
    iget p0, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_mask:I

    return p0
.end method
