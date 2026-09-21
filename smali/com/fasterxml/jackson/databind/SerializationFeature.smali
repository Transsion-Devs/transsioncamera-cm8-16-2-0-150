.class public final enum Lcom/fasterxml/jackson/databind/SerializationFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_WITH_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUM_KEYS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_SELF_REFERENCES_AS_NULL:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 30

    .line 35
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v0, "WRAP_ROOT_VALUE"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v3, "INDENT_OUTPUT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 72
    new-instance v3, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v5, "FAIL_ON_EMPTY_BEANS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 84
    new-instance v5, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v6, "FAIL_ON_SELF_REFERENCES"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v6, v5

    .line 102
    new-instance v5, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v7, "WRAP_EXCEPTIONS"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v7, v6

    .line 116
    new-instance v6, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v8, "FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v8, v7

    .line 129
    new-instance v7, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v9, "WRITE_SELF_REFERENCES_AS_NULL"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SELF_REFERENCES_AS_NULL:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v9, v8

    .line 153
    new-instance v8, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v10, "CLOSE_CLOSEABLE"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v10, v9

    .line 167
    new-instance v9, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v11, "FLUSH_AFTER_WRITE_VALUE"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v11, v10

    .line 199
    new-instance v10, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v12, "WRITE_DATES_AS_TIMESTAMPS"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v12, v11

    .line 211
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v13, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v13, v12

    .line 232
    new-instance v12, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v14, "WRITE_DATES_WITH_ZONE_ID"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v14, v13

    .line 253
    new-instance v13, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v15, "WRITE_DATES_WITH_CONTEXT_TIME_ZONE"

    const/16 v2, 0xc

    invoke-direct {v13, v15, v2, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_WITH_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object v2, v14

    .line 270
    new-instance v14, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v15, "WRITE_DURATIONS_AS_TIMESTAMPS"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 280
    new-instance v15, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v0, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    const/16 v4, 0xe

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-direct {v15, v0, v4, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 292
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "WRITE_ENUMS_USING_TO_STRING"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v4, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 311
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "WRITE_ENUMS_USING_INDEX"

    move-object/from16 v21, v0

    const/16 v0, 0x10

    invoke-direct {v2, v4, v0, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 324
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "WRITE_ENUM_KEYS_USING_INDEX"

    move-object/from16 v22, v2

    const/16 v2, 0x11

    invoke-direct {v0, v4, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUM_KEYS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 340
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v2, "WRITE_NULL_MAP_VALUES"

    const/16 v4, 0x12

    move-object/from16 v23, v0

    const/4 v0, 0x1

    invoke-direct {v1, v2, v4, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 361
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "WRITE_EMPTY_JSON_ARRAYS"

    move-object/from16 v24, v1

    const/16 v1, 0x13

    invoke-direct {v2, v4, v1, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 385
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v1, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    const/16 v4, 0x14

    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 403
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "WRITE_BIGDECIMAL_AS_PLAIN"

    move-object/from16 v16, v0

    const/16 v0, 0x15

    invoke-direct {v1, v4, v0, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 421
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/16 v2, 0x16

    move-object/from16 v27, v1

    const/4 v1, 0x1

    invoke-direct {v0, v4, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 431
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "ORDER_MAP_ENTRIES_BY_KEYS"

    const/16 v1, 0x17

    move-object/from16 v28, v0

    const/4 v0, 0x0

    invoke-direct {v2, v4, v1, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 453
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v4, "EAGER_SERIALIZER_FETCH"

    const/16 v0, 0x18

    move-object/from16 v29, v2

    const/4 v2, 0x1

    invoke-direct {v1, v4, v0, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 474
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v2, "USE_EQUALITY_FOR_OBJECT_ID"

    const/16 v4, 0x19

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v4, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-object/from16 v1, v21

    move-object/from16 v21, v16

    move-object/from16 v16, v1

    move-object/from16 v26, v0

    move-object/from16 v2, v17

    move-object/from16 v1, v19

    move-object/from16 v4, v20

    move-object/from16 v17, v22

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v22, v27

    move-object/from16 v24, v29

    move-object/from16 v25, v18

    move-object/from16 v18, v23

    move-object/from16 v23, v28

    .line 16
    filled-new-array/range {v1 .. v26}, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 480
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 481
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    const/4 p1, 0x1

    .line 482
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationFeature;
    .registers 2

    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/SerializationFeature;
    .registers 1

    .line 16
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/SerializationFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .registers 1

    .line 486
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    return p0
.end method

.method public enabledIn(I)Z
    .registers 2

    .line 493
    iget p0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

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

    .line 490
    iget p0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    return p0
.end method
