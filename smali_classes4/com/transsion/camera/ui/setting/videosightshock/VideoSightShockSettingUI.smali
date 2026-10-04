.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DELAY_TIME:I = 0x64

.field private static final DURATION:I = 0x12c

.field private static final EFFECT_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videoeffect.VideoEffectEntry"

.field private static final FILTER_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videofilter.VideoFilterEntry"

.field private static final FRAME_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videoframe.VideoFrameEntry"

.field public static final STATE_TO_SHOW_PANEL_VIEW:I = 0x1

.field public static final STATE_TO_SHOW_SWITCH_BAR:I = 0x0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F = 0.0f

.field private static final TRANSPARENT_1:F = 1.0f

.field private static final VSS_MODE_DEBUG:Ljava/lang/String; = "debug.camera.vss.mode"


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBottomUIDefaultHeight:I

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentUIState:I

.field private mDefaultDotMarginBottom:I

.field private final mDefaultVssControlViewHeight:I

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsPopSettingShow:Z

.field private mIsRecording:Z

.field private mIsSettingShow:Z

.field private mIsZooming:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSelectRoot:Landroid/view/ViewGroup;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private final mVssControlContentPadding:I

.field protected mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

.field protected final mbSupportEffect:Z

.field protected final mbSupportFilter:Z

.field protected final mbSupportFrame:Z


# direct methods
.method public static synthetic $r8$lambda$8VO8BX7Tk5o2lCIQMYJnsHhsSck(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$new$2(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NDEN3OmJXJ67Evm7H4Nd1cnEM-E(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$new$1(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T1nRKFuubJjY6hJXI6YnKnqUSkw(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$czlwrG1Cpo_o5oUCPOPWpEqpy0w(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hhSRnvcuo3hqEGiD1u7LczqU_iE(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$showSettingUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSelectRoot(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoSightShockSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 9

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 74
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 75
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    .line 105
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 129
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 207
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 411
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 140
    sget v1, Lcom/transsion/camera/R$dimen;->video_sigint_shock_panel_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    .line 141
    sget v2, Lcom/transsion/camera/R$dimen;->video_sight_shock_bottom_panel_default_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mBottomUIDefaultHeight:I

    .line 142
    sget v2, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_panel_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDefaultVssControlViewHeight:I

    .line 143
    sget v2, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_panel_content_padding:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssControlContentPadding:I

    .line 144
    sget v2, Lcom/transsion/camera/R$dimen;->video_sight_shock_control_dots_margin_bottom:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDefaultDotMarginBottom:I

    .line 146
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 147
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 148
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x2

    .line 150
    new-array v3, v2, [F

    fill-array-data v3, :array_ce

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    new-array v2, v2, [F

    aput v4, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getAnimatorDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 156
    const-string v0, "com.transsion.camera.feature.setting.videofilter.VideoFilterEntry"

    sget v1, Lcom/transsion/camera/app/common/R$bool;->video_filter_20_support:I

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->isSettingFeatureSupported(Landroid/content/res/Resources;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFilter:Z

    .line 158
    const-string v1, "com.transsion.camera.feature.setting.videoeffect.VideoEffectEntry"

    sget v2, Lcom/transsion/camera/app/common/R$bool;->video_effect_support:I

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->isSettingFeatureSupported(Landroid/content/res/Resources;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportEffect:Z

    .line 160
    const-string v2, "com.transsion.camera.feature.setting.videoframe.VideoFrameEntry"

    sget v3, Lcom/transsion/camera/app/common/R$bool;->video_frame_support:I

    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->isSettingFeatureSupported(Landroid/content/res/Resources;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFrame:Z

    .line 162
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-direct {v2, v0, v1, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;-><init>(ZZZ)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    return-void

    nop

    :array_ce
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 288
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 291
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 292
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2e
    return-void
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 696
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0x12c

    return p0
.end method

.method private getVssTranslateDistance()F
    .registers 4

    .line 297
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_12

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_12

    :cond_f
    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 299
    :cond_12
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    return p0

    .line 301
    :cond_15
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_1d
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    return p0
.end method

.method private hide()V
    .registers 5

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    if-nez v0, :cond_f

    goto :goto_53

    .line 672
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 673
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    .line 674
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    .line 675
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateRecyclerViewScrollState(I)V

    .line 676
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 677
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_34

    :cond_31
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    neg-float v2, v2

    :goto_34
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 679
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideEntryRootView()V

    .line 680
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_4f

    const/4 v2, 0x1

    .line 681
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 682
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsRecording:Z

    if-nez v1, :cond_4f

    .line 683
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_4f
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->notifyFilterPanelState(Z)V

    return-void

    .line 669
    :cond_53
    :goto_53
    sget-object p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mSelectRoot is null or not visible"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hideEntryRootView()V
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private hideSettingUI(ZZ)V
    .registers 11

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_17

    .line 361
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    if-eqz p2, :cond_18

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->isAnimatorRunning()Z

    move-result p2

    if-eqz p2, :cond_18

    :cond_17
    :goto_17
    return-void

    .line 365
    :cond_18
    sget-object p2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSettingUI, needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsSettingShow :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->cancelAnimation()V

    const/4 p2, 0x0

    .line 368
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    .line 369
    iput p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateRecyclerViewScrollState(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b1

    .line 372
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_10c

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 373
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 374
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 375
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 377
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v6

    if-eqz v6, :cond_71

    move v6, v1

    goto :goto_74

    :cond_71
    iget v6, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    neg-float v6, v6

    :goto_74
    new-array v7, v3, [F

    aput v1, v7, p2

    aput v6, v7, v0

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 378
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 379
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getVssTranslateDistance()F

    move-result v6

    new-array v3, v3, [F

    aput v1, v3, p2

    aput v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 381
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 384
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c9

    .line 387
    :cond_b1
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 388
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 390
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 391
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideEntryRootView()V

    .line 394
    :goto_c9
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_108

    .line 395
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsRecording:Z

    if-nez v1, :cond_108

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v1, v0, :cond_108

    .line 396
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v1, :cond_ec

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_e6

    goto :goto_ec

    .line 399
    :cond_e6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    goto :goto_f1

    .line 397
    :cond_ec
    :goto_ec
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p2, p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 401
    :goto_f1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_108

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_108
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->notifyFilterPanelState(Z)V

    return-void

    :array_10c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 9

    .line 187
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 188
    sget v0, Lcom/transsion/camera/R$layout;->video_sight_shock_panel_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    .line 189
    sget v0, Lcom/transsion/camera/R$id;->video_sight_shock_select_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private isAnimatorRunning()Z
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    goto :goto_1c

    .line 354
    :cond_a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v1
.end method

.method private isExpandedOrLRHoverState()Z
    .registers 3

    .line 690
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x5

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v0
.end method

.method private isSettingFeatureSupported(Landroid/content/res/Resources;Ljava/lang/String;I)Z
    .registers 4

    .line 166
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 167
    invoke-static {p2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;I)V
    .registers 3

    .line 416
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->resetUIState(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Object;I)V
    .registers 5

    const/16 v0, 0x64

    if-eq p2, v0, :cond_8

    const/16 v0, 0x65

    if-ne p2, v0, :cond_24

    .line 413
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 414
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->resetUIState(Ljava/lang/String;I)V

    return-void

    .line 415
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 416
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method private synthetic lambda$showSettingUI$0()V
    .registers 7

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDefaultDotMarginBottom:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDefaultVssControlViewHeight:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssControlContentPadding:I

    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->adjustControlView(IIIII)V

    return-void
.end method

.method private notifyFilterPanelState(Z)V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 232
    :cond_5
    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_1c

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_video_filter_ui_on"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x30

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 236
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_video_filter_ui_off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x31

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_11

    .line 243
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    return-void
.end method

.method private onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_2b

    .line 252
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->isExpandedOrLRHoverState()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 256
    :cond_1b
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v0, :cond_55

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2c

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_55

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2c

    :goto_2b
    return-void

    .line 264
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_45

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    goto :goto_45

    .line 268
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 266
    :cond_45
    :goto_45
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 260
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetUIState(Ljava/lang/String;I)V
    .registers 5

    .line 422
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetUIState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_10

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 424
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 427
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-eqz p0, :cond_17

    .line 428
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->resetUIState(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private showEntryRootView()V
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private showSettingUI()V
    .registers 8

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a1

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_a1

    :cond_c
    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    .line 314
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showEntryRootView()V

    .line 315
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    .line 316
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateRecyclerViewScrollState(I)V

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_a2

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 319
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 321
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 323
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getVssTranslateDistance()F

    move-result v5

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v5, v2, v6

    const/4 v5, 0x0

    aput v5, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 325
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 328
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 331
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_9e

    .line 336
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v1, v0, :cond_9e

    .line 337
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v1, :cond_8e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_88

    goto :goto_8e

    .line 340
    :cond_88
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v6, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    goto :goto_93

    .line 338
    :cond_8e
    :goto_8e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0, v6, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 342
    :goto_93
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_9e
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->notifyFilterPanelState(Z)V

    :cond_a1
    :goto_a1
    return-void

    :array_a2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private toggleFilterPanel()V
    .registers 3

    .line 457
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "toggleFilterPanel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 459
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 460
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_2d

    .line 464
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_28

    .line 465
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showSettingUI()V

    return-void

    :cond_28
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 177
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->updateSettingUILayout(Z)V

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->addAnimatorListener()V

    .line 181
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 541
    const-string p0, "key_video_sight_shock"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFilter:Z

    if-eqz v1, :cond_13

    .line 548
    const-string v1, "key_video_filter_style"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    const-string v1, "key_video_filter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_13
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportEffect:Z

    if-eqz v1, :cond_21

    .line 553
    const-string v1, "key_video_effect_style"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v1, "key_video_effect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_21
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFrame:Z

    if-eqz p0, :cond_2f

    .line 558
    const-string p0, "key_video_frame_style"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    const-string p0, "key_video_frame"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 566
    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 203
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 204
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowOptionBar()Z
    .registers 1

    .line 453
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_93

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_8f

    const/16 v0, 0x20

    const/4 v2, 0x1

    if-eq p1, v0, :cond_81

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_8f

    const/16 v0, 0xf

    if-eq p1, v0, :cond_71

    const/16 v0, 0x10

    if-eq p1, v0, :cond_61

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_57

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_57

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_51

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_4e

    packed-switch p1, :pswitch_data_9c

    goto :goto_60

    .line 630
    :pswitch_2d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsZooming:Z

    .line 631
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 632
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showEntryRootView()V

    return-void

    .line 635
    :pswitch_36
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsZooming:Z

    .line 636
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 637
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    return-void

    .line 614
    :pswitch_3f
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsZooming:Z

    return-void

    .line 608
    :pswitch_42
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 609
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 611
    :cond_4b
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsZooming:Z

    return-void

    .line 660
    :cond_4e
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsPopSettingShow:Z

    return-void

    .line 656
    :cond_51
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsPopSettingShow:Z

    .line 657
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hide()V

    return-void

    .line 603
    :cond_57
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 604
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    :cond_60
    :goto_60
    return-void

    .line 617
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x14c

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 618
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsRecording:Z

    .line 619
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 620
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showEntryRootView()V

    return-void

    .line 650
    :cond_71
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x14b

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 651
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsRecording:Z

    .line 652
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 653
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    return-void

    .line 623
    :cond_81
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 624
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 625
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showEntryRootView()V

    .line 626
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsRecording:Z

    .line 627
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsZooming:Z

    return-void

    .line 647
    :cond_8f
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    return-void

    .line 641
    :cond_93
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsZooming:Z

    .line 642
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 643
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    return-void

    :pswitch_data_9c
    .packed-switch 0x17
        :pswitch_42
        :pswitch_3f
        :pswitch_36
        :pswitch_2d
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 590
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 591
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    return v0

    :cond_1b
    return v1
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 520
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-eqz v0, :cond_a

    .line 522
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->onOrientationChanged(I)V

    :cond_a
    const/4 p1, 0x0

    .line 524
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 434
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_28

    .line 438
    :cond_b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsPopSettingShow:Z

    if-eqz p1, :cond_10

    goto :goto_28

    .line 442
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 443
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_29

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsZooming:Z

    if-eqz p1, :cond_29

    :goto_28
    return-void

    .line 447
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->recoverSettingValueAndUI()V

    .line 448
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->toggleFilterPanel()V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-eqz p0, :cond_9

    .line 475
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    :cond_9
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 575
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setDeviceSettingData(Ljava/util/List;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 581
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 196
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 197
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->updateIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 506
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 507
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 509
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 510
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideEntryRootView()V

    const/4 v0, 0x0

    .line 511
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 512
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->removeAnimatorListener()V

    const/4 v1, 0x0

    .line 513
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    .line 514
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    .line 515
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsPopSettingShow:Z

    return-void
.end method

.method protected updateIndicatorRingScreenLight(Z)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-eqz p0, :cond_7

    .line 211
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateIndicatorRingScreenLight(Z)V

    :cond_7
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 11

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_b

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 224
    :cond_c
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    iget v7, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mBottomUIDefaultHeight:I

    iget-boolean v8, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIsSettingShow:Z

    move v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateSettingUILayout(Landroid/view/View;Landroid/view/ViewGroup;IILcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;ZIZ)V

    return-void
.end method
