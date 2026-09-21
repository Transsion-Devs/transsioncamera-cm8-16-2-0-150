.class Lcom/transsion/camera/app/common/mode/ImageProcessor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 5

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] mDataCallback notifyPictureTaken, isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", picCountRemaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getPicCountRemaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->imageAvailable()V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    new-instance v1, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setOrientation(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onPictureData(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    return-void
.end method

.method public onPictureTakenFail(J)V
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] mDataCallback notifyPictureTakenFail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->captureFail()V

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onPictureDataFail(J)V

    return-void
.end method
