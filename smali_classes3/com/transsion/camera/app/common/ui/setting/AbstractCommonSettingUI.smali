.class public abstract Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mCameraRootView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentModeName:Ljava/lang/String;

.field protected mEntryRootLayout:Landroid/view/View;

.field private mEntryRootLayoutState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field protected mOrientation:I

.field protected mParentLayout:Landroid/view/ViewGroup;

.field protected mScreenFormType:I

.field protected mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    .line 52
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return-void
.end method


# virtual methods
.method public final createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 81
    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    .line 82
    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    return-object p1
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;",
            ")",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public getKeys()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getValue()Ljava/lang/String;
.end method

.method public hideEntryView()V
    .registers 1

    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 74
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    .line 75
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 76
    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isEntryViewCreated()Z
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isEntryViewRetained()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isSupportPrivacyMode()Z
    .registers 1

    .line 397
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isSupportPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowOptionBar()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 2

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed(Z)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged()V
    .registers 1

    return-void
.end method

.method public onDoubleTap(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onLongPress(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onModePanelDistanceChanged(FZ)V
    .registers 3

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 243
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return-void
.end method

.method public onPreviewClick()Z
    .registers 1

    .line 319
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 3

    .line 376
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->isSupportPrivacyMode()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2b

    .line 379
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz p2, :cond_2b

    if-eqz p1, :cond_21

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayoutState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_1c

    .line 383
    new-instance p1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayoutState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_1c
    const/4 p0, 0x4

    .line 385
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 387
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayoutState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz p1, :cond_2b

    .line 388
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayoutState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 249
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    .line 250
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onShutterCancel()V
    .registers 1

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterDown()V
    .registers 1

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterUp(I)V
    .registers 2

    return-void
.end method

.method public onSingleTapConfirmed(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public overrideRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
    .registers 2

    return-void
.end method

.method public overrideSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public releaseResource()V
    .registers 1

    return-void
.end method

.method public restoreInteractiveView()V
    .registers 1

    return-void
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-void
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .registers 2

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_18

    .line 140
    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 142
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    .line 144
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    :cond_18
    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-void
.end method

.method public setBatteryStatus(II)V
    .registers 3

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    return-void
.end method

.method public abstract synthetic setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract synthetic setEnable(Z)V
.end method

.method protected setEntryRootLayoutVisibility(I)V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayoutState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz v0, :cond_17

    .line 402
    new-instance v1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Lcom/transsion/camera/app/common/ui/helper/ViewState;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 403
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->setVisibility(I[Ljava/lang/Runnable;)Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayoutState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    return-void

    .line 407
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public final setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 2

    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .registers 2

    return-void
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .registers 2

    return-void
.end method

.method public abstract synthetic setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    return-void
.end method

.method public setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .registers 2

    return-void
.end method

.method public setupEntryView()V
    .registers 2

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_16

    .line 157
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 158
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_16
    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 164
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    return-void
.end method

.method public updateCameraState(I)V
    .registers 2

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public abstract synthetic updatePreviewRect(Landroid/graphics/Rect;)V
.end method

.method protected updateSettingUILayout(Z)V
    .registers 2

    return-void
.end method
