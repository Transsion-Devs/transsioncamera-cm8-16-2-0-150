.class public Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DELAY_TIME:I = 0x64

.field private static final DURATION:I = 0x12c

.field public static final STATE_TO_SHOW_PANEL_VIEW:I = 0x1

.field public static final STATE_TO_SHOW_SWITCH_BAR:I = 0x0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F = 0.0f

.field private static final TRANSPARENT_1:F = 1.0f

.field private static final VIDEO_PORTRAIT_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videoportrait.VideoPortraitEntry"

.field private static final VIDEO_PORTRAIT_LEVEL_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videoportraitlevel.VideoPortraitLevelEntry"

.field private static final VIDEO_SPOT_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videospot.VideoSpotEntry"

.field private static final VIDEO_SPOT_LEVEL_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videospotlevel.VideoSpotLevelEntry"


# instance fields
.field protected final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomTitle:Landroid/widget/TextView;

.field private final mBottomUIDefaultHeight:I

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentUIState:I

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field protected mEntryView:Landroid/view/View;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsPopSettingShow:Z

.field private mIsRecording:Z

.field private mIsSettingShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mResources:Landroid/content/res/Resources;

.field protected mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mVideoPortraitSpotContainer:Landroid/widget/LinearLayout;

.field protected mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;


# direct methods
.method public static synthetic $r8$lambda$GC0svLK_uElcOg0iMK2rAqeb718(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->lambda$new$0(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KRZgL6ZHY7eh6BIta-u9jnvwEXE(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->updateIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkANSpuufFKVl6zeYSGwMW9wkxM(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V5IV2LwMNpU2-NIvKFVbAI35XLU(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPortraitSpotSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 64
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsRecording:Z

    .line 91
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCurrentUIState:I

    .line 99
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 123
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 366
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 596
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mResources:Landroid/content/res/Resources;

    .line 135
    sget v0, Lcom/transsion/camera/R$dimen;->video_portrait_spot_panel_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateDistance:F

    .line 136
    sget v0, Lcom/transsion/camera/R$dimen;->video_portrait_spot_bottom_panel_default_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mBottomUIDefaultHeight:I

    .line 137
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 138
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 139
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    .line 140
    new-array v0, p1, [F

    fill-array-data v0, :array_9e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getAnimatorDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    new-array p1, p1, [F

    fill-array-data p1, :array_a6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getAnimatorDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    new-instance p1, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getSupportType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    return-void

    nop

    :array_9e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x43100000    # 144.0f
    .end array-data
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 692
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 695
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 696
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2e
    return-void
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 713
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0x12c

    return p0
.end method

.method private getSupportType()Ljava/lang/String;
    .registers 5

    .line 182
    const-string p0, "com.transsion.camera.feature.setting.videoportrait.VideoPortraitEntry"

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.setting.videospotlevel.VideoSpotLevelEntry"

    const-string v2, "com.transsion.camera.feature.setting.videospot.VideoSpotEntry"

    const-string v3, "com.transsion.camera.feature.setting.videoportraitlevel.VideoPortraitLevelEntry"

    if-nez v0, :cond_23

    invoke-static {v3}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_23

    .line 183
    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 184
    const-string p0, "video_spot_support_only"

    return-object p0

    .line 185
    :cond_23
    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_3e

    invoke-static {v3}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 186
    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_3e

    invoke-static {v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_3e

    .line 187
    const-string p0, "video_portrait_support_only"

    return-object p0

    .line 189
    :cond_3e
    const-string p0, "video_portrait_spot_support_both"

    return-object p0
.end method

.method private getVpsTranslateDistance()F
    .registers 4

    .line 663
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

    .line 665
    :cond_12
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateDistance:F

    return p0

    .line 667
    :cond_15
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 670
    :cond_1d
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    return p0
.end method

.method private hideEntryRootView()V
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private isExpandedOrLRHoverState()Z
    .registers 3

    .line 702
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

.method private synthetic lambda$new$0(Ljava/lang/Object;I)V
    .registers 4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_13

    .line 368
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_13

    .line 369
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->resetUIState(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private notifyPortraitSpotPanelState(Z)V
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 624
    :cond_5
    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_1c

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_video_portrait_spot_panel_on"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xca

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 628
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_video_portrait_spot_panel_off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xcb

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_11

    .line 615
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

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_5

    goto :goto_2b

    .line 638
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->isExpandedOrLRHoverState()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 642
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

    .line 650
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_45

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    goto :goto_45

    .line 654
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 652
    :cond_45
    :goto_45
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 646
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

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

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetUIState(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 375
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    .line 376
    const-string v0, "portrait_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->recoverPanelStatus(Z)V

    :cond_12
    return-void
.end method

.method private showEntryRootView()V
    .registers 2

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private updateIndicatorRingScreenLight(Z)V
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    if-eqz v0, :cond_7

    .line 600
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->updateLowLight(Z)V

    .line 602
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_18

    if-eqz p1, :cond_14

    .line 603
    const-string p1, "#FF242424"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_18
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 151
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setCameraOperate(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->updateSettingUILayout(Z)V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->addAnimatorListener()V

    .line 157
    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 709
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

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

    .line 325
    const-string p0, "key_video_portrait_spot"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getSupportType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_5c

    goto :goto_35

    :sswitch_15
    const-string v1, "video_spot_support_only"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v2, 0x2

    goto :goto_35

    :sswitch_20
    const-string v1, "video_portrait_spot_support_both"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_35

    :cond_29
    const/4 v2, 0x1

    goto :goto_35

    :sswitch_2b
    const-string v1, "video_portrait_support_only"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    .line 347
    :goto_35
    const-string p0, "key_video_portrait_level"

    const-string v1, "key_video_portrait"

    const-string v3, "key_video_spot_level"

    const-string v4, "key_video_spot"

    packed-switch v2, :pswitch_data_6a

    return-object v0

    .line 333
    :pswitch_41
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 341
    :pswitch_48
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 337
    :pswitch_55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :sswitch_data_5c
    .sparse-switch
        -0x53da8484 -> :sswitch_2b
        -0x3be31b52 -> :sswitch_20
        0x2ea37b75 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_55
        :pswitch_48
        :pswitch_41
    .end packed-switch
.end method

.method public getLayoutId()I
    .registers 1

    .line 163
    sget p0, Lcom/transsion/camera/R$layout;->video_portrait_spot_panel_layout:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 591
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->resetScrValue()V

    .line 593
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected hideSettingUI(ZZ)V
    .registers 10

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_5

    goto :goto_17

    .line 458
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsSettingShow:Z

    if-nez v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->isAnimatorRunning()Z

    move-result p2

    if-eqz p2, :cond_18

    :cond_17
    :goto_17
    return-void

    .line 462
    :cond_18
    sget-object p2, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSettingUI, needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsSettingShow :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsSettingShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->cancelAnimation()V

    const/4 p2, 0x0

    .line 465
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsSettingShow:Z

    .line 466
    iput p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCurrentUIState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8f

    .line 469
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_c0

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 470
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 472
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 474
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getVpsTranslateDistance()F

    move-result v6

    new-array v3, v3, [F

    aput v1, v3, p2

    aput v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 476
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 478
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 479
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a8

    .line 481
    :cond_8f
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 482
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 484
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 485
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideEntryRootView()V

    .line 488
    :goto_a8
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_b7

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsRecording:Z

    if-nez v2, :cond_b7

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v2, v0, :cond_b7

    .line 489
    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 492
    :cond_b7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->hideVideoPortraitSpotScaleBar()V

    .line 493
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->notifyPortraitSpotPanelState(Z)V

    return-void

    :array_c0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 167
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    .line 169
    sget p2, Lcom/transsion/camera/R$id;->video_portrait_spot_panel_select_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->video_portrait_spot_function_type_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotContainer:Landroid/widget/LinearLayout;

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p1, :cond_47

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->video_portrait_spot_bottom_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mBottomTitle:Landroid/widget/TextView;

    .line 174
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mBottomTitle:Landroid/widget/TextView;

    sget p2, Lcom/transsion/camera/R$string;->video_portrait_spot_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1, v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->initView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected isAnimatorRunning()Z
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    goto :goto_1c

    .line 451
    :cond_a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

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

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowOptionBar()Z
    .registers 1

    .line 573
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCurrentUIState:I

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

    if-eq p1, v0, :cond_9d

    const/16 v0, 0x9

    const/4 v2, 0x1

    if-eq p1, v0, :cond_99

    const/16 v0, 0x17

    if-eq p1, v0, :cond_8f

    const/16 v0, 0x20

    if-eq p1, v0, :cond_86

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_a0

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_78

    const/4 v0, 0x6

    if-eq p1, v0, :cond_74

    const/4 v0, 0x7

    if-eq p1, v0, :cond_99

    const/16 v0, 0xf

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_59

    const/16 v0, 0x19

    if-eq p1, v0, :cond_9d

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_52

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_49

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_45

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_43

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_40

    goto :goto_98

    .line 564
    :cond_40
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsPopSettingShow:Z

    return-void

    .line 559
    :cond_43
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsPopSettingShow:Z

    .line 561
    :cond_45
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    return-void

    .line 547
    :cond_49
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsPopSettingShow:Z

    .line 548
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    .line 549
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    return-void

    .line 534
    :cond_52
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    .line 535
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->showEntryRootView()V

    return-void

    .line 522
    :cond_59
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsRecording:Z

    .line 523
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setRecordStatus(Z)V

    .line 524
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 525
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    .line 526
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->showEntryRootView()V

    return-void

    .line 538
    :cond_6c
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsRecording:Z

    .line 539
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setRecordStatus(Z)V

    goto :goto_9d

    .line 552
    :cond_74
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    return-void

    .line 517
    :cond_78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_98

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void

    .line 529
    :cond_86
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsRecording:Z

    .line 530
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    .line 531
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->showEntryRootView()V

    return-void

    .line 512
    :cond_8f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 513
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    :cond_98
    :goto_98
    return-void

    .line 556
    :cond_99
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    return-void

    .line 542
    :cond_9d
    :goto_9d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    .line 544
    :cond_a0
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 310
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 311
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

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
    .registers 2

    .line 319
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x0

    .line 320
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 396
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3b

    .line 400
    :cond_b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsPopSettingShow:Z

    if-eqz p1, :cond_10

    goto :goto_3b

    .line 404
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 405
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 406
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_3b

    .line 409
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 410
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->showSettingUI()V

    goto :goto_36

    :cond_32
    const/4 p1, 0x1

    .line 412
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    .line 414
    :goto_36
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->recoverPanelStatus(Z)V

    :cond_3b
    :goto_3b
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

    .line 682
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

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

    .line 362
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setDeviceSettingData(Ljava/util/List;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setEnable(Z)V

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

    .line 609
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->initScrPortraitSpot()V

    .line 585
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 586
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 587
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->updateIndicatorRingScreenLight(Z)V

    return-void
.end method

.method protected showSettingUI()V
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_6d

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6d

    :cond_b
    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsSettingShow:Z

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->showEntryRootView()V

    .line 426
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mCurrentUIState:I

    .line 427
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_6e

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 428
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 430
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->getVpsTranslateDistance()F

    move-result v3

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 431
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 432
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 436
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 437
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 440
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_6a

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v2, v0, :cond_6a

    .line 441
    invoke-interface {v1, v4, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 444
    :cond_6a
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->notifyPortraitSpotPanelState(Z)V

    :cond_6d
    :goto_6d
    return-void

    :array_6e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .registers 3

    .line 383
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->setEnable(Z)V

    .line 385
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideEntryRootView()V

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->hideSettingUI(ZZ)V

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->removeAnimatorListener()V

    .line 388
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->clearPortraitSpotContainerList()V

    const/4 v1, 0x0

    .line 389
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mEntryView:Landroid/view/View;

    .line 390
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsSettingShow:Z

    .line 391
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIsPopSettingShow:Z

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public updateSettingUILayout(Z)V
    .registers 11

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_c

    .line 211
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateSettingUILayout, mSelectRootContainer is null return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 218
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v2, 0x33

    const/16 v3, 0x53

    const/16 v4, 0x55

    const/4 v5, 0x1

    const/16 v6, 0x5a

    const/16 v7, 0x10e

    if-ne v1, v5, :cond_f5

    .line 219
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v1, :cond_bd

    if-eq v1, v6, :cond_90

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_63

    if-eq v1, v7, :cond_33

    goto/16 :goto_e9

    :cond_33
    const/16 v1, 0x35

    .line 230
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_90_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 233
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_90_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_90_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_e9

    .line 239
    :cond_63
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_0_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_0_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 245
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_0_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_e9

    .line 221
    :cond_90
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_90_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 225
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_90_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_90_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_e9

    .line 248
    :cond_bd
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_0_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 251
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_0_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_expand_0_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 259
    :goto_e9
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    add-int/2addr v2, v7

    rem-int/lit16 v2, v2, 0x168

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1b1

    :cond_f5
    const/4 v8, 0x5

    if-ne v1, v8, :cond_12b

    .line 261
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 262
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 263
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_hover_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 265
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_hover_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_hover_marin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v7, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1b1

    :cond_12b
    const/4 v2, 0x4

    if-ne v1, v2, :cond_160

    .line 270
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 272
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_hover_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_hover_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 276
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_hover_marin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 277
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1b1

    .line 279
    :cond_160
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 281
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_17c

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->isAnimatorRunning()Z

    move-result v1

    if-nez v1, :cond_17c

    .line 282
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_17c

    .line 283
    invoke-interface {v1, v0, v5}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 286
    :cond_17c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_portrait_spot_thumbnail_item_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_portrait_spot_item_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 288
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v3, v1

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 293
    :goto_1b1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mVideoPortraitSpotUIManager:Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->updateItemLayout(II)V

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mSelectRootContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1cf

    .line 297
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq p0, v6, :cond_1cb

    if-ne p0, v7, :cond_1ca

    goto :goto_1cb

    :cond_1ca
    move v0, p0

    :cond_1cb
    :goto_1cb
    int-to-float p0, v0

    .line 301
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_1cf
    return-void
.end method
