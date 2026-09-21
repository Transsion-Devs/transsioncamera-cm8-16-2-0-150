.class public Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
    }
.end annotation


# static fields
.field public static final MSG_DOC_PHOTO_HANDLE:I = 0x1

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBitmapFromByte:Landroid/graphics/Bitmap;

.field private mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

.field private mIntensity:Ljava/lang/String;

.field private mJpeg:[B

.field private mShouldDisplay:Z

.field protected xnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mBitmapFromByte:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntensity(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mIntensity:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJpeg(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldDisplay(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBitmapFromByte(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mBitmapFromByte:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIntensity(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mIntensity:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmJpeg(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[B)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldDisplay(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DocumentImageProcessor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    .line 42
    sget-object p1, Lcom/youtu/ocr/ximage/DocDetector;->sharedInstance:Lcom/youtu/ocr/ximage/DocDetector;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;

    .line 48
    const-string p1, "0.0"

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mIntensity:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V
    .registers 6

    .line 40
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V
    .registers 6

    .line 40
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V
    .registers 6

    .line 40
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/location/LocationManager;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;ZJ)V
    .registers 6

    .line 40
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method


# virtual methods
.method public getBitmapForShow()Landroid/graphics/Bitmap;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mBitmapFromByte:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method protected isOffLineSessionSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 8

    .line 62
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v4

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method protected onJpeg([BZIJ)V
    .registers 6

    move p3, p2

    const/4 p2, 0x0

    .line 57
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method public saveJpegToFile(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V
    .registers 9

    .line 90
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v4

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method public saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V
    .registers 13

    .line 67
    sget-boolean v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-nez v0, :cond_11

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    .line 69
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void

    .line 72
    :cond_11
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_30

    .line 73
    new-instance p2, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p0, p4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    .line 75
    :cond_30
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 77
    iput p4, p2, Landroid/os/Message;->what:I

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    if-eqz p3, :cond_44

    .line 80
    iput p4, p2, Landroid/os/Message;->arg1:I

    goto :goto_47

    :cond_44
    const/4 p1, 0x0

    .line 82
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 84
    :goto_47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setIntensity(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mIntensity:Ljava/lang/String;

    return-void
.end method

.method public shouldDiaplay()Z
    .registers 1

    .line 212
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    return p0
.end method

.method public supportProcessingMedia()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public updateThumbnail(Landroid/net/Uri;)V
    .registers 8

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    .line 218
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doOnFileSaved(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mBitmapFromByte:Landroid/graphics/Bitmap;

    return-void
.end method
