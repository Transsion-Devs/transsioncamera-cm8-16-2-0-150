.class public final enum Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum ANY:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum COMPLETED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum ENGINE_NOT_CRATED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum IDLE:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum PAUSED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum PREPARED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum SEEKING:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum STARTED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

.field public static final enum STOPPED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 12
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->ANY:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 13
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v2, "IDLE"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->IDLE:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 14
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v3, "PREPARED"

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-direct {v2, v3, v5, v6}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PREPARED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 15
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v5, "STARTED"

    const/4 v7, 0x6

    invoke-direct {v3, v5, v4, v7}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STARTED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 16
    new-instance v4, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v5, "PAUSED"

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-direct {v4, v5, v8, v9}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PAUSED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 17
    new-instance v5, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v8, "SEEKING"

    const/16 v10, 0x8

    invoke-direct {v5, v8, v6, v10}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->SEEKING:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 18
    new-instance v6, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v8, "STOPPED"

    const/16 v11, 0x9

    invoke-direct {v6, v8, v7, v11}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STOPPED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 19
    new-instance v7, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v8, "COMPLETED"

    const/16 v11, 0xa

    invoke-direct {v7, v8, v9, v11}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->COMPLETED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 20
    new-instance v8, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    const-string v9, "ENGINE_NOT_CRATED"

    const/16 v11, 0xb

    invoke-direct {v8, v9, v10, v11}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->ENGINE_NOT_CRATED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 11
    filled-new-array/range {v0 .. v8}, [Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    # operator++ for: Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState$SwigNext;->next:I
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 44
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState$SwigNext;->next:I
    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/ies/nle/editor_jni/NLEPlayerState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iget p1, p3, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigValue:I

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 50
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState$SwigNext;->next:I
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
    .registers 7

    .line 27
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    .line 28
    array-length v2, v1

    if-ge p0, v2, :cond_14

    if-ltz p0, :cond_14

    aget-object v2, v1, p0

    iget v3, v2, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigValue:I

    if-ne v3, p0, :cond_14

    return-object v2

    .line 30
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 31
    iget v5, v4, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigValue:I

    if-ne v5, p0, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 33
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
    .registers 2

    .line 11
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v0}, [Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .registers 1

    .line 23
    iget p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->swigValue:I

    return p0
.end method
