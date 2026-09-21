.class public Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
    }
.end annotation


# instance fields
.field private mArcFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    .line 27
    const-string p1, "-1"

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected algorithmProcess([BIIII)[B
    .registers 6

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .registers 2

    .line 25
    check-cast p1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->onTakePicture(Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;)V

    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;)V
    .registers 4

    .line 36
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    .line 37
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;->mArcFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTakePicture asdCaptureInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
