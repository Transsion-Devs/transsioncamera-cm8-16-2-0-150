.class Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$1;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 76
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_11

    .line 77
    array-length p2, p1

    if-lez p2, :cond_11

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight$1;->this$0:Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/videosupernight/VideoSuperNight;->onBVChanged(I)V

    :cond_11
    return-void
.end method
