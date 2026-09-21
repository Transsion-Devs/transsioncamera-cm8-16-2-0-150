.class public Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-void
.end method


# virtual methods
.method protected isOffLineSessionSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 8

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getPicCountRemaining()I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    return-void
.end method

.method protected onJpeg([BZIJ)V
    .registers 6

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const-wide/16 p4, -0x1

    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    return-void
.end method

.method public supportProcessingMedia()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
