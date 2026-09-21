.class public Lcom/aiworks/android/livehdr/JniInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aiworks/android/livehdr/JniInterface$InitInfo;
    }
.end annotation


# static fields
.field public static final DEHAZE_TYPE_DEFOGGING:I = 0x1

.field public static final DEHAZE_TYPE_NONE:I = 0x0

.field public static final DEHAZE_TYPE_RN:I = 0x2

.field public static final FACE_DOWN:I = 0x2

.field public static final FACE_LEFT:I = 0x1

.field public static final FACE_RIGHT:I = 0x3

.field public static final FACE_UP:I = 0x0

.field public static final FORMAT_I420:I = 0x2

.field public static final FORMAT_NV12:I = 0x1

.field public static final FORMAT_NV21:I = 0x0

.field public static final FORMAT_RGB:I = 0x6

.field public static final FORMAT_RGBA:I = 0x7

.field public static final FORMAT_YUYV:I = 0x4

.field public static final FORMAT_YV12:I = 0x3

.field public static final FORMAT_YVYU:I = 0x5

.field public static final MNN_FORWARD_AUTO:I = 0x4

.field public static final MNN_FORWARD_CPU:I = 0x0

.field public static final MNN_FORWARD_METAL:I = 0x1

.field public static final MNN_FORWARD_MPS:I = 0x2

.field public static final MNN_FORWARD_NN:I = 0x5

.field public static final MNN_FORWARD_OPENCL:I = 0x3

.field public static final MNN_FORWARD_OPENGL:I = 0x6

.field public static final MNN_FORWARD_VULKAN:I = 0x7

.field public static final TYPE_LIGHTING:I = 0xb

.field public static final TYPE_NIGHT:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_UNDER_DIRECT:I = 0x3

.field public static final TYPE_UNDER_STD:I = 0x1

.field private static mInstance:Lcom/aiworks/android/livehdr/JniInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-string v0, "aw_livehdr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/aiworks/android/livehdr/JniInterface;->mInstance:Lcom/aiworks/android/livehdr/JniInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceOrientation(I)I
    .registers 3

    .line 42
    rem-int/lit16 p0, p0, 0x168

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_16

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_14

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x3

    return p0

    :cond_14
    const/4 p0, 0x2

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/aiworks/android/livehdr/JniInterface;
    .registers 2

    const-class v0, Lcom/aiworks/android/livehdr/JniInterface;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lcom/aiworks/android/livehdr/JniInterface;->mInstance:Lcom/aiworks/android/livehdr/JniInterface;

    if-nez v1, :cond_11

    .line 70
    new-instance v1, Lcom/aiworks/android/livehdr/JniInterface;

    invoke-direct {v1}, Lcom/aiworks/android/livehdr/JniInterface;-><init>()V

    sput-object v1, Lcom/aiworks/android/livehdr/JniInterface;->mInstance:Lcom/aiworks/android/livehdr/JniInterface;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 72
    :cond_11
    :goto_11
    sget-object v1, Lcom/aiworks/android/livehdr/JniInterface;->mInstance:Lcom/aiworks/android/livehdr/JniInterface;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public native destory()V
.end method

.method public native destoryFilter()V
.end method

.method public native drawFrame(I[FIIIII)I
.end method

.method public native drawTexture(IZ[FIII)V
.end method

.method public native drawWaterMark(FFFF[FI)V
.end method

.method public native drawYuvFrame([BII[B)V
.end method

.method public native getHist([F)V
.end method

.method public native getTextureBuffer(IIZ[FII[BIZ)V
.end method

.method public native init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public native initFilter(Z)V
.end method

.method public native initWaterMark([BII)V
.end method

.method public native processMask(I)V
.end method

.method public native processModule(Z)V
.end method

.method public native readPixelForMask(I[FII)V
.end method

.method public native readPixelForModule(I[FII)V
.end method

.method public native renderImage(Ljava/lang/String;ILcom/aiworks/android/livehdr/JniInterface$InitInfo;IIIZZZZIIIFFLjava/lang/String;[BIIILandroid/graphics/RectF;[F[B)V
.end method

.method public native reset()V
.end method

.method public native setCameraBrightnessValue(I)V
.end method

.method public native setDebuggable(Z)V
.end method

.method public native setDehazeParameters(IIIFF)V
.end method

.method public native setFaceRect([Landroid/graphics/RectF;)V
.end method

.method public native setHist([F)V
.end method

.method public native setParameters(IIIZZZZI)V
.end method
