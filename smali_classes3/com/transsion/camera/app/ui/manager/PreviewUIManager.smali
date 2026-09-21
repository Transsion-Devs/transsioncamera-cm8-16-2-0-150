.class public Lcom/transsion/camera/app/ui/manager/PreviewUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# static fields
.field public static final GESTURE_PRIORITY:I = 0x8


# instance fields
.field private final mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

.field private mProjectAuxSurfaceSupport:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v7, p3

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p0, 0x0

    .line 36
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    .line 43
    invoke-virtual {v0, p1, v1, p4}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->createUI(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)Lcom/transsion/camera/app/ui/PreviewUI;

    move-result-object p0

    .line 44
    iget-object p1, v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 45
    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    return-void
.end method


# virtual methods
.method protected createUI(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)Lcom/transsion/camera/app/ui/PreviewUI;
    .registers 4

    .line 302
    new-instance p0, Lcom/transsion/camera/app/ui/PreviewUI;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/PreviewUI;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    return-object p0
.end method

.method public currentDisplayStyle()I
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->currentDisplayStyle()I

    move-result p0

    return p0
.end method

.method public destroy()V
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onDestroy()V

    return-void
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewLayoutRatio()D
    .registers 3

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public hideCustomPreviewCover()V
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->hideCustomPreviewCover()V

    return-void
.end method

.method public needBuildBlurCoverView(Z)V
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->needBuildBlurCoverView(Z)V

    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->needRectChangedAnimation(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 7

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraOperateActionListener;->cameraOperateAction(I)V

    .line 116
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_15

    .line 118
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_15
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-eq p1, v1, :cond_2b

    if-ne p1, v3, :cond_1f

    goto :goto_2b

    :cond_1f
    if-ne v0, v4, :cond_25

    .line 125
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    goto :goto_2e

    :cond_25
    if-nez v0, :cond_2e

    .line 127
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    goto :goto_2e

    .line 122
    :cond_2b
    :goto_2b
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    :cond_2e
    :goto_2e
    if-eq p1, v3, :cond_50

    const/4 v0, 0x7

    packed-switch p1, :pswitch_data_56

    goto :goto_4f

    .line 144
    :pswitch_35
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setDVModeCoverVisible(Z)V

    return-void

    .line 138
    :pswitch_39
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eq p1, v0, :cond_4f

    .line 139
    sget-object p1, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->EXIT_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAnimationType(Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V

    .line 140
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setDVModeCoverVisible(Z)V

    return-void

    .line 133
    :pswitch_46
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eq p1, v0, :cond_4f

    .line 134
    sget-object p1, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->ENTER_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAnimationType(Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V

    :cond_4f
    :goto_4f
    return-void

    .line 147
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->screenShot()V

    return-void

    :pswitch_data_56
    .packed-switch 0x13a
        :pswitch_46
        :pswitch_39
        :pswitch_35
    .end packed-switch
.end method

.method public onDoubleTap(FF)Z
    .registers 3

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onDoubleTap()Z

    move-result p0

    return p0
.end method

.method public onEnterAnimationComplete()V
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onEnterAnimationComplete()V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProjectAuxSupported:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 102
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->onScreenFormChanged(I)V

    return-void
.end method

.method public onSetupViews()V
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->setupViews()V

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .registers 4

    .line 232
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-nez v0, :cond_18

    .line 233
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 234
    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x2

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x3

    .line 239
    :goto_19
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onSwitchMode(Ljava/lang/String;I)V

    return-void
.end method

.method public onTopChanged(Z)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    if-eqz p0, :cond_7

    .line 70
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->onTopChanged(Z)V

    :cond_7
    return-void
.end method

.method public pause(Z)V
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->onPause(Z)V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public resetRootParentLayout()V
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->resetRootParentLayout()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 55
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onResume()V

    return-void
.end method

.method public setAnimationType(Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAnimationType(Lcom/transsion/camera/app/common/IAppUI$AnimationType;)V

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .registers 4

    .line 211
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_9

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .registers 4

    .line 217
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_9

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .registers 4

    .line 205
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_9

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewSize(II)V

    :cond_9
    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setBackgroundPreviewModeSupport(Z)V

    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .registers 3

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setBackgroundPreviewSize(II)V

    return-void
.end method

.method public setDVModeCoverVisible(Z)V
    .registers 2

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setDVModeCoverVisible(Z)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 280
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setIntentParser(Lcom/transsion/camera/app/intent/IntentParser;)V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setIntentParser(Lcom/transsion/camera/app/intent/IntentParser;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 3

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setPreviewSize(II)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 172
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_11

    .line 174
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_11

    .line 177
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onStart()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onStop()V

    return-void
.end method

.method public switchAnimIsRunning()Z
    .registers 1

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->switchAnimIsRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->unInit()V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewLayout(ZZD)V
    .registers 5

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/IPreviewUI;->updatePreviewLayout(ZZD)V

    return-void
.end method

.method public updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 2

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->updatePreviewViewType(Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
