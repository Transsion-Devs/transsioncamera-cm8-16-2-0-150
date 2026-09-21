.class public Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
    }
.end annotation


# instance fields
.field private final mSupportSuperNightCountDownTime:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;Z)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    .line 17
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;->mSupportSuperNightCountDownTime:Z

    return-void
.end method


# virtual methods
.method protected isOffLineSessionSupport()Z
    .registers 2

    .line 27
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public supportProcessingMedia()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;->mSupportSuperNightCountDownTime:Z

    return p0
.end method
