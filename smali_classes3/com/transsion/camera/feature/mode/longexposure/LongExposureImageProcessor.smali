.class public Lcom/transsion/camera/feature/mode/longexposure/LongExposureImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
    }
.end annotation


# instance fields
.field private final mCapturePreviewCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    .line 35
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureImageProcessor;->mCapturePreviewCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private onPictureData([BIIIIZIJ)V
    .registers 16

    .line 40
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CapturePerformance] onPictureData in ImageProcessor, format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p5, 0x100

    if-ne p5, p2, :cond_23

    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move v3, p7

    move-wide v4, p8

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg([BZIJ)V

    return-void

    :cond_23
    move-object v0, p0

    move-object v1, p1

    const/16 p0, 0x11

    if-eq p0, p2, :cond_46

    const p0, 0x32315659

    if-ne p0, p2, :cond_2f

    goto :goto_46

    .line 50
    :cond_2f
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid image format: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_46
    :goto_46
    iget-object p0, v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureImageProcessor;->mCapturePreviewCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;

    if-eqz p0, :cond_53

    .line 47
    invoke-interface {p0, v1, p3, p4, p2}, Lcom/transsion/camera/feature/mode/longexposure/ICapturePreviewCallback;->onPreviewData([BIII)V

    :cond_53
    return-void
.end method


# virtual methods
.method protected isSupportedAcquirePhotoTimeout()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onPictureData(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 12

    .line 61
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getHeight()I

    move-result v4

    .line 62
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getOrientation()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getPicCountRemaining()I

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v8

    move-object v0, p0

    .line 61
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureImageProcessor;->onPictureData([BIIIIZIJ)V

    return-void
.end method
