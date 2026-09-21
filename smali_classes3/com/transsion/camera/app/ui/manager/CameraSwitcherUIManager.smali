.class public Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

.field private mCameraSwitcherView:Landroid/view/View;

.field private mCurrentModeName:Ljava/lang/String;

.field private mInDualVideoMode:Z

.field private mIsFirstSteadyFrameCome:Z

.field private mIsVideoRecording:Z

.field private mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field protected final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraSwitcherUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p0, 0x0

    .line 49
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsFirstSteadyFrameCome:Z

    .line 141
    new-instance p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 55
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->createCameraSwitcherUI()Lcom/transsion/camera/app/ui/CameraSwitcherUI;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    return-void
.end method

.method private onGoogleLensVisibilityChanged(Z)V
    .registers 5

    .line 164
    sget-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGoogleLensVisibilityChanged visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->updateLayoutParams(Z)V

    return-void
.end method

.method private onVisibilityChanged(Z)V
    .registers 3

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p0, :cond_c

    .line 198
    sget-object p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_c
    const-string v0, "key_camera_switcher_visible"

    if-eqz p1, :cond_1a

    .line 202
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "camera_switcher_show"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 204
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "camera_switcher_hide"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateCameraSwitchViewBG()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1b

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->updateSwitchView(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method protected createCameraSwitcherUI()Lcom/transsion/camera/app/ui/CameraSwitcherUI;
    .registers 1

    .line 59
    new-instance p0, Lcom/transsion/camera/app/ui/CameraSwitcherUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraSwitcherUI;-><init>()V

    return-object p0
.end method

.method protected doOnStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 150
    sget-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "key_google_lens_visible"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 158
    const-string p0, " ignore the unneeded Key directly"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_2f
    const-string p1, "google_lens_show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 155
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->onGoogleLensVisibilityChanged(Z)V

    return-void
.end method

.method public getCameraSwitcherView()Landroid/view/View;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherView:Landroid/view/View;

    return-object p0
.end method

.method public hide()V
    .registers 3

    .line 272
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mInDualVideoMode:Z

    if-nez v0, :cond_2a

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 274
    :goto_16
    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_2a

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 275
    sget-object p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide: dismiss"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_2a
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c6

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v0, :cond_bf

    const/4 v0, 0x4

    if-eq p1, v0, :cond_bb

    const/16 v0, 0x8

    if-eq p1, v0, :cond_b5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_b5

    const/16 v0, 0xf

    const/4 v3, 0x0

    if-eq p1, v0, :cond_9f

    const/16 v0, 0x10

    if-eq p1, v0, :cond_89

    const/16 v0, 0x14

    if-eq p1, v0, :cond_bb

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_71

    const/16 v0, 0x36

    if-eq p1, v0, :cond_6d

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_89

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_9f

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_89

    const/16 v0, 0x90

    if-eq p1, v0, :cond_9f

    const/16 v0, 0x91

    if-eq p1, v0, :cond_89

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_53

    const/16 v0, 0x9d

    if-eq p1, v0, :cond_53

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_c6

    const/16 v0, 0xc5

    if-eq p1, v0, :cond_4e

    goto/16 :goto_c9

    .line 223
    :cond_4e
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    goto/16 :goto_c9

    .line 227
    :cond_53
    sget-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shot2shot end action need enable camera switcher button, action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    goto :goto_c9

    .line 220
    :cond_6d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->updateCameraSwitchViewBG()V

    goto :goto_c9

    .line 248
    :cond_71
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsVideoRecording:Z

    .line 249
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsFirstSteadyFrameCome:Z

    .line 250
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mInDualVideoMode:Z

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz v0, :cond_c9

    .line 251
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->resetRecordingUI()V

    goto :goto_c9

    .line 242
    :cond_89
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsVideoRecording:Z

    .line 243
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mInDualVideoMode:Z

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz v0, :cond_c9

    .line 244
    invoke-interface {v0, v1, v3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_c9

    .line 233
    :cond_9f
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsVideoRecording:Z

    .line 234
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mInDualVideoMode:Z

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz v0, :cond_c9

    .line 235
    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_c9

    .line 260
    :cond_b5
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsFirstSteadyFrameCome:Z

    .line 261
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    goto :goto_c9

    .line 256
    :cond_bb
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->updateCameraSwitchViewBG()V

    goto :goto_c9

    .line 216
    :cond_bf
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->updateCameraSwitchViewBG()V

    goto :goto_c9

    .line 213
    :cond_c6
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    .line 267
    :cond_c9
    :goto_c9
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherView:Landroid/view/View;

    return-object p1
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 99
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method public onSetupViews()V
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->setupViews()V

    return-void
.end method

.method protected registerValueChangedListener(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 138
    const-string v0, "key_google_lens_visible"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-nez p0, :cond_7

    goto :goto_a

    .line 81
    :cond_7
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_a
    :goto_a
    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 109
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 110
    sget-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnable] enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_25

    .line 111
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsVideoRecording:Z

    if-eqz v1, :cond_25

    .line 112
    const-string p0, "[setEnable] return because video is recording."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_25
    if-eqz p1, :cond_31

    .line 116
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mIsFirstSteadyFrameCome:Z

    if-nez v1, :cond_31

    .line 117
    const-string p0, "[setEnable] return because first steady frame has not arrived."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz p0, :cond_38

    .line 122
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_38
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 128
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_15

    .line 130
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_15

    .line 133
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->registerValueChangedListener(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public show()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isBothCameraSupport()Z

    move-result v0

    if-nez v0, :cond_e

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    return-void

    .line 189
    :cond_e
    const-string v0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 190
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    return-void

    .line 193
    :cond_1c
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    return-void
.end method

.method public showOrHide(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 180
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isBothCameraSupport()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->showOrHide(Z)V

    return-void
.end method

.method public showOrHide(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 171
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->show()V

    goto :goto_9

    .line 173
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->hide()V

    .line 175
    :goto_9
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->onVisibilityChanged(Z)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->unregisterValueChangedListener(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 90
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->unInit()V

    return-void
.end method

.method protected unregisterValueChangedListener(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 94
    const-string v0, "key_google_lens_visible"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 3

    .line 284
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 285
    const-string v0, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mInDualVideoMode:Z

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz p0, :cond_11

    .line 287
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->updateModeName(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
