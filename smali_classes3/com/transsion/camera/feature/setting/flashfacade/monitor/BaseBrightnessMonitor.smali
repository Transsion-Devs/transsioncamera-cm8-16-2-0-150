.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor;


# instance fields
.field protected mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

.field protected final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field protected mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->NONE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-void
.end method


# virtual methods
.method protected facingFront()Z
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p0

    return p0
.end method

.method protected getCurrentCameraType()I
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getCurrentCameraType()I

    move-result p0

    return p0
.end method

.method protected isFlashAuto()Z
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isFlashOff()Z
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public monitorType()Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    return-object p0
.end method

.method public onFlashFire()V
    .registers 1

    return-void
.end method

.method public onFlashRequired(Z)V
    .registers 2

    return-void
.end method

.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    monitor-enter v0

    .line 60
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->onFrameResultLocked(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 61
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method protected onFrameResultLocked(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    return-void
.end method

.method protected ringScreenLightOn()Z
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const-string v0, "key_ring_screen_light"

    .line 88
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected ringScreenLightSupport()Z
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const-string v0, "key_ring_screen_light"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setBrightnessCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

    return-void
.end method

.method public startMonitor()V
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendCommandChangeRequest()V

    return-void
.end method

.method public stopMonitor()V
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendCommandChangeRequest()V

    return-void
.end method
