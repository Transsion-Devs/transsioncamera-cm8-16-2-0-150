.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .registers 2

    .line 916
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;II)V
    .registers 12

    .line 919
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgoDeferRequest()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 920
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object v2

    .line 921
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeSupportLivePhoto()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    :goto_25
    move v7, p0

    move v3, p2

    move v4, p3

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_25

    :goto_2b
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->cacheBuffer([BIIJZ)V

    :cond_2e
    return-void
.end method
