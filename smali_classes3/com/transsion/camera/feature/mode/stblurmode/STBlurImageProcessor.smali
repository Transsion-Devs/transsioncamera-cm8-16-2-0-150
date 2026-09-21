.class public Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
    }
.end annotation


# instance fields
.field private volatile mAlgorithmReleased:Z

.field private mSTBlur:Z

.field private mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mSTBlur:Z

    return-void
.end method


# virtual methods
.method protected algorithmProcess([BIIII)[B
    .registers 7

    .line 58
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result p2

    if-nez p2, :cond_e

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "STBlur capture algorithm is not migrated"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 62
    :cond_e
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mAlgorithmReleased:Z

    if-eqz p2, :cond_1a

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "algorithmProcess algorithm has released"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 66
    :cond_1a
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-nez p2, :cond_26

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mSTBlurCapture is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 70
    :cond_26
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mSTBlur:Z

    if-nez v0, :cond_32

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mSTBlur is off, maybe the lens has been covered"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_32
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->processCaptureBlur([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method protected algorithmProcessPostView([BIIII)[B
    .registers 6

    return-object p1
.end method

.method initSTBlurCapture()V
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-eqz p0, :cond_7

    .line 38
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->initSTBlur()V

    :cond_7
    return-void
.end method

.method protected releaseAlgorithm()V
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->releaseAlgorithm()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mAlgorithmReleased:Z

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    if-eqz p0, :cond_d

    .line 52
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;->unInitSTBlur()V

    :cond_d
    return-void
.end method

.method setSTBlurCapture(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurCapture;

    return-void
.end method

.method updateSTBlurValue(Z)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSTBlurValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->mSTBlur:Z

    return-void
.end method
