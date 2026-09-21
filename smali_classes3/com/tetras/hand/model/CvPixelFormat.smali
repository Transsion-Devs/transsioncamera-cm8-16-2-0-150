.class public final enum Lcom/tetras/hand/model/CvPixelFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tetras/hand/model/CvPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tetras/hand/model/CvPixelFormat;

.field public static final enum BGR888:Lcom/tetras/hand/model/CvPixelFormat;

.field public static final enum BGRA8888:Lcom/tetras/hand/model/CvPixelFormat;

.field public static final enum GRAY8:Lcom/tetras/hand/model/CvPixelFormat;

.field public static final enum NV12:Lcom/tetras/hand/model/CvPixelFormat;

.field public static final enum NV21:Lcom/tetras/hand/model/CvPixelFormat;

.field public static final enum YUV420P:Lcom/tetras/hand/model/CvPixelFormat;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 5
    new-instance v0, Lcom/tetras/hand/model/CvPixelFormat;

    const-string v1, "GRAY8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tetras/hand/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/hand/model/CvPixelFormat;->GRAY8:Lcom/tetras/hand/model/CvPixelFormat;

    new-instance v1, Lcom/tetras/hand/model/CvPixelFormat;

    const-string v2, "YUV420P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/tetras/hand/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/CvPixelFormat;->YUV420P:Lcom/tetras/hand/model/CvPixelFormat;

    new-instance v2, Lcom/tetras/hand/model/CvPixelFormat;

    const-string v3, "NV12"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/tetras/hand/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tetras/hand/model/CvPixelFormat;->NV12:Lcom/tetras/hand/model/CvPixelFormat;

    new-instance v3, Lcom/tetras/hand/model/CvPixelFormat;

    const-string v4, "NV21"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/tetras/hand/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tetras/hand/model/CvPixelFormat;->NV21:Lcom/tetras/hand/model/CvPixelFormat;

    new-instance v4, Lcom/tetras/hand/model/CvPixelFormat;

    const-string v5, "BGRA8888"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/tetras/hand/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tetras/hand/model/CvPixelFormat;->BGRA8888:Lcom/tetras/hand/model/CvPixelFormat;

    new-instance v5, Lcom/tetras/hand/model/CvPixelFormat;

    const-string v6, "BGR888"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/tetras/hand/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tetras/hand/model/CvPixelFormat;->BGR888:Lcom/tetras/hand/model/CvPixelFormat;

    .line 3
    filled-new-array/range {v0 .. v5}, [Lcom/tetras/hand/model/CvPixelFormat;

    move-result-object v0

    sput-object v0, Lcom/tetras/hand/model/CvPixelFormat;->$VALUES:[Lcom/tetras/hand/model/CvPixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/tetras/hand/model/CvPixelFormat;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tetras/hand/model/CvPixelFormat;
    .registers 2

    .line 3
    const-class v0, Lcom/tetras/hand/model/CvPixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tetras/hand/model/CvPixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/tetras/hand/model/CvPixelFormat;
    .registers 1

    .line 3
    sget-object v0, Lcom/tetras/hand/model/CvPixelFormat;->$VALUES:[Lcom/tetras/hand/model/CvPixelFormat;

    invoke-virtual {v0}, [Lcom/tetras/hand/model/CvPixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tetras/hand/model/CvPixelFormat;

    return-object v0
.end method


# virtual methods
.method public getStride(Lcom/tetras/hand/model/CvPixelFormat;)I
    .registers 2

    .line 19
    sget-object p0, Lcom/tetras/hand/model/CvPixelFormat$1;->$SwitchMap$com$tetras$hand$model$CvPixelFormat:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_16

    const/4 p1, 0x2

    if-eq p0, p1, :cond_14

    const/4 p1, 0x3

    if-eq p0, p1, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    return p1

    :cond_14
    const/4 p0, 0x4

    return p0

    :cond_16
    return p1
.end method

.method public getValue()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/tetras/hand/model/CvPixelFormat;->nativeInt:I

    return p0
.end method
