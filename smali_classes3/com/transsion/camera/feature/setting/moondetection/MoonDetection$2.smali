.class Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$2;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 243
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkMoonDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_b

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$2;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->onDetected([I)V

    :cond_b
    return-void
.end method
