.class public final enum Lcom/singleblur/faceapi/model/ColorConvertType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/ColorConvertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum BGRA2RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV122BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV122RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV212BGR:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV212BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV212RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum RGBA2BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum RGBA2NV12:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum RGBA2NV21:Lcom/singleblur/faceapi/model/ColorConvertType;


# instance fields
.field final nativeInt:I


# direct methods
.method private static synthetic $values()[Lcom/singleblur/faceapi/model/ColorConvertType;
    .registers 9

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v1, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v2, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2NV21:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v3, Lcom/singleblur/faceapi/model/ColorConvertType;->NV122BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v4, Lcom/singleblur/faceapi/model/ColorConvertType;->BGRA2RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v5, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2NV12:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v6, Lcom/singleblur/faceapi/model/ColorConvertType;->NV122RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v7, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    sget-object v8, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212BGR:Lcom/singleblur/faceapi/model/ColorConvertType;

    filled-new-array/range {v0 .. v8}, [Lcom/singleblur/faceapi/model/ColorConvertType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 5
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v1, "NV212BGRA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 6
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v1, "NV212RGBA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 7
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v1, "RGBA2NV21"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2NV21:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 8
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v1, "NV122BGRA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->NV122BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 9
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const/4 v1, 0x4

    const/16 v3, 0xe

    const-string v4, "BGRA2RGBA"

    invoke-direct {v0, v4, v1, v3}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->BGRA2RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 10
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v1, "RGBA2NV12"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2NV12:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 11
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const/4 v1, 0x6

    const/16 v2, 0x15

    const-string v3, "NV122RGBA"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->NV122RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 12
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const/4 v1, 0x7

    const/16 v2, 0x65

    const-string v3, "RGBA2BGRA"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 13
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const/16 v1, 0x8

    const/16 v2, 0x3e9

    const-string v3, "NV212BGR"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212BGR:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 3
    invoke-static {}, Lcom/singleblur/faceapi/model/ColorConvertType;->$values()[Lcom/singleblur/faceapi/model/ColorConvertType;

    move-result-object v0

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->$VALUES:[Lcom/singleblur/faceapi/model/ColorConvertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/singleblur/faceapi/model/ColorConvertType;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/ColorConvertType;
    .registers 2

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/ColorConvertType;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/ColorConvertType;
    .registers 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->$VALUES:[Lcom/singleblur/faceapi/model/ColorConvertType;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/ColorConvertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/ColorConvertType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/singleblur/faceapi/model/ColorConvertType;->nativeInt:I

    return p0
.end method
