.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# virtual methods
.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end method

.method public abstract getEntryRootView()Landroid/view/ViewGroup;
.end method

.method public abstract getEntryView()Landroid/view/View;
.end method

.method public abstract hideEntryView()V
.end method

.method public abstract initSettingUI(IILandroid/content/Context;)V
.end method

.method public abstract isEntryViewCreated()Z
.end method

.method public abstract isEntryViewRetained()Z
.end method

.method public abstract needShowOptionBar()Z
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onBackPressed(Z)Z
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onModePanelDistanceChanged(FZ)V
.end method

.method public abstract onPreviewClick()Z
.end method

.method public abstract onSettingOptionToggle(Ljava/lang/String;)V
.end method

.method public abstract overrideClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract overrideRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
.end method

.method public abstract overrideSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
.end method

.method public queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 71
    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0
.end method

.method public abstract releaseResource()V
.end method

.method public abstract restoreInteractiveView()V
.end method

.method public abstract setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
.end method

.method public abstract setBatteryStatus(II)V
.end method

.method public abstract setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
.end method

.method public abstract setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
.end method

.method public abstract setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
.end method

.method public abstract setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
.end method

.method public abstract setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
.end method

.method public abstract setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
.end method

.method public abstract setupEntryView()V
.end method

.method public abstract updateCameraState(I)V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updatePreviewRect(Landroid/graphics/Rect;)V
.end method
