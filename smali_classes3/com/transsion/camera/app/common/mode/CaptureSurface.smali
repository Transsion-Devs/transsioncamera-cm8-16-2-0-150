.class public Lcom/transsion/camera/app/common/mode/CaptureSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/IBGSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;,
        Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;,
        Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;,
        Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    }
.end annotation


# static fields
.field private static final BGSERVICE_DISORDER_IMAGE:Z

.field private static final DEFAULT_MAX_IMAGE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBackgroundServiceType:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

.field private final mFormat:I

.field private final mHeight:I

.field private final mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

.field private final mId:I

.field private final mImageReader:Landroid/media/ImageReader;

.field private final mName:Ljava/lang/String;

.field private mPreReleaseTime:J

.field private mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

.field private mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

.field private final mWidth:I


# direct methods
.method public static synthetic $r8$lambda$YvGG-VNyjYiiBJZLaLIDBsUfl18(Lcom/transsion/camera/app/common/mode/CaptureSurface;Ljava/lang/Void;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->lambda$new$0(Ljava/lang/Void;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetBufferFromImage(Landroid/media/Image;)[B
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getBufferFromImage(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureSurface"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 44
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceDisorderImage:Z

    sput-boolean v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->BGSERVICE_DISORDER_IMAGE:Z

    if-eqz v0, :cond_16

    const/16 v0, 0x14

    goto :goto_17

    :cond_16
    const/4 v0, 0x1

    .line 45
    :goto_17
    sput v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->DEFAULT_MAX_IMAGE:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZLcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;)V
    .registers 19

    move-object/from16 v6, p8

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    .line 90
    sget-object v7, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CaptureSurface] name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    .line 93
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    .line 94
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mFormat:I

    move-object/from16 v0, p7

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBackgroundServiceType:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    .line 96
    iput-object v6, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    .line 97
    invoke-virtual {v6, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 98
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setRealReleaseSurface(Ljava/util/function/Consumer;)V

    if-eqz p6, :cond_59

    const-wide v0, 0x80000003L

    :goto_57
    move-wide v8, v0

    goto :goto_5c

    :cond_59
    const-wide/16 v0, 0x3

    goto :goto_57

    :goto_5c
    const/16 v0, 0x23

    if-ne v0, p4, :cond_82

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldForceConvertNV21()Z

    move-result v0

    if-eqz v0, :cond_82

    const-wide/32 v0, 0x2000000

    or-long v4, v8, v0

    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    .line 104
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    .line 105
    invoke-virtual {v6, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImageAvailableListener(Ljava/lang/String;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object p1

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    move-wide v4, v8

    goto :goto_98

    :cond_82
    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move-wide v4, v8

    .line 107
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    .line 108
    invoke-virtual {v6, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImageAvailableListener(Ljava/lang/String;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object p1

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 110
    :goto_98
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mId:I

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CaptureSurface: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", usage: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", mId: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;)V
    .registers 17

    .line 84
    sget v5, Lcom/transsion/camera/app/common/mode/CaptureSurface;->DEFAULT_MAX_IMAGE:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIIZLcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZLcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;Lcom/transsion/camera/app/common/mode/CaptureSurface-IA;)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIZLcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;)V

    return-void
.end method

.method private static getBufferFromImage(Landroid/media/Image;)[B
    .registers 7

    .line 324
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBufferFromImage: start timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_3a

    .line 328
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 329
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 331
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 332
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_44

    :cond_3a
    const/16 v2, 0x23

    if-ne v1, v2, :cond_43

    .line 336
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object v2

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    if-nez v2, :cond_49

    .line 340
    const-string v1, "null"

    goto :goto_5b

    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    :goto_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBufferFromImage: end timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", length = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method private synthetic lambda$new$0(Ljava/lang/Void;)V
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    return-void
.end method

.method private realReleaseSurface()V
    .registers 4

    .line 260
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realReleaseSurface, mIsReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isReleased()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_5e

    .line 264
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realReleaseSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onImageReaderClose()V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    if-eqz v0, :cond_57

    .line 270
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;->onSurfaceReleased(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 271
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    .line 273
    :cond_57
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz v0, :cond_5e

    .line 274
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureSurfaceReleased(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private shouldReleaseSurface()Z
    .registers 4

    .line 279
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldReleaseSurface mHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getPictureCount()I

    move-result v0

    if-nez v0, :cond_22

    const/4 p0, 0x1

    return p0

    .line 283
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->shouldReleaseSurface()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkNotifyBgOfflineErr()V
    .registers 5

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getPictureCount()I

    move-result v0

    .line 314
    sget-object v1, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkNotifyBgOfflineErr] leftPicCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez v0, :cond_28

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_28

    .line 317
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreasePicCount()V

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreaseCaptureCount()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_28
    return-void
.end method

.method public decreaseCaptureCount()V
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreaseCaptureCount()V

    return-void
.end method

.method public decreasePicCount()V
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreasePicCount()V

    return-void
.end method

.method public disableBGEnable()V
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->disableBGEnable()V

    return-void
.end method

.method public forceReleaseSurface()V
    .registers 4

    .line 301
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceReleaseSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getReleaseLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 303
    :try_start_1d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    .line 304
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getFormat()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 201
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    return p0
.end method

.method public getId()I
    .registers 1

    .line 146
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mId:I

    return p0
.end method

.method public getImageReader()Landroid/media/ImageReader;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getListener()Landroid/media/ImageReader$OnImageAvailableListener;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImageAvailableListener(Ljava/lang/String;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object p0

    return-object p0
.end method

.method public getPictureCount()I
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getPictureCount()I

    move-result p0

    return p0
.end method

.method public getPreReleaseTime()J
    .registers 3

    .line 256
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    return p0
.end method

.method public increaseCaptureCount()V
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->increaseCaptureCount()V

    return-void
.end method

.method public increasePicCount(J)V
    .registers 3

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->increasePicCount(J)V

    return-void
.end method

.method public isBGEnable()Z
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isEnable()Z

    move-result p0

    return p0
.end method

.method public isBGOfflineEnable()Z
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isEnable()Z

    move-result p0

    return p0
.end method

.method public isOfflineJniEnable()Z
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isEnable()Z

    move-result p0

    return p0
.end method

.method public isSurfaceDirty()Z
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isSurfaceDirty()Z

    move-result p0

    return p0
.end method

.method public isUserBGService()Z
    .registers 4

    .line 134
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUserBGService: mBackgroundServiceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBackgroundServiceType:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBackgroundServiceType:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    sget-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    if-ne p0, v0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isUserTZService()Z
    .registers 4

    .line 140
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUserTZService: mBackgroundServiceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBackgroundServiceType:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBackgroundServiceType:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    sget-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->TZ_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    if-ne p0, v0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6

    .line 308
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] notifyBgEventCallback event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onBGServiceDied()V
    .registers 3

    .line 246
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBGServiceDied"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onBGServiceDied()V

    return-void
.end method

.method public onPostAlgoServiceDied()V
    .registers 3

    .line 251
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPostAlgoServiceDied"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onBGServiceDied()V

    return-void
.end method

.method public releaseSurface()V
    .registers 5

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->shouldReleaseSurface()Z

    move-result v0

    .line 288
    sget-object v1, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , shouldReleaseSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getReleaseLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz v0, :cond_31

    .line 291
    :try_start_2b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    goto :goto_3d

    :catchall_2f
    move-exception p0

    goto :goto_3f

    .line 293
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCanReleaseCaptureSurface(Z)V

    .line 296
    :goto_3d
    monitor-exit v1

    return-void

    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_2f

    throw p0
.end method

.method public resetBGEnable(ZZ)V
    .registers 3

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->resetBGEnable(ZZ)V

    return-void
.end method

.method public setCameraProxy(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    instance-of v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;

    if-eqz v0, :cond_b

    .line 116
    check-cast p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->setCameraProxy(Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_b
    return-void
.end method

.method public setContinuousShot(Z)V
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setContinuousShot(Z)V

    return-void
.end method

.method public setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    return-void
.end method

.method public setProcessMediaManager(Lcom/transsion/camera/app/common/provider/ProcessMediaManager;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    return-void
.end method

.method public setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureSurface{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    .line 193
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getCaptureCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBGOfflineState(I)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHelper:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->updateBGOfflineState(I)V

    return-void
.end method
