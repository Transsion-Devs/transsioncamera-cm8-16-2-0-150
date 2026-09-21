.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

.field private mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mBottomUIDefaultHeight:I

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field protected mEntryView:Landroid/view/View;

.field private final mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIsPopSettingShow:Z

.field private mIsSettingShow:Z

.field protected mLowLight:Z

.field private mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

.field private mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

.field private mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRecording:Z

.field private final mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

.field private mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mZoomScaling:Z

.field private mZoomWheelShowing:Z


# direct methods
.method public static synthetic $r8$lambda$2gFrQLNxJIDb1ZEFi1tUEMaxMQE(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->lambda$ringScreenLightUpdateUI$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$4l461OxkhcXAV_edhnraJYO4XZI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GaNzdbW-3JDuXo1SHIhvl0HcRGk(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 863
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 864
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OungWe0gkd9qCACONCDqLXro1_E(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->resetUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$RJqufUxVHS4rrNDpfG31SdgO8MQ(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9E0gkCsxw5wa7ofidfsweAq0WI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->lambda$new$3(Ljava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBottomContainer(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMakeUpBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misExpandedOrLRHoverState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->isExpandedOrLRHoverState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoMakeUpSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 7

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 93
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 137
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 157
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    .line 162
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    .line 172
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    .line 359
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 406
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 533
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 300
    sget v0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    .line 301
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomUIDefaultHeight:I

    .line 302
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 303
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 304
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    .line 305
    new-array v1, p1, [F

    fill-array-data v1, :array_a6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getAnimatorDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 307
    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getAnimatorDuration()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_a6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 313
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 315
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 316
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2e
    return-void
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 930
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0x12c

    return p0
.end method

.method private getAnimatorStartDelay()I
    .registers 1

    .line 934
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x32

    return p0

    :cond_9
    const/16 p0, 0x64

    return p0
.end method

.method private getMakeUpTranslateDistance()F
    .registers 4

    .line 915
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

    .line 917
    :cond_12
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    return p0

    .line 919
    :cond_15
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    return p0
.end method

.method private hide()V
    .registers 4

    .line 716
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->cancelAnimation()V

    .line 717
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsSettingShow:Z

    if-nez v0, :cond_10

    .line 718
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "videoMakeUpSettingUI is hide, don\'t hide ! ! !"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 721
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsSettingShow:Z

    .line 722
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hidePopSettingTitle()V

    .line 723
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_2c

    const/4 v2, 0x0

    .line 724
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 725
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 729
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_35

    const/16 v2, 0xb4

    .line 730
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 732
    :cond_35
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method private hideEntryRootView()V
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mNeedShow:Z

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    :cond_17
    return-void
.end method

.method private isAnimatorRunning()Z
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    goto :goto_1c

    .line 324
    :cond_a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

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

    .line 924
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

.method private synthetic lambda$new$0(I)V
    .registers 3

    const/4 v0, 0x0

    .line 158
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .registers 3

    .line 407
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 408
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mLowLight:Z

    .line 409
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Object;I)V
    .registers 3

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1e

    .line 535
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_12

    .line 536
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->resetUI()V

    return-void

    .line 537
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_1e

    .line 538
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$2()V
    .registers 2

    .line 416
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mLowLight:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->updateLowLight(Z)V

    return-void
.end method

.method private notifyConflictUI(Z)V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    if-eqz p1, :cond_e

    .line 354
    const-string/jumbo v2, "value_facebeauty_ui_on"

    goto :goto_11

    :cond_e
    const-string/jumbo v2, "value_facebeauty_ui_off"

    .line 353
    :goto_11
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_1b

    const/16 p1, 0xb3

    goto :goto_1d

    :cond_1b
    const/16 p1, 0xb7

    :goto_1d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetUI()V
    .registers 3

    const/4 v0, 0x1

    .line 544
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 545
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 547
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    .line 549
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    if-eqz p0, :cond_16

    .line 550
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->resetUI()V

    :cond_16
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .registers 9

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_39

    .line 282
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->updateFeatureRv(I)V

    .line 284
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCurrentUIType:I

    if-ne v0, p1, :cond_22

    :goto_20
    move v1, v2

    goto :goto_30

    .line 287
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_30

    goto :goto_20

    .line 292
    :cond_30
    :goto_30
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCurrentUIType:I

    .line 294
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showOrHide(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showPopSettingTitleIfNeed()V

    return v2

    .line 278
    :cond_39
    :goto_39
    sput-boolean v2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hide()V

    return v1
.end method

.method private showEntryRootView()V
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 503
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 504
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mNeedShow:Z

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private showOrHide(Z)V
    .registers 9

    if-eqz p1, :cond_bb

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    .line 243
    :goto_12
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz v1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_19
    move v1, v0

    .line 245
    :goto_1a
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v2

    aput v1, v6, v3

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 246
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz p1, :cond_2f

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getMakeUpTranslateDistance()F

    move-result p1

    goto :goto_30

    :cond_2f
    move p1, v0

    .line 247
    :goto_30
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz v1, :cond_35

    goto :goto_39

    :cond_35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getMakeUpTranslateDistance()F

    move-result v0

    .line 248
    :goto_39
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v2

    aput v0, v4, v3

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 250
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz p1, :cond_72

    .line 251
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsSettingShow:Z

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getAnimatorStartDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getAnimatorStartDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_95

    .line 257
    :cond_72
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsSettingShow:Z

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    :goto_95
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 266
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq p1, v3, :cond_ad

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_ad

    .line 267
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    xor-int/2addr v0, v3

    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 269
    :cond_ad
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    .line 270
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-nez p1, :cond_bb

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    :cond_bb
    return-void
.end method

.method private updateLowLight(Z)V
    .registers 2

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    if-eqz p0, :cond_7

    .line 423
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->updateLowLight(Z)V

    :cond_7
    return-void
.end method

.method private videoMakeUpOn(Ljava/lang/String;)Z
    .registers 2

    .line 212
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 213
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 378
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 381
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_14

    .line 382
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_video_main_layout_ui5:I

    goto :goto_16

    .line 384
    :cond_14
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_video_main_layout:I

    :goto_16
    const/4 v1, 0x0

    .line 386
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    .line 387
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->video_makeup_top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_bottom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_top_seekbar_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 390
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 391
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;)V

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_makeup_style"

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 399
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mLowLight:Z

    .line 400
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->updateLowLight(Z)V

    .line 401
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 402
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->addAnimatorListener()V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

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

    .line 512
    const-string p0, "key_video_makeup_style"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 522
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    const-string v0, "key_video_makeup"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v0, "key_video_makeup_style"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 517
    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 483
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 485
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    return-void
.end method

.method protected hidePopSettingTitle()V
    .registers 1

    return-void
.end method

.method protected hideSettingUI(Z)V
    .registers 5

    .line 328
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideSettingUI]  ,isFromRestriction :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsSettingShow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsSettingShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_25

    goto :goto_39

    :cond_25
    if-eqz p1, :cond_3a

    .line 332
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsSettingShow:Z

    if-nez p1, :cond_3a

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->isAnimatorRunning()Z

    move-result p1

    if-nez p1, :cond_39

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3a

    :cond_39
    :goto_39
    return-void

    .line 336
    :cond_3a
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->cancelAnimation()V

    const/4 p1, 0x0

    .line 337
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsSettingShow:Z

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_56

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 343
    :cond_56
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_6a

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsPopSettingShow:Z

    if-nez v2, :cond_6a

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomScaling:Z

    if-nez v2, :cond_6a

    .line 345
    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 347
    :cond_6a
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hidePopSettingTitle()V

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
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->currentState()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/16 v0, 0xa5

    const/4 v1, 0x0

    if-eqz p1, :cond_104

    const/4 v2, 0x1

    if-eq p1, v2, :cond_fe

    const/4 v3, 0x2

    if-eq p1, v3, :cond_f3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_f0

    const/16 v3, 0x9

    if-eq p1, v3, :cond_fe

    const/16 v3, 0x20

    if-eq p1, v3, :cond_e7

    if-eq p1, v0, :cond_104

    const/16 v0, 0x149

    if-eq p1, v0, :cond_f0

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_d5

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_be

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_b3

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_f0

    packed-switch p1, :pswitch_data_114

    packed-switch p1, :pswitch_data_11e

    goto/16 :goto_113

    .line 653
    :pswitch_34
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    if-nez p1, :cond_49

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    if-eqz p1, :cond_49

    .line 654
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 655
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 656
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p1, :cond_49

    .line 657
    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    .line 660
    :cond_49
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    return-void

    .line 645
    :pswitch_4c
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    .line 646
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 647
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    .line 648
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_113

    .line 649
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return-void

    .line 610
    :pswitch_5c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_113

    .line 611
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    if-nez p1, :cond_77

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomScaling:Z

    if-eqz p1, :cond_77

    .line 612
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 613
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 614
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p1, :cond_77

    .line 615
    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    .line 618
    :cond_77
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomScaling:Z

    return-void

    .line 600
    :pswitch_7a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_113

    .line 601
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 602
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomScaling:Z

    .line 603
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_113

    .line 605
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return-void

    .line 636
    :pswitch_90
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 637
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    .line 638
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 639
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_113

    .line 641
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return-void

    .line 627
    :pswitch_a3
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 628
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p1, :cond_ac

    .line 629
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    .line 631
    :cond_ac
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    .line 633
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    return-void

    .line 693
    :cond_b3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    .line 694
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsPopSettingShow:Z

    .line 695
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hide()V

    return-void

    .line 703
    :cond_be
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_113

    .line 704
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 705
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_113

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_113

    .line 706
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return-void

    .line 669
    :cond_d5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p1, :cond_e1

    .line 670
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->activityPause()V

    .line 671
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    .line 673
    :cond_e1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 674
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    return-void

    .line 622
    :cond_e7
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    .line 623
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 624
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsPopSettingShow:Z

    return-void

    .line 700
    :cond_f0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIsPopSettingShow:Z

    return-void

    .line 663
    :cond_f3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_113

    .line 665
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return-void

    .line 689
    :cond_fe
    :pswitch_fe
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 690
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    return-void

    :cond_104
    if-ne p1, v0, :cond_109

    .line 679
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 681
    :cond_109
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_113

    .line 683
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(I)V

    :cond_113
    :goto_113
    return-void

    :pswitch_data_114
    .packed-switch 0xe
        :pswitch_fe
        :pswitch_a3
        :pswitch_90
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x17
        :pswitch_7a
        :pswitch_5c
        :pswitch_4c
        :pswitch_34
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 582
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 586
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2c

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->onBackPressed()Z

    move-result v1

    :cond_2c
    if-eqz v1, :cond_32

    const/4 v0, 0x1

    .line 590
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showOrHide(Z)V

    .line 592
    :cond_32
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hidePopSettingTitle()V

    return v1
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 737
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 738
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_23

    :cond_c
    if-nez v0, :cond_22

    .line 741
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateLayout(II)V

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->updateLayout(II)V

    :cond_22
    return-void

    :cond_23
    :goto_23
    const/4 p1, 0x0

    .line 740
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 749
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    const/4 p1, 0x1

    .line 750
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 191
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gtz v1, :cond_10

    move v0, v2

    .line 194
    :cond_10
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isCollapse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    const-string v1, "key_video_makeup"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 196
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_6c

    .line 198
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->videoMakeUpOn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_61
    if-nez v0, :cond_6c

    .line 205
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 206
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    :cond_6c
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 415
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 556
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 557
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    if-eqz p1, :cond_3c

    .line 559
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 560
    const-string v1, "key_video_makeup_style"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 561
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_b

    .line 562
    :cond_26
    const-string v1, "key_video_makeup"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 563
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_b

    .line 565
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_b

    :cond_3c
    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_7

    .line 450
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->setEnabled(Z)V

    .line 452
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    if-eqz p0, :cond_e

    .line 453
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->setEnabled(Z)V

    :cond_e
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

    .line 574
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 470
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 472
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    .line 473
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 474
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->registerSettingData(Ljava/util/List;)V

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_1c

    .line 477
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    :cond_1c
    return-void
.end method

.method protected showPopSettingTitleIfNeed()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 490
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 491
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->unregisterSettingData()V

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_makeup_style"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 494
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 495
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    .line 497
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    .line 498
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 755
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 756
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 757
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    return-void

    .line 762
    :cond_10
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 763
    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v4

    .line 764
    iget-object v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    .line 765
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget v7, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    iget v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateProgressText(II)V

    .line 766
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 767
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x1

    .line 768
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 769
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 771
    iget v10, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ne v10, v11, :cond_4e

    .line 772
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_root_hover_bottom_offset:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_69

    :cond_4e
    if-ne v10, v12, :cond_59

    .line 774
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_root_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :goto_56
    sub-int v4, v5, v4

    goto :goto_69

    .line 777
    :cond_59
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 778
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_bottom_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_56

    .line 780
    :cond_66
    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomUIDefaultHeight:I

    goto :goto_56

    .line 783
    :goto_69
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 784
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 785
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 786
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 788
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x0

    .line 789
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 791
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget v13, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v11, v13, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateLayout(II)V

    .line 792
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iget v13, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v11, v13, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->updateLayout(II)V

    .line 793
    iget v11, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v15, 0x5a

    const/16 v12, 0x33

    const/16 v13, 0x53

    const/16 v10, 0x10e

    const/16 v14, 0xb4

    if-ne v11, v8, :cond_143

    if-eq v1, v15, :cond_ff

    if-eq v1, v14, :cond_e2

    if-eq v1, v10, :cond_c7

    .line 816
    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 817
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 818
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 819
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_11b

    .line 808
    :cond_c7
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 809
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 810
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 811
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_11b

    :cond_e2
    const/16 v4, 0x35

    .line 802
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 803
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 804
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 805
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_11b

    :cond_ff
    const/16 v4, 0x55

    .line 796
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 797
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 798
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 799
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 822
    :goto_11b
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/2addr v1, v10

    rem-int/lit16 v1, v1, 0x168

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 823
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13c

    .line 824
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_133

    .line 825
    invoke-interface {v1, v8, v7}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 827
    :cond_133
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_13c

    const/16 v4, 0xb3

    .line 828
    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 831
    :cond_13c
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 832
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_24d

    :cond_143
    const/4 v8, 0x7

    if-ne v11, v8, :cond_18a

    .line 834
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eq v1, v15, :cond_163

    if-eq v1, v14, :cond_163

    if-eq v1, v10, :cond_163

    .line 845
    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 846
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_flip_bottom_margin:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 847
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_173

    :cond_163
    const/4 v7, 0x0

    .line 839
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 840
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_flip_top_margin:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 841
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v14, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 850
    :goto_173
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_183

    .line 851
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_183

    const/4 v4, 0x1

    .line 852
    invoke-interface {v1, v4, v7}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 855
    :cond_183
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 856
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_24d

    .line 857
    :cond_18a
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c8

    if-eqz p1, :cond_1bc

    .line 859
    filled-new-array {v9, v4}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x190

    .line 860
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 861
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 862
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v4, v6, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda4;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 866
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1c1

    .line 868
    :cond_1bc
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 869
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    :goto_1c1
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_24d

    .line 872
    :cond_1c8
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eqz v1, :cond_228

    const/4 v7, 0x2

    if-ne v1, v7, :cond_1d0

    goto :goto_228

    :cond_1d0
    const/4 v4, 0x4

    if-ne v1, v4, :cond_1fd

    const/16 v4, 0x55

    .line 884
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 885
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 886
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 887
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 888
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 889
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 890
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24d

    :cond_1fd
    const/4 v4, 0x5

    if-ne v1, v4, :cond_24d

    .line 892
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 893
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 894
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 895
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 896
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 897
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 898
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24d

    .line 874
    :cond_228
    :goto_228
    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 875
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_242

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->isAnimatorRunning()Z

    move-result v1

    if-nez v1, :cond_242

    .line 876
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_242

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 877
    invoke-interface {v1, v8, v7}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    goto :goto_243

    :cond_242
    const/4 v8, 0x0

    .line 880
    :goto_243
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v8, v8}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 881
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 882
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    :cond_24d
    :goto_24d
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 901
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v8, 0x7

    if-ne v8, v2, :cond_261

    .line 902
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_mu_big_item_height:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_278

    .line 904
    :cond_261
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_270

    .line 905
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_bottom_height:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_278

    .line 907
    :cond_270
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 910
    :goto_278
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
