.class public Lcom/bytedance/labcv/effectsdk/PhotoNightScene;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private mHeight:I

.field private mInited:Z

.field private mNativePtr:J

.field private mResultBuffer:Ljava/nio/ByteBuffer;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :goto_a
    const-string v0, "PhotoNightScene"

    sput-object v0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mNativePtr:J

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mInited:Z

    .line 23
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mWidth:I

    .line 24
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mHeight:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mResultBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreate(Ljava/lang/String;IIII)I
.end method

.method private native nativeProcess([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->nativeRelease()V

    return-void
.end method

.method public getHeight()I
    .registers 1

    .line 32
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mHeight:I

    return p0
.end method

.method public getResultBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mResultBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mWidth:I

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIZ)I
    .registers 15

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mInited:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->nativeCreate(Ljava/lang/String;IIII)I

    move-result p0

    if-eqz p0, :cond_13

    return p0

    .line 49
    :cond_13
    invoke-direct {v0, p1, p2, p8}, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    if-nez p0, :cond_1c

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, v0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mInited:Z

    .line 53
    :cond_1c
    iput v2, v0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mWidth:I

    .line 54
    iput v3, v0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mHeight:I

    return p0
.end method

.method public process([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 59
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 63
    :cond_6
    iget-object v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mResultBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_22

    .line 64
    iget v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mHeight:I

    iget v2, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mWidth:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 65
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mResultBuffer:Ljava/nio/ByteBuffer;

    .line 67
    :cond_22
    iget-object v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mResultBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    array-length v0, p1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_39

    array-length v0, p1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_31

    goto :goto_39

    .line 75
    :cond_31
    sget-object p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->TAG:Ljava/lang/String;

    const-string p1, "process: invalid input size should equals 4 or 6"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 70
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mResultBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->nativeProcess([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eqz p1, :cond_42

    return-object v1

    .line 79
    :cond_42
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/PhotoNightScene;->mResultBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method
