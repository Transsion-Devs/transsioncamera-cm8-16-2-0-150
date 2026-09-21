.class Lcom/transsion/camera/app/common/mode/ImageProcessor$4;
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

    .line 515
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 12

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] mPostViewCallback notifyPictureTaken"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getHeight()I

    move-result v6

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget v7, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    .line 520
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v8

    .line 519
    invoke-virtual/range {v2 .. v9}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onPostViewData([BIIIIJ)V

    return-void
.end method

.method public onPictureTakenFail(J)V
    .registers 3

    return-void
.end method
