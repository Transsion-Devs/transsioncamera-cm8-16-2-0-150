.class public final enum Lcom/fasterxml/jackson/databind/MapperFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_EXPLICIT_PROPERTY_RENAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_VOID_VALUED_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum APPLY_DEFAULT_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum IGNORE_DUPLICATE_MODULE_REGISTRATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum IGNORE_MERGE_FOR_UNMERGEABLE:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_BUILDER_TYPE_BINDINGS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum SORT_CREATOR_PROPERTIES_FIRST:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:J


# direct methods
.method static constructor <clinit>()V
    .registers 35

    .line 33
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v0, "USE_ANNOTATIONS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 51
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v4, "USE_GETTERS_AS_SETTERS"

    invoke-direct {v0, v4, v3, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 64
    new-instance v4, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v5, "PROPAGATE_TRANSIENT_MARKER"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v5, v4

    .line 86
    new-instance v4, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v6, "AUTO_DETECT_CREATORS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v6, v5

    .line 101
    new-instance v5, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v7, "AUTO_DETECT_FIELDS"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v7, v6

    .line 120
    new-instance v6, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v8, "AUTO_DETECT_GETTERS"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v8, v7

    .line 136
    new-instance v7, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v9, "AUTO_DETECT_IS_GETTERS"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v9, v8

    .line 152
    new-instance v8, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v10, "AUTO_DETECT_SETTERS"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v10, v9

    .line 163
    new-instance v9, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v11, "REQUIRE_SETTERS_FOR_GETTERS"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v11, v10

    .line 177
    new-instance v10, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v12, "ALLOW_FINAL_FIELDS_AS_MUTATORS"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v12, v11

    .line 195
    new-instance v11, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v13, "INFER_PROPERTY_MUTATORS"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v13, v12

    .line 214
    new-instance v12, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v14, "INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v14, v13

    .line 227
    new-instance v13, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v15, "ALLOW_VOID_VALUED_PROPERTIES"

    const/16 v3, 0xc

    invoke-direct {v13, v15, v3, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_VOID_VALUED_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object v3, v14

    .line 258
    new-instance v14, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v15, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    const/16 v2, 0xd

    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-direct {v14, v15, v2, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 277
    new-instance v15, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v2, "OVERRIDE_PUBLIC_ACCESS_MODIFIERS"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v15, v2, v1, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 300
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v1, "USE_STATIC_TYPING"

    const/16 v2, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 314
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v2, "USE_BASE_TYPE_AS_DEFAULT_IMPL"

    move-object/from16 v21, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 329
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v2, "INFER_BUILDER_TYPE_BINDINGS"

    const/16 v3, 0x11

    move-object/from16 v22, v1

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_BUILDER_TYPE_BINDINGS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 353
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "DEFAULT_VIEW_INCLUSION"

    move-object/from16 v23, v0

    const/16 v0, 0x12

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 378
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "SORT_PROPERTIES_ALPHABETICALLY"

    const/16 v1, 0x13

    move-object/from16 v24, v2

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 395
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "SORT_CREATOR_PROPERTIES_FIRST"

    const/16 v2, 0x14

    move-object/from16 v25, v0

    const/4 v0, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_CREATOR_PROPERTIES_FIRST:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 417
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v2, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    const/16 v3, 0x15

    move-object/from16 v26, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 432
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "ACCEPT_CASE_INSENSITIVE_ENUMS"

    move-object/from16 v27, v0

    const/16 v0, 0x16

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 446
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "ACCEPT_CASE_INSENSITIVE_VALUES"

    move-object/from16 v28, v2

    const/16 v2, 0x17

    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 460
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "USE_WRAPPER_NAME_AS_PROPERTY_NAME"

    move-object/from16 v29, v0

    const/16 v0, 0x18

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 476
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "USE_STD_BEAN_NAMING"

    move-object/from16 v30, v2

    const/16 v2, 0x19

    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 487
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "ALLOW_EXPLICIT_PROPERTY_RENAMING"

    move-object/from16 v31, v0

    const/16 v0, 0x1a

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_EXPLICIT_PROPERTY_RENAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 515
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v1, "ALLOW_COERCION_OF_SCALARS"

    const/16 v3, 0x1b

    move-object/from16 v32, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 540
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "IGNORE_DUPLICATE_MODULE_REGISTRATIONS"

    move-object/from16 v16, v0

    const/16 v0, 0x1c

    invoke-direct {v1, v3, v0, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_DUPLICATE_MODULE_REGISTRATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 553
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "IGNORE_MERGE_FOR_UNMERGEABLE"

    move-object/from16 v33, v1

    const/16 v1, 0x1d

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_MERGE_FOR_UNMERGEABLE:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 572
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v3, "BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES"

    const/16 v2, 0x1e

    move-object/from16 v34, v0

    const/4 v0, 0x0

    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 585
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v2, "APPLY_DEFAULT_VALUES"

    const/16 v3, 0x1f

    move-object/from16 v17, v1

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->APPLY_DEFAULT_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v29, v33

    move-object/from16 v30, v34

    move-object/from16 v28, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v26

    move-object/from16 v26, v31

    move-object/from16 v31, v17

    move-object/from16 v17, v22

    move-object/from16 v22, v27

    move-object/from16 v27, v32

    move-object/from16 v32, v0

    .line 17
    filled-new-array/range {v1 .. v32}, [Lcom/fasterxml/jackson/databind/MapperFeature;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 602
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 603
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    const-wide/16 p1, 0x1

    .line 604
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    return-void
.end method

.method public static collectLongDefaults()J
    .registers 7

    .line 594
    invoke-static {}, Lcom/fasterxml/jackson/databind/MapperFeature;->values()[Lcom/fasterxml/jackson/databind/MapperFeature;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_1a

    aget-object v5, v0, v4

    .line 595
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledByDefault()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 596
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->getLongMask()J

    move-result-wide v5

    or-long/2addr v2, v5

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1a
    return-wide v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/MapperFeature;
    .registers 2

    .line 17
    const-class v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/MapperFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/MapperFeature;
    .registers 1

    .line 17
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/MapperFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/MapperFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .registers 1

    .line 608
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    return p0
.end method

.method public enabledIn(J)Z
    .registers 5

    .line 631
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getLongMask()J
    .registers 3

    .line 620
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    return-wide v0
.end method

.method public getMask()I
    .registers 3

    .line 615
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    long-to-int p0, v0

    return p0
.end method
