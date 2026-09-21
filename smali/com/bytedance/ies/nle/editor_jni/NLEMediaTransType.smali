.class public final enum Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

.field public static final enum NONE:Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

.field public static final enum PATH:Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

.field public static final enum ZOOM:Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 15
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->NONE:Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    .line 16
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    const-string v2, "PATH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->PATH:Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    .line 17
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    const-string v3, "ZOOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->ZOOM:Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    .line 14
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    # operator++ for: Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType$SwigNext;->next:I
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 41
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType$SwigNext;->next:I
    invoke-static {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iget p1, p3, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue:I

    iput p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 47
    # setter for: Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType$SwigNext;->next:I
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;
    .registers 7

    .line 24
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    .line 25
    array-length v2, v1

    if-ge p0, v2, :cond_14

    if-ltz p0, :cond_14

    aget-object v2, v1, p0

    iget v3, v2, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue:I

    if-ne v3, p0, :cond_14

    return-object v2

    .line 27
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 28
    iget v5, v4, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue:I

    if-ne v5, p0, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 30
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;
    .registers 2

    .line 14
    const-class v0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;
    .registers 1

    .line 14
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->$VALUES:[Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    invoke-virtual {v0}, [Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaTransType;->swigValue:I

    return p0
.end method
