.class public final enum Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

.field public static final enum BrickAnimator:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

.field public static final enum BrickBackground:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

.field public static final enum BrickBlendShape:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

.field public static final enum BrickMainBody:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

.field public static final enum BrickMainLight:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 12
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    const-string v1, "BrickAnimator"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->BrickAnimator:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    .line 13
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    const-string v2, "BrickBackground"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->BrickBackground:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    .line 14
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    const-string v3, "BrickBlendShape"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->BrickBlendShape:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    .line 15
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    const-string v4, "BrickMainBody"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->BrickMainBody:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    .line 16
    new-instance v4, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    const-string v5, "BrickMainLight"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->BrickMainLight:Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    # operator++ for: Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType$SwigNext;->next:I
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 40
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType$SwigNext;->next:I
    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iget p1, p3, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue:I

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 46
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType$SwigNext;->next:I
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;
    .registers 7

    .line 23
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    .line 24
    array-length v2, v1

    if-ge p0, v2, :cond_14

    if-ltz p0, :cond_14

    aget-object v2, v1, p0

    iget v3, v2, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue:I

    if-ne v3, p0, :cond_14

    return-object v2

    .line 26
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 27
    iget v5, v4, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue:I

    if-ne v5, p0, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 29
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;
    .registers 2

    .line 11
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    invoke-virtual {v0}, [Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrickEffectType;->swigValue:I

    return p0
.end method
