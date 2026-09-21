.class Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 43
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->-$$Nest$fgetmNightHawk(Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    move-result-object p2

    if-eqz p2, :cond_1d

    if-eqz p1, :cond_1d

    array-length p2, p1

    if-lez p2, :cond_1d

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->-$$Nest$fgetmNightHawk(Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    move-result-object p0

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onNighthawkChanged(I)V

    :cond_1d
    return-void
.end method
