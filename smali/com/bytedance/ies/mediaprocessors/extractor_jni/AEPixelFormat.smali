.class public final enum Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum BGR8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum BGRA8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum GRAY8:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum INVALID:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum NV12:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum NV21:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum RG8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum RGB8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum RGBA8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

.field public static final enum YUV420P:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 12
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const/4 v1, -0x1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->INVALID:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 13
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v2, "RGBA8UNORM"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->RGBA8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 14
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v3, "BGRA8UNORM"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->BGRA8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 15
    new-instance v3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v4, "BGR8UNORM"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->BGR8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 16
    new-instance v4, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v5, "RGB8UNORM"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->RGB8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 17
    new-instance v5, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v6, "GRAY8"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->GRAY8:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 18
    new-instance v6, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v7, "YUV420P"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->YUV420P:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 19
    new-instance v7, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v8, "NV12"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->NV12:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 20
    new-instance v8, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v9, "NV21"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->NV21:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 21
    new-instance v9, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    const-string v10, "RG8UNORM"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v12, v11}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->RG8UNORM:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 11
    filled-new-array/range {v0 .. v9}, [Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->$VALUES:[Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    # operator++ for: Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat$SwigNext;->next:I
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 45
    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat$SwigNext;->next:I
    invoke-static {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iget p1, p3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue:I

    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 51
    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat$SwigNext;->next:I
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;
    .registers 7

    .line 28
    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    .line 29
    array-length v2, v1

    if-ge p0, v2, :cond_14

    if-ltz p0, :cond_14

    aget-object v2, v1, p0

    iget v3, v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue:I

    if-ne v3, p0, :cond_14

    return-object v2

    .line 31
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 32
    iget v5, v4, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue:I

    if-ne v5, p0, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 34
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;
    .registers 2

    .line 11
    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->$VALUES:[Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    invoke-virtual {v0}, [Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AEPixelFormat;->swigValue:I

    return p0
.end method
