.class Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 49
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->-$$Nest$fgetmVideoHDR(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;)Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    move-result-object p2

    if-eqz p2, :cond_1d

    if-eqz p1, :cond_1d

    array-length p2, p1

    if-lez p2, :cond_1d

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->-$$Nest$fgetmVideoHDR(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;)Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;

    move-result-object p0

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->onBVChanged(I)V

    :cond_1d
    return-void
.end method
