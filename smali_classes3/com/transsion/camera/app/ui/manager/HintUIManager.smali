.class public Lcom/transsion/camera/app/ui/manager/HintUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# static fields
.field public static final GESTURE_PRIORITY:I = 0xa


# instance fields
.field private mCurrentOrientation:I

.field private mFrontDualFlashUIShow:Z

.field private mHasShowLowPowerHint:Z

.field protected final mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

.field private mIsTransparent:Z

.field private final mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p4

    .line 53
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 48
    new-instance p0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 54
    iput-object v1, v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 55
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$integer;->hint_ui_type:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 56
    invoke-virtual {v0, v1, p3, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->createUI(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;I)Lcom/transsion/camera/app/ui/IHintUI;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    .line 57
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/IHintUI;->setModePickerControl(Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    return-void
.end method

.method private pocketScreenType()Z
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x6

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createUI(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;I)Lcom/transsion/camera/app/ui/IHintUI;
    .registers 4

    const/4 p0, 0x1

    if-eq p3, p0, :cond_12

    const/4 p0, 0x2

    if-eq p3, p0, :cond_c

    .line 305
    new-instance p0, Lcom/transsion/camera/app/ui/HintUI;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-object p0

    .line 303
    :cond_c
    new-instance p0, Lcom/transsion/camera/app/ui/HintUIItel;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUIItel;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-object p0

    .line 301
    :cond_12
    new-instance p0, Lcom/transsion/camera/app/ui/HintUIInfinix;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUIInfinix;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-object p0
.end method

.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    return-object p0
.end method

.method public getHintState()Z
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_9

    .line 261
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->getHintState()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getTwinkleGuideMode()Ljava/lang/String;
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_9

    .line 285
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 287
    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public hideAllHint()V
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->hideAllHint()V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 206
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pocketScreenType()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 209
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideSavingDialog()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/IHintUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideTwinkleGuide()V
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_7

    .line 274
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->hideTwinkleGuide()V

    :cond_7
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->notifyCameraOperateActionToUI(I)V

    const/16 v0, 0xc6

    if-ne p1, v0, :cond_e

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->refreshHintViewVisibility()V

    .line 106
    :cond_e
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondHintEvent(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 107
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    if-nez v3, :cond_2f

    const/16 v0, 0x44

    if-ne p1, v0, :cond_27

    .line 108
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mCurrentOrientation:I

    if-eqz v0, :cond_27

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_27

    goto :goto_81

    .line 112
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->fadeOutHint()V

    .line 113
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    goto :goto_41

    :cond_2f
    if-nez v0, :cond_41

    .line 114
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    if-eqz v0, :cond_41

    .line 115
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mFrontDualFlashUIShow:Z

    if-eqz v0, :cond_3a

    goto :goto_81

    .line 118
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->fadeInHint()V

    .line 119
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    :cond_41
    :goto_41
    if-eqz p1, :cond_9a

    if-eq p1, v2, :cond_94

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_94

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9a

    const/16 v0, 0x9

    if-eq p1, v0, :cond_94

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_9a

    const/16 v0, 0x27

    if-eq p1, v0, :cond_9a

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_8e

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_9a

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_9a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_88

    const/16 v0, 0xc

    if-eq p1, v0, :cond_82

    const/16 v0, 0x17

    if-eq p1, v0, :cond_88

    const/16 v0, 0x18

    if-eq p1, v0, :cond_82

    const/16 v0, 0x24

    if-eq p1, v0, :cond_88

    const/16 v0, 0x25

    if-eq p1, v0, :cond_82

    packed-switch p1, :pswitch_data_a0

    :goto_81
    return-void

    .line 152
    :cond_82
    :pswitch_82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/IHintUI;->setTwinkleGuideAvailable(Z)V

    return-void

    .line 144
    :cond_88
    :pswitch_88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IHintUI;->setTwinkleGuideAvailable(Z)V

    return-void

    .line 156
    :cond_8e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IHintUI;->setEnableHintUI(Z)V

    return-void

    .line 127
    :cond_94
    :pswitch_94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->resetEndHint()V

    return-void

    .line 137
    :cond_9a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/IHintUI;->resetTwinkleGuide(Z)V

    return-void

    :pswitch_data_a0
    .packed-switch 0x11
        :pswitch_88
        :pswitch_82
        :pswitch_82
        :pswitch_94
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IHintUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 168
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IHintUI;->onOrientationChanged(IZ)V

    .line 170
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mCurrentOrientation:I

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 175
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->setupViews()V

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz v0, :cond_7

    .line 312
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    .line 314
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    return-void
.end method

.method public registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_7

    .line 249
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    :cond_7
    return-void
.end method

.method public resetTwinkleGuide()V
    .registers 2

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 268
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IHintUI;->resetTwinkleGuide(Z)V

    :cond_8
    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->resume()V

    return-void
.end method

.method public setEnableHintUI(Z)V
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->setEnableHintUI(Z)V

    return-void
.end method

.method public setHintUITrans(II)V
    .registers 3

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IHintUI;->setHintUITrans(II)V

    return-void
.end method

.method public setRecorderOrientation(I)V
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_7

    .line 244
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->setRecorderOrientation(I)V

    :cond_7
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 89
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_15

    .line 91
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_15

    .line 94
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 189
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pocketScreenType()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 192
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 3

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pocketScreenType()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_13

    .line 199
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    if-nez v0, :cond_13

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    :cond_13
    :goto_13
    return-void
.end method

.method public showSavingDialog(Ljava/lang/String;I)V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setProgressType(I)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->unInit()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mFrontDualFlashUIShow:Z

    return-void
.end method

.method public unRegisterHintStateListener()V
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_7

    .line 255
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->unRegisterHintStateListener()V

    :cond_7
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateFrontDualFlashUIState(Z)V
    .registers 2

    .line 279
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mFrontDualFlashUIShow:Z

    return-void
.end method
