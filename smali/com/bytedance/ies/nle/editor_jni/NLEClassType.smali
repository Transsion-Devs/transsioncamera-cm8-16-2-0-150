.class public final enum Lcom/bytedance/ies/nle/editor_jni/NLEClassType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/NLEClassType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/nle/editor_jni/NLEClassType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum CHROMA:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum EMOJI_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum FILTER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum IMAGE_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum INFO_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum MASK:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum MV:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum NONE:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum SUBTITLE_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum TEXT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum TEXT_TEMPLATE:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum TIME_EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum TRANSITION:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

.field public static final enum VIDEO_ANIMATION:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 15
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "NONE"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->NONE:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 19
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "VIDEO"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 23
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "AUDIO"

    const/4 v5, 0x3

    invoke-direct {v3, v0, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 27
    new-instance v4, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "IMAGE"

    const/4 v6, 0x4

    invoke-direct {v4, v0, v5, v6}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 31
    new-instance v5, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "TRANSITION"

    const/4 v7, 0x5

    invoke-direct {v5, v0, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->TRANSITION:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 35
    new-instance v6, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "EFFECT"

    const/4 v8, 0x6

    invoke-direct {v6, v0, v7, v8}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 39
    new-instance v7, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "FILTER"

    const/4 v9, 0x7

    invoke-direct {v7, v0, v8, v9}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 43
    new-instance v8, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "INFO_STICKER"

    const/16 v10, 0x8

    invoke-direct {v8, v0, v9, v10}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->INFO_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 47
    new-instance v9, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "IMAGE_STICKER"

    const/16 v11, 0x9

    invoke-direct {v9, v0, v10, v11}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->IMAGE_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 51
    new-instance v10, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "TEXT_STICKER"

    const/16 v12, 0xa

    invoke-direct {v10, v0, v11, v12}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->TEXT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 55
    new-instance v11, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "SUBTITLE_STICKER"

    const/16 v13, 0xb

    invoke-direct {v11, v0, v12, v13}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->SUBTITLE_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 59
    new-instance v12, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "EMOJI_STICKER"

    const/16 v14, 0xc

    invoke-direct {v12, v0, v13, v14}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->EMOJI_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 63
    new-instance v13, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "TIME_EFFECT"

    const/16 v15, 0xd

    invoke-direct {v13, v0, v14, v15}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->TIME_EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 67
    new-instance v14, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "TEXT_TEMPLATE"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v15, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->TEXT_TEMPLATE:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 68
    new-instance v15, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v0, "VIDEO_ANIMATION"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v15, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->VIDEO_ANIMATION:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 69
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v1, "MASK"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->MASK:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 70
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v2, "CHROMA"

    move-object/from16 v19, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->CHROMA:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 74
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    const-string v3, "MV"

    move-object/from16 v20, v1

    const/16 v1, 0x12

    invoke-direct {v2, v3, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->MV:Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v20

    .line 11
    filled-new-array/range {v1 .. v18}, [Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    # operator++ for: Lcom/bytedance/ies/nle/editor_jni/NLEClassType$SwigNext;->next:I
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 98
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEClassType$SwigNext;->next:I
    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/ies/nle/editor_jni/NLEClassType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEClassType;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iget p1, p3, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigValue:I

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 104
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEClassType$SwigNext;->next:I
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEClassType$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEClassType;
    .registers 7

    .line 81
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    .line 82
    array-length v2, v1

    if-ge p0, v2, :cond_14

    if-ltz p0, :cond_14

    aget-object v2, v1, p0

    iget v3, v2, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigValue:I

    if-ne v3, p0, :cond_14

    return-object v2

    .line 84
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 85
    iget v5, v4, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigValue:I

    if-ne v5, p0, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 87
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with value "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEClassType;
    .registers 2

    .line 11
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/nle/editor_jni/NLEClassType;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    invoke-virtual {v0}, [Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEClassType;->swigValue:I

    return p0
.end method
