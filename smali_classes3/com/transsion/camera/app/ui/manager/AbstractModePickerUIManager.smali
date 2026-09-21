.class public abstract Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModeRegionControl;


# instance fields
.field protected mIsSecureCamera:Z

.field protected mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field protected mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 8

    .line 54
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method


# virtual methods
.method public abstract abortShowOrHideModePickerRootUI()V
.end method

.method public exitModeOnMoreTab()V
    .registers 1

    return-void
.end method

.method public abstract flashModeListCurrentCamera()V
.end method

.method protected generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 9

    .line 256
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2a

    aget-object v2, p1, v1

    .line 259
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 260
    iget-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 261
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2a
    return-object p0
.end method

.method public abstract hideModeRegion()V
.end method

.method public abstract isModeTabScrolling()Z
.end method

.method public abstract modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
.end method

.method public abstract modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
.end method

.method public onSwitchModeByAppUI(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public pause()V
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    .line 87
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    :cond_b
    return-void
.end method

.method public abstract performTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract resetMoreModeToNormal()V
.end method

.method public abstract restoreCurrentModeByFacing(I)V
.end method

.method public resume()V
    .registers 2

    .line 76
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    .line 78
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    :cond_b
    return-void
.end method

.method public abstract setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
.end method

.method public abstract setModeOpaque()V
.end method

.method public setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public abstract setModeUnOpaque()V
.end method

.method public setPreviewSize(II)V
    .registers 3

    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    return-void
.end method

.method public setSecureCamera(Z)V
    .registers 2

    .line 111
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mIsSecureCamera:Z

    return-void
.end method

.method public abstract setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
.end method

.method public abstract shouldExitCameraOnBackPressed()Z
.end method

.method public abstract showModePickerGuide()V
.end method

.method public abstract showModeRegion()V
.end method

.method public abstract showModeRegionOnSinked()V
.end method

.method public abstract showMoreModeGuideAnim()V
.end method

.method public showOrHideModePickerFromUnderwater(Z)V
    .registers 2

    return-void
.end method

.method public showOrHideModePickerRootUI(ZZ)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZZZ)V

    return-void
.end method

.method public abstract showOrHideModePickerRootUI(ZZZZ)V
.end method

.method public abstract updateArrowEnableState(Z)V
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;ZZZ)V
    .registers 5

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    if-nez p1, :cond_8

    goto :goto_15

    .line 137
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 138
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p0

    .line 139
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentModeName(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .registers 2

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    return-void
.end method

.method public abstract updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
.end method

.method public abstract updateGuideRightRootVisibleState(I)V
.end method

.method public abstract updateMoreEditMode(Z)V
.end method

.method public abstract updatePanelItemClickable(Z)V
.end method
