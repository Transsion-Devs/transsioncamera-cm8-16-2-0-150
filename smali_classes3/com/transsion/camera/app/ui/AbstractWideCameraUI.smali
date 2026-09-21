.class public abstract Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IWideCameraUI;


# static fields
.field private static PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field protected final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mAIArtMuseumMode:Z

.field protected mAllowSetAlpha:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBottomBarHeight:I

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mCurrentMode:Ljava/lang/String;

.field protected mFrontSettingUIList:Ljava/util/List;

.field protected mGraduationViewIsMoving:Z

.field private mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

.field protected mInAIGCMode:Z

.field protected mInIntentPhotoMode:Z

.field protected mInIntentVideoMode:Z

.field protected mInLongExposureMode:Z

.field protected mInMacroMode:Z

.field protected mInMovieMode:Z

.field protected mInPmasterMode:Z

.field protected mInProMode:Z

.field protected mInSlowMotionMode:Z

.field protected mInStreetPhotoMode:Z

.field protected mInSuperNightMode:Z

.field protected mInTimeLapsePhotoMode:Z

.field protected mInTimeLapseVideoMode:Z

.field protected mInVideoMode:Z

.field protected mInVlogMode:Z

.field protected mIsNeedShowFrontUI:Z

.field protected mIsNeedShowUI:Z

.field protected mIsScreenFormChanged:Z

.field protected mIsSegmentEmpty:Z

.field protected mIsZoomWheelEnd:Z

.field protected mIsZoomWheelShowing:Z

.field protected mOffsetPadding:I

.field protected mOrientation:I

.field protected mRecordingAnimator:Landroid/animation/Animator;

.field protected mRootView:Landroid/view/View;

.field protected mScreenFormType:I

.field protected mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field protected mSettingUIList:Ljava/util/List;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mTeleForMacro:Z

.field protected mTeleForPmaster:Z

.field protected mVlogTranslationDis:I


# direct methods
.method public static synthetic $r8$lambda$D7-YiIbM_zo501moeUEuTXUoJwo(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ds4lozXyrmTCV4nECACAjwaFahI(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;ILandroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->lambda$updateRootViewPadding$4(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KMW_ciIFWua_FP95h7JsJi6E7Zw(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->lambda$notifyCameraOperateActionToUI$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z3PMcdMStl5M6g3v-GpYUHeFKRs(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->lambda$notifyCameraOperateActionToUI$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$d5oGG5CSkiy8PrBCvmxR7g7HdjU(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->lambda$notifyCameraOperateActionToUI$3(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    const/4 v1, -0x1

    .line 58
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOrientation:I

    .line 59
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mGraduationViewIsMoving:Z

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsScreenFormChanged:Z

    .line 62
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mBottomBarHeight:I

    .line 84
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_wide_camera_selected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 88
    :cond_c
    const-string/jumbo p1, "wide_camera_selected_value"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$1(I)V
    .registers 3

    .line 234
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$2()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$3(I)V
    .registers 3

    .line 255
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$updateRootViewPadding$4(ILandroid/animation/ValueAnimator;)V
    .registers 4

    .line 384
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public couldShow(Z)V
    .registers 2

    return-void
.end method

.method protected hasTeleItem()Z
    .registers 5

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 345
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.camera.ui.setting.zoom.TeleZoomItemUI"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 347
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.camera.ui.setting.zoom.SecondZoomItemUI"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 348
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.ui.setting.macrozoom.MacroSecondZoomItemUI"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_46
    const/4 p0, 0x1

    return p0

    :cond_48
    return v0
.end method

.method public hide()V
    .registers 2

    const/16 v0, 0x8

    .line 179
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setRootViewVisibility(I)V

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateRootViewPadding(IZ)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method protected isCameraFacingBack(Ljava/lang/String;)Z
    .registers 2

    .line 121
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isDVVideoModeBottomUIOn()Z
    .registers 4

    .line 104
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 105
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_f

    return v1

    .line 106
    :cond_f
    const-string v0, "key_dv_template_filter_icon"

    const-string v2, "key_state_dv_template_bottom_ui_showing"

    invoke-interface {p0, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->querySettingUIState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->ON:Lcom/transsion/camera/app/common/IAppUI$UIState;

    if-ne p0, v0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method protected abstract loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 4

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x53

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x90

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x91

    if-eq p1, v0, :cond_2e

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_1d

    goto :goto_2d

    .line 245
    :cond_1d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_2d

    .line 246
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2d
    :goto_2d
    return-void

    .line 252
    :cond_2e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    .line 253
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 254
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 263
    :cond_48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->onRecordingStateChange(I)V

    return-void

    .line 233
    :cond_4c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_5d

    .line 234
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 241
    :cond_5d
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->onRecordingStateChange(I)V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 203
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOrientation:I

    return-void
.end method

.method protected onRecordingStateChange(I)V
    .registers 2

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 290
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    .line 291
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_1f

    .line 293
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 294
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->pause()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public resetRecordingUI()V
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 444
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 445
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WideCameraItemUI setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 216
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_26

    .line 220
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_56

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_56

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 222
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_46

    :cond_56
    return-void
.end method

.method public setOffsetPadding(I)V
    .registers 2

    .line 193
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    return-void
.end method

.method protected setRootViewAlpha(F)V
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_34

    .line 407
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_34

    .line 410
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    if-nez v0, :cond_2f

    goto :goto_34

    .line 413
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_34
    :goto_34
    return-void
.end method

.method protected setRootViewTranslationY(F)V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_15

    .line 397
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_16

    :goto_15
    return-void

    .line 400
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected setRootViewVisibility(I)V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_48

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRootViewVisibility() called with: visibility = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_48

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_notify_zoom_wheel_hide"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v0, "value_zoomwheel_view_hide"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method protected abstract setSettingUIList()V
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .registers 6

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSettingUIList] settingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentCameraId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_2f

    .line 168
    const-string p2, "key_wide_camera_selected"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 170
    :cond_2f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList()V

    return-void
.end method

.method protected setZoomWheelShow(I)V
    .registers 3

    const/16 v0, 0x19

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    .line 335
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    return-void

    :cond_8
    const/16 v0, 0x1a

    if-ne v0, p1, :cond_f

    const/4 p1, 0x0

    .line 337
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    :cond_f
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 424
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    if-nez p1, :cond_4b

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_4b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_58

    .line 432
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    :cond_58
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_5d
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_10

    .line 282
    const-string v1, "key_wide_camera_selected"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 284
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public updateRootViewPadding(IZ)V
    .registers 7

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_a

    return-void

    .line 368
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 370
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    add-int/2addr v2, v3

    .line 371
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5a

    if-nez p1, :cond_3b

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/transsion/camera/R$dimen;->full_zoom_root_normal_bottom_margin:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_39
    add-int/2addr v2, p1

    goto :goto_5a

    .line 375
    :cond_3b
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover_vlog:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v2, p1

    goto :goto_5a

    .line 376
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_39

    .line 379
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8e

    if-eqz p2, :cond_8e

    .line 380
    filled-new-array {v1, v2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 381
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 389
    :cond_8e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1d

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 303
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateCameraUIByModeForFlip(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1d
    const/4 p1, 0x0

    .line 306
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    .line 307
    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMovieMode:Z

    .line 308
    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVlogMode:Z

    .line 309
    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 310
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_40
    const/4 p1, 0x1

    :cond_41
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSuperNightMode:Z

    .line 311
    const-string p1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInSlowMotionMode:Z

    .line 312
    const-string p1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapseVideoMode:Z

    .line 313
    const-string p1, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInLongExposureMode:Z

    .line 314
    const-string p1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVideoMode:Z

    .line 315
    const-string p1, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInProMode:Z

    .line 316
    const-string p1, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInStreetPhotoMode:Z

    .line 317
    const-string p1, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInAIGCMode:Z

    .line 318
    const-string p1, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAIArtMuseumMode:Z

    .line 319
    const-string p1, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInMacroMode:Z

    .line 320
    const-string p1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInPmasterMode:Z

    .line 321
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mTeleForPmaster:Z

    .line 322
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isLongFocusDefaultForMacro()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mTeleForMacro:Z

    .line 323
    const-string p1, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInTimeLapsePhotoMode:Z

    .line 324
    const-string p1, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentPhotoMode:Z

    .line 325
    const-string p1, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInIntentVideoMode:Z

    .line 326
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentMode:Ljava/lang/String;

    return-void
.end method
