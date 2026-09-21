.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI5;
.super Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;-><init>(Landroid/content/res/Resources;)V

    .line 18
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFilter:Z

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportEffect:Z

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFrame:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VidSigShockUIManagerUI5;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->init()V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->notifyCameraOperateAction(I)V

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 32
    :cond_b
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method
