.class public final enum Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

.field public static final enum BEZIER:Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

.field public static final enum LINEAR:Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 15
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->LINEAR:Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    .line 19
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    const-string v2, "BEZIER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->BEZIER:Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    .line 11
    filled-new-array {v0, v1}, [Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    # operator++ for: Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType$SwigNext;->next:I
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 43
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType$SwigNext;->next:I
    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iget p1, p3, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue:I

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 49
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType$SwigNext;->next:I
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;
    .registers 7

    .line 26
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    .line 27
    array-length v2, v1

    if-ge p0, v2, :cond_14

    if-ltz p0, :cond_14

    aget-object v2, v1, p0

    iget v3, v2, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue:I

    if-ne v3, p0, :cond_14

    return-object v2

    .line 29
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 30
    iget v5, v4, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue:I

    if-ne v5, p0, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 32
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;
    .registers 2

    .line 11
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    invoke-virtual {v0}, [Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEKeyframeGraphType;->swigValue:I

    return p0
.end method
