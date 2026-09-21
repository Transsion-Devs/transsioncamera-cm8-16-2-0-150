.class public final enum Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stmobile/facebasejni/common/FaceCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CvPixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum ABGR8888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum BGR888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum BGRA8888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum FLOAT:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum FLOAT2:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum GRAY16:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum GRAY8:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum NV12:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum NV21:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum RGB565:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum RGB888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum RGBA8888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum YUV420P:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

.field public static final enum YUYV:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 25
    new-instance v0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v1, "GRAY8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->GRAY8:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 26
    new-instance v1, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v2, "YUV420P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->YUV420P:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 27
    new-instance v2, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v3, "NV12"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->NV12:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 28
    new-instance v3, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v4, "NV21"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->NV21:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 29
    new-instance v4, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v5, "BGRA8888"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->BGRA8888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 30
    new-instance v5, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v6, "BGR888"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->BGR888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 31
    new-instance v6, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v7, "RGBA8888"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->RGBA8888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 32
    new-instance v7, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v8, "RGB888"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->RGB888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 33
    new-instance v8, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v9, "GRAY16"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->GRAY16:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 34
    new-instance v9, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v10, "RGB565"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->RGB565:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 35
    new-instance v10, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v11, "ABGR8888"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->ABGR8888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 36
    new-instance v11, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v12, "FLOAT2"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->FLOAT2:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 37
    new-instance v12, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v13, "FLOAT"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->FLOAT:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 38
    new-instance v13, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    const-string v14, "YUYV"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->YUYV:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    .line 23
    filled-new-array/range {v0 .. v13}, [Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    move-result-object v0

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

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
    iput p3, p0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;
    .registers 2

    .line 23
    const-class v0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;
    .registers 1

    .line 23
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    invoke-virtual {v0}, [Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->nativeInt:I

    return p0
.end method
