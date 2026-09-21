.class Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFail()V
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->onCaptureFail()V

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 5

    .line 116
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiForceSaveRequest()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->access$000(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    .line 119
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->onCaptureShot([B)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->onCaptureStart()V

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->onPreviewShot([B)V

    return-void
.end method
