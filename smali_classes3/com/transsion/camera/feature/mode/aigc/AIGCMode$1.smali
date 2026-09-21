.class Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/AIGCMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureEnd([B)V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V
    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->access$100(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;[B)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->access$200(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onCaptureEnd([B)V

    return-void
.end method

.method public onCaptureFail()V
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onCaptureFail()V

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 5

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiForceSaveRequest()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->access$000(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    .line 118
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onCaptureShot([B)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onCaptureStart()V

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onPreviewShot([B)V

    return-void
.end method
