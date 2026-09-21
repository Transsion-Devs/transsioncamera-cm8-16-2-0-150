.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$MySettingChangeListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0xc8

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

.field private final mBottomUIDefaultHeight:I

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

.field private mCurrentCameraFacing:I

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field protected mEntryView:Landroid/view/View;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field protected mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIsPopSettingShow:Z

.field protected mLowLight:Z

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private mRecording:Z

.field private final mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

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

.field protected mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

.field private mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

.field private mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mZoomScaling:Z

.field private mZoomWheelShowing:Z


# direct methods
.method public static synthetic $r8$lambda$BXI-vxQNd1shdH9DG-eIHBq0qn0(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->resetUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$Iq5EnEMgQWCmo4xVPgMqk5e477E(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$new$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NOXO9XBvkc96UIBqyVwwrM0ywMk(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 522
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 523
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c-g2utbiZSRQIIY-GtX63MLODSE(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$new$3(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n2TFMhWilAEdVWINlTBF9qk162Y(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7qMW6Rh5aIvbNn6kfkK6wWS45M(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$updateSettingUILayout$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$zQEwZ617EVTKLGcNcDngBUfAHPg(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->lambda$ringScreenLightUpdateUI$5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomputeFilterRootVisibility(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misExpandedOrLRHoverState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->isExpandedOrLRHoverState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFloatEqual(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;FF)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautySettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 9

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 85
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$MySettingChangeListener;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 90
    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCurrentCameraFacing:I

    .line 92
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 106
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 139
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    .line 144
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    .line 154
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    .line 358
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 721
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 742
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 306
    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "constructor"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateDistance:F

    .line 308
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBottomUIDefaultHeight:I

    .line 309
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v1, v5, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v1, 0x2

    .line 310
    new-array v3, v1, [F

    fill-array-data v3, :array_a4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 311
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 312
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    new-array v1, v1, [F

    aput v2, v1, v0

    const/4 v0, 0x1

    aput v4, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 314
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getAnimatorDuration()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 315
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_a4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 322
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1e
    return-void
.end method

.method private computeFilterRootVisibility()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_16

    .line 231
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x4

    .line 232
    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v1, :cond_16

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_16
    return-void
.end method

.method private faceBeautyOn(Ljava/lang/String;)Z
    .registers 2

    .line 215
    const-string p0, "aiv2"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "custom"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 1004
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0xc8

    return p0
.end method

.method private getMakeUpTranslateDistance()F
    .registers 4

    .line 617
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

    .line 619
    :cond_12
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateDistance:F

    return p0

    .line 621
    :cond_15
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateDistance:F

    neg-float p0, p0

    return p0
.end method

.method private hideEntryRootView()V
    .registers 3

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 633
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 635
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedShow:Z

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 637
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hidePopSettingTitle()V

    :cond_16
    return-void
.end method

.method private hideSettingUI()V
    .registers 5

    .line 328
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideSettingUI+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    :cond_11
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    if-eqz v1, :cond_16

    :cond_15
    return-void

    .line 332
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->cancelAnimation()V

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    const/4 v3, 0x0

    .line 334
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 335
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getMakeUpTranslateDistance()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 337
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideSettingUI- mIsPopSettingShow:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_5c

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    if-nez v3, :cond_5c

    .line 341
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 343
    :cond_5c
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->notifyConflictUI(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hidePopSettingTitle()V

    return-void
.end method

.method private isExpandedOrLRHoverState()Z
    .registers 3

    .line 626
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

.method private isFloatEqual(FF)Z
    .registers 3

    sub-float/2addr p1, p2

    .line 241
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(I)V
    .registers 3

    const/4 v0, 0x0

    .line 140
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 141
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->settingUIAnimShowOrHide(I)Z

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Object;I)V
    .registers 3

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1e

    .line 723
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_12

    .line 724
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->resetUI()V

    return-void

    .line 725
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_1e

    .line 726
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method private synthetic lambda$new$4(Z)V
    .registers 3

    .line 743
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 744
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    .line 745
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$5()V
    .registers 2

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_9

    .line 753
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateLowLight(Z)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2()V
    .registers 3

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_b

    .line 570
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateLayout(II)V

    :cond_b
    return-void
.end method

.method private notifyConflictUI(Z)V
    .registers 5

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    if-eqz p1, :cond_e

    .line 350
    const-string/jumbo v2, "value_facebeauty_ui_on"

    goto :goto_11

    :cond_e
    const-string/jumbo v2, "value_facebeauty_ui_off"

    .line 349
    :goto_11
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_1b

    const/16 v1, 0xb3

    goto :goto_1d

    :cond_1b
    const/16 v1, 0xb7

    :goto_1d
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz p0, :cond_27

    .line 354
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->showOrHideBottomUI(Z)V

    :cond_27
    return-void
.end method

.method private registerKeyToMonitor(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v0, :cond_c

    .line 790
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! Please check it!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 793
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 794
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_10

    :cond_24
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetUI()V
    .registers 3

    .line 732
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 733
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 735
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    .line 737
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_15

    .line 738
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    :cond_15
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .registers 9

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    if-eqz v0, :cond_1a

    goto :goto_3a

    .line 289
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateFeatureRv(I)V

    .line 291
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCurrentUIType:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_26

    :goto_24
    move v1, v2

    goto :goto_34

    .line 294
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_34

    goto :goto_24

    .line 299
    :cond_34
    :goto_34
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCurrentUIType:I

    .line 301
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showOrHide(ZZ)V

    return v2

    :cond_3a
    :goto_3a
    return v1
.end method

.method private showEntryRootView()V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 691
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 692
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mNeedShow:Z

    .line 693
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private showOrHide(ZZ)V
    .registers 9

    if-eqz p1, :cond_8b

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 261
    :goto_12
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_19
    move v3, p2

    :goto_1a
    if-eqz v0, :cond_44

    .line 263
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    if-eqz v0, :cond_44

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz v0, :cond_44

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v4, :cond_44

    .line 265
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showOrHide(Z)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateSeekBarVisibility(Z)V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_conflict_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p2, "value_facebeauty_ui_off"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 272
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput p1, v5, v1

    aput v3, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    if-eqz p1, :cond_5e

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getMakeUpTranslateDistance()F

    move-result p1

    goto :goto_5f

    :cond_5e
    move p1, p2

    .line 275
    :goto_5f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_64

    goto :goto_68

    :cond_64
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getMakeUpTranslateDistance()F

    move-result p2

    .line 276
    :goto_68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v4, [F

    aput p1, v3, v1

    aput p2, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 278
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq p1, v2, :cond_86

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_86

    .line 279
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    xor-int/2addr p2, v2

    invoke-interface {p1, p2, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 281
    :cond_86
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mAnimShow:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->notifyConflictUI(Z)V

    :cond_8b
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 799
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 800
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_4

    :cond_18
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 377
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 379
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_d

    .line 380
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->video_facebeauty_main_layout_ui5:I

    goto :goto_f

    .line 382
    :cond_d
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->video_facebeauty_main_layout:I

    :goto_f
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    .line 385
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 387
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 388
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;)V

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->face_beauty_bottom_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    .line 394
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 395
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->updateSettingUILayout(Z)V

    .line 396
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 397
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    .line 398
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->ringScreenLightUpdateUI()V

    .line 399
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[createEntryView] , mLowLight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mLowLight:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->addAnimatorListener()V

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public doFaceBeautyValueChanged(Ljava/lang/String;)V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_c

    .line 183
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doFaceBeautyValueChanged mVideoFaceBeautySetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_c
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string/jumbo p1, "video_facebeauty_off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string/jumbo p1, "video_facebeauty_on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 590
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

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

    .line 700
    const-string p0, "key_mu_face_beauty"

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

    .line 710
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    const-string v0, "key_mu_face_beauty"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    const-string v0, "key_video_facebeauty"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 705
    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    .line 666
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 667
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 669
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    return-void
.end method

.method protected hidePopSettingTitle()V
    .registers 1

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

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 226
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->currentState()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_18d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_175

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_167

    const/16 v2, 0x9

    if-eq p1, v2, :cond_187

    const/16 v2, 0x13

    if-eq p1, v2, :cond_15f

    const/16 v2, 0x20

    if-eq p1, v2, :cond_14c

    const/16 v2, 0xa5

    if-eq p1, v2, :cond_13b

    const/16 v2, 0xc6

    if-eq p1, v2, :cond_133

    const/16 v2, 0x149

    if-eq p1, v2, :cond_167

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_11f

    const/16 v2, 0x1d

    if-eq p1, v2, :cond_10e

    const/16 v2, 0x7c

    if-eq p1, v2, :cond_fd

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_fd

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_d1

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_c9

    packed-switch p1, :pswitch_data_198

    packed-switch p1, :pswitch_data_1a2

    goto/16 :goto_14b

    .line 914
    :pswitch_44
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    if-nez p1, :cond_59

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    if-eqz p1, :cond_59

    .line 915
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 916
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 917
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p1, :cond_59

    .line 918
    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    .line 921
    :cond_59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    return-void

    .line 906
    :pswitch_5c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    .line 907
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 908
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    .line 909
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_14b

    .line 910
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return-void

    .line 860
    :pswitch_6c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 861
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    if-nez p1, :cond_87

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomScaling:Z

    if-eqz p1, :cond_87

    .line 862
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 863
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 864
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p1, :cond_87

    .line 865
    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    .line 868
    :cond_87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomScaling:Z

    return-void

    .line 850
    :pswitch_8a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 851
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomScaling:Z

    .line 852
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 853
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    .line 854
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_14b

    .line 855
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return-void

    .line 897
    :pswitch_a0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 898
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 899
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 900
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 901
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_14b

    .line 902
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return-void

    .line 881
    :pswitch_b3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p1, :cond_ba

    .line 882
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    .line 884
    :cond_ba
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 885
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 886
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 888
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->notifyConflictUI(Z)V

    .line 889
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    return-void

    .line 981
    :cond_c9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    .line 982
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setEnabled(Z)V

    return-void

    .line 965
    :cond_d1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    .line 966
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hidePopSettingTitle()V

    .line 967
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e1

    .line 968
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showOrHide(ZZ)V

    .line 970
    :cond_e1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p1, :cond_e8

    .line 971
    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    .line 973
    :cond_e8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p1, :cond_14b

    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f7

    .line 975
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    .line 977
    :cond_f7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setEnabled(Z)V

    return-void

    .line 842
    :cond_fd
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 843
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 844
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_14b

    .line 845
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return-void

    .line 991
    :cond_10e
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 992
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 993
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_14b

    .line 994
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return-void

    .line 932
    :cond_11f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p1, :cond_126

    .line 933
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    .line 935
    :cond_126
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 936
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 937
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    return-void

    .line 959
    :cond_133
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    return-void

    .line 985
    :cond_13b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 986
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_14b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_14b

    .line 987
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    :cond_14b
    :goto_14b
    return-void

    .line 872
    :cond_14c
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    .line 873
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 874
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 875
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p1, :cond_15c

    .line 876
    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    .line 878
    :cond_15c
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    return-void

    .line 962
    :cond_15f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    return-void

    .line 929
    :cond_167
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    return-void

    .line 924
    :cond_16a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 925
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideEntryRootView()V

    return-void

    .line 948
    :cond_175
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraFacing()I

    move-result p1

    .line 949
    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCurrentCameraFacing:I

    if-eq v2, p1, :cond_187

    .line 950
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCurrentCameraFacing:I

    .line 951
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    .line 955
    :cond_187
    :pswitch_187
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 956
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    return-void

    .line 944
    :cond_18d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 945
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->setEnable(Z)V

    return-void

    :pswitch_data_198
    .packed-switch 0xe
        :pswitch_187
        :pswitch_b3
        :pswitch_a0
    .end packed-switch

    :pswitch_data_1a2
    .packed-switch 0x17
        :pswitch_8a
        :pswitch_6c
        :pswitch_5c
        :pswitch_44
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 814
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    .line 817
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    .line 820
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_29

    return v1

    .line 823
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    return v1

    .line 827
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_3c

    .line 828
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->onBackPressed()Z

    move-result v1

    :cond_3c
    if-eqz v1, :cond_41

    .line 831
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 833
    :cond_41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hidePopSettingTitle()V

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

    .line 406
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 407
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x7

    if-ne p1, v0, :cond_c

    goto :goto_2b

    :cond_c
    if-nez p1, :cond_2a

    .line 410
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p1, :cond_1f

    .line 412
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateLayout(II)V

    .line 414
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz p1, :cond_2a

    .line 415
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateLayout(II)V

    :cond_2a
    return-void

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    .line 409
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onPreviewClick()Z
    .registers 2

    .line 806
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz v0, :cond_d

    .line 807
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->onBackPressed()Z

    .line 809
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 8

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 198
    :goto_10
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isCollapse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    const-string v0, "key_video_facebeauty"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 200
    sput-boolean v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 201
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->settingUIAnimShowOrHide(I)Z

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_85

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_85

    .line 203
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",switchValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "video_facebeauty_off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->faceBeautyOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string/jumbo v1, "video_facebeauty_on"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_85
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

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 751
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 645
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

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

    .line 761
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 762
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataList:Ljava/util/List;

    if-eqz p1, :cond_3c

    .line 764
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

    .line 765
    const-string v1, "key_mu_face_beauty"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 766
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_b

    .line 767
    :cond_26
    const-string v1, "key_video_facebeauty"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 768
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_b

    .line 770
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_b

    :cond_3c
    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz v0, :cond_7

    .line 606
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->setEnabled(Z)V

    .line 608
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_e

    .line 609
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 611
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    if-eqz p0, :cond_15

    .line 612
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->setEnabled(Z)V

    :cond_15
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

    .line 779
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_c

    .line 781
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    .line 782
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    return-void

    .line 784
    :cond_c
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 5

    .line 650
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 651
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setupEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 652
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mRecording:Z

    .line 653
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomWheelShowing:Z

    .line 654
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mZoomScaling:Z

    .line 656
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->hideSettingUI()V

    .line 657
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->showEntryRootView()V

    .line 658
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    if-eqz p0, :cond_27

    .line 660
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    :cond_27
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 674
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 675
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->unregisterSettingData()V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 678
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 680
    :cond_18
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 681
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->removeAnimatorListener()V

    .line 682
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    .line 683
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    .line 684
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mEntryView:Landroid/view/View;

    .line 685
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIsPopSettingShow:Z

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 422
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 423
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    .line 428
    :cond_e
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 429
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    .line 431
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 432
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 433
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mFaceBeautyTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    iget v7, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v6, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->updateLayout(II)V

    const/4 v6, 0x0

    .line 434
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 435
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 437
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 438
    iget v9, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v11, 0x55

    const/16 v12, 0xb4

    const/4 v13, 0x1

    const/16 v14, 0x10e

    const/16 v15, 0x33

    const/16 v6, 0x5a

    const/16 v10, 0x168

    if-ne v9, v13, :cond_f1

    .line 439
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v2, :cond_5b

    if-eq v2, v6, :cond_96

    if-eq v2, v12, :cond_79

    if-eq v2, v14, :cond_5e

    if-eq v2, v10, :cond_5b

    goto :goto_cb

    :cond_5b
    const/16 v2, 0x53

    goto :goto_b1

    .line 453
    :cond_5e
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 454
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 455
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 456
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_left_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_cb

    :cond_79
    const/16 v2, 0x35

    .line 447
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 448
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_left_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 449
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 450
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_top_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_cb

    .line 441
    :cond_96
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 442
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 443
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 444
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_left_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_cb

    .line 460
    :goto_b1
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_top_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 462
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_left_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 463
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_expand_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 467
    :goto_cb
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    add-int/2addr v3, v14

    rem-int/2addr v3, v10

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 468
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_ed

    .line 469
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_e4

    .line 470
    invoke-interface {v2, v13, v6}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 472
    :cond_e4
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v2, :cond_ed

    const/16 v3, 0xb3

    .line 473
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 476
    :cond_ed
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_247

    .line 477
    :cond_f1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1c8

    .line 478
    iget v9, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v11, 0x7

    if-ne v9, v11, :cond_17a

    .line 479
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v2, v6, :cond_157

    if-eq v2, v12, :cond_13b

    if-eq v2, v14, :cond_11e

    const/16 v2, 0x53

    .line 500
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 501
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_flip_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 502
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    rem-int/2addr v3, v10

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_173

    .line 487
    :cond_11e
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 488
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_flip_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 489
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_flip_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 490
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    sub-int/2addr v3, v6

    rem-int/2addr v3, v10

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_173

    .line 493
    :cond_13b
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 494
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_flip_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 495
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_flip_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 496
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    rem-int/2addr v3, v10

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_173

    .line 481
    :cond_157
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 482
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_flip_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 483
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->face_beauty_flip_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 484
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    add-int/2addr v3, v6

    rem-int/2addr v3, v10

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 505
    :goto_173
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_247

    :cond_17a
    const/4 v6, 0x3

    if-ne v9, v6, :cond_189

    .line 508
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "hover_support_setting_ui_bottom_margin"

    invoke-static {v3, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_19b

    .line 511
    :cond_189
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_198

    .line 512
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_bottom_offset:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_195
    sub-int v2, v3, v2

    goto :goto_19b

    .line 514
    :cond_198
    iget v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBottomUIDefaultHeight:I

    goto :goto_195

    :goto_19b
    if-eqz p1, :cond_1c4

    .line 518
    filled-new-array {v7, v2}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    .line 519
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 520
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 521
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v3, v4, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda2;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 525
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_247

    .line 527
    :cond_1c4
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_247

    .line 530
    :cond_1c8
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v7, 0x5

    if-ne v2, v7, :cond_1f3

    .line 531
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 532
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 533
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 534
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 535
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v14, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 536
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 537
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_247

    :cond_1f3
    const/4 v7, 0x4

    if-ne v2, v7, :cond_21c

    .line 539
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 540
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 541
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 542
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 543
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 544
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 545
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_247

    .line 547
    :cond_21c
    sget v2, Lcom/transsion/camera/feature/makeup/R$integer;->video_facebeauty_default_root_gravity_flags:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 553
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_234

    .line 554
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_bottom_offset:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_241

    .line 556
    :cond_234
    iget v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr v3, v2

    .line 557
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_23f

    add-int/lit8 v3, v3, 0x20

    .line 560
    :cond_23f
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 562
    :goto_241
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 565
    :goto_247
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateScreenFormType(I)V

    .line 566
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 574
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 575
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v2, :cond_27e

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_275

    goto :goto_27e

    .line 578
    :cond_275
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_286

    .line 576
    :cond_27e
    :goto_27e
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->vf_bottom_height:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 580
    :goto_286
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->mVideoFaceBeautyBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
