.class public final enum Lcom/bytedance/ies/nle/editor_jni/NLETrackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/NLETrackType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/nle/editor_jni/NLETrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum EFFECT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum MV:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum NONE:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

.field public static final enum VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 15
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->NONE:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 19
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v2, "AUDIO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 23
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v3, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 27
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v4, "STICKER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 31
    new-instance v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v5, "EFFECT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 35
    new-instance v5, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v6, "FILTER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 39
    new-instance v6, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v7, "IMAGE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 43
    new-instance v7, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v8, "MV"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->MV:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 47
    new-instance v8, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v9, "EFFECT_STICKER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 11
    filled-new-array/range {v0 .. v8}, [Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    # operator++ for: Lcom/bytedance/ies/nle/editor_jni/NLETrackType$SwigNext;->next:I
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 71
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLETrackType$SwigNext;->next:I
    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/ies/nle/editor_jni/NLETrackType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLETrackType;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iget p1, p3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue:I

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 77
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLETrackType$SwigNext;->next:I
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackType;
    .registers 7

    .line 54
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    .line 55
    array-length v2, v1

    if-ge p0, v2, :cond_14

    if-ltz p0, :cond_14

    aget-object v2, v1, p0

    iget v3, v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue:I

    if-ne v3, p0, :cond_14

    return-object v2

    .line 57
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 58
    iget v5, v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue:I

    if-ne v5, p0, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 60
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLETrackType;
    .registers 2

    .line 11
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/nle/editor_jni/NLETrackType;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v0}, [Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->swigValue:I

    return p0
.end method
