.class public Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;,
        Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DELAY_12S_TIME:I = 0x2ee0

.field private static final DELAY_3S_TIME:I = 0xbb8

.field private static final DELAY_9S_TIME:I = 0x2328

.field private static final MSG_12S_DELAY:I = 0x4

.field private static final MSG_3S_DELAY:I = 0x1

.field private static final MSG_9S_DELAY:I = 0x0

.field private static final MSG_DETECT_SKY:I = 0x2

.field private static final MSG_NOT_DETECT_SKY:I = 0x3

.field private static final RATIO_1_1:F = 1.0f

.field private static final RATIO_4_3:F = 1.3333334f


# instance fields
.field private mAnimatorAlpha:Landroid/animation/ObjectAnimator;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContext:Landroid/content/Context;

.field private mCutoutBaseLine:I

.field private mDetectCount:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsContinuousNotDetect:Z

.field private mIsPreviewStarted:Z

.field private mIsStateTwo:Z

.field private mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginTop:I

.field private mPreviewHeight:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewWidth:I

.field private mScanViewHeight:I

.field private mScreenWidth:I

.field private mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchPreviewValue:Ljava/lang/String;

.field private mTranslation:I

.field private mTranslationEnd:I

.field private mTranslationInterval:I

.field private final magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDetectCount(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsContinuousNotDetect(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanViewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkyScannerView(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslationEnd(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslationInterval(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmagicSkyUIHandler(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDetectCount(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsContinuousNotDetect(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchPreviewValue(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$manimationStateTwo(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->animationStateTwo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanViewAnimEnd(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanViewAnimStart(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIsStateTwo(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setIsStateTwo(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayoutParams(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->updateLayoutParams(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    const/16 v1, 0xf0

    .line 54
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    const/16 v1, 0x1e0

    .line 55
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    const/16 v1, 0x4b0

    .line 56
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    const/16 v1, 0xa

    .line 76
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    .line 80
    new-instance v1, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 81
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 83
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    .line 88
    new-instance v0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method private animationStateTwo()V
    .registers 5

    .line 520
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 524
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$string;->magic_sky_not_detected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 526
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_27

    .line 527
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 529
    :cond_27
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scanViewAnimEnd()V
    .registers 4

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 538
    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_20

    .line 540
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 543
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private scanViewAnimStart()V
    .registers 10

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->magic_sky_scan_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_144

    :cond_20
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    if-nez v0, :cond_144

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    if-nez v0, :cond_2a

    goto/16 :goto_144

    .line 453
    :cond_2a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    if-nez v0, :cond_30

    goto/16 :goto_144

    .line 456
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_37

    .line 457
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 459
    :cond_37
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v2, :cond_85

    .line 460
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v6, 0x5a

    if-eq v0, v6, :cond_77

    const/16 v6, 0xb4

    if-eq v0, v6, :cond_6a

    const/16 v6, 0x10e

    if-eq v0, v6, :cond_5d

    .line 475
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    neg-int v0, v0

    div-int/2addr v0, v5

    iget v6, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 476
    invoke-direct {p0, v4, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto/16 :goto_ce

    .line 470
    :cond_5d
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    div-int/2addr v0, v5

    iget v6, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v6, v5

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 471
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_ce

    .line 466
    :cond_6a
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    div-int/2addr v0, v5

    iget v6, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v6, v5

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 467
    invoke-direct {p0, v4, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_ce

    .line 462
    :cond_77
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    neg-int v0, v0

    div-int/2addr v0, v5

    iget v6, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 463
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_ce

    :cond_85
    if-eqz v0, :cond_c9

    if-ne v0, v5, :cond_8a

    goto :goto_c9

    .line 482
    :cond_8a
    const-string v6, "on"

    if-ne v0, v3, :cond_aa

    .line 483
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScreenWidth:I

    neg-int v0, v0

    div-int/2addr v0, v5

    iget v7, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 485
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 487
    :cond_a4
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_ce

    :cond_aa
    if-ne v0, v1, :cond_ce

    .line 489
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScreenWidth:I

    div-int/2addr v0, v5

    iget v7, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v7, v5

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 491
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    neg-int v0, v0

    div-int/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 493
    :cond_c3
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_ce

    .line 480
    :cond_c9
    :goto_c9
    iput v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 481
    invoke-direct {p0, v4, v4}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    .line 495
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->startAnim()V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$string;->magic_sky_scan_tips:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_f2

    .line 499
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 501
    :cond_f2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/4 v6, 0x3

    new-array v7, v6, [F

    fill-array-data v7, :array_146

    const-string v8, "alpha"

    invoke-static {v0, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    const/4 v7, -0x1

    .line 502
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 506
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v2, :cond_12e

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    const-wide/16 v0, 0x2ee0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_12e
    if-eqz v0, :cond_138

    if-eq v0, v5, :cond_138

    if-eq v0, v6, :cond_138

    if-eq v0, v3, :cond_138

    if-ne v0, v1, :cond_144

    .line 514
    :cond_138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    const-wide/16 v0, 0x2328

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_144
    :goto_144
    return-void

    nop

    :array_146
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setIsStateTwo(Z)V
    .registers 2

    .line 551
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    return-void
.end method

.method private setTranslation(II)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private setTranslationParameter()V
    .registers 7

    .line 261
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_46

    .line 262
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3a

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_20

    .line 277
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 278
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    .line 272
    :cond_20
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    neg-int v0, v0

    .line 273
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    .line 268
    :cond_2d
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    neg-int v0, v0

    .line 269
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    .line 264
    :cond_3a
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 265
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    :cond_46
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-nez v0, :cond_90

    .line 282
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    int-to-float v2, v0

    iget v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    int-to-float v5, v4

    div-float/2addr v2, v5

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_85

    int-to-double v0, v0

    int-to-double v4, v4

    div-double/2addr v0, v4

    const-wide v4, 0x3ff5555560000000L    # 1.3333333730697632

    .line 283
    invoke-static {v0, v1, v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_85

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 285
    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    .line 287
    :cond_85
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 288
    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    :cond_90
    if-ne v0, v3, :cond_9d

    .line 291
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 292
    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    :cond_9d
    const/4 v4, 0x3

    if-ne v0, v2, :cond_a6

    .line 294
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    div-int/2addr v0, v4

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    :cond_a6
    const/4 v2, 0x5

    if-ne v0, v2, :cond_b0

    .line 296
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    neg-int v0, v0

    div-int/2addr v0, v4

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    :cond_b0
    if-ne v0, v4, :cond_d1

    .line 298
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    int-to-float v2, v0

    iget v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpl-float v1, v2, v1

    if-nez v1, :cond_c6

    .line 299
    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 300
    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return-void

    .line 302
    :cond_c6
    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCutoutBaseLine:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 303
    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    :cond_d1
    return-void
.end method

.method private stopScanViewAnim()V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_38

    :cond_f
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 242
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1e

    .line 243
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 246
    :cond_1e
    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 247
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_38

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_38
    :goto_38
    return-void
.end method

.method private updateLayoutParams(Landroid/graphics/Rect;)V
    .registers 11

    .line 166
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    .line 167
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 170
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x2

    const/16 v3, 0x168

    const/4 v4, 0x3

    if-eqz v0, :cond_87

    if-eq v0, v2, :cond_87

    if-ne v0, v4, :cond_21

    goto :goto_87

    :cond_21
    const/16 v2, 0x11

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    const/4 v7, 0x4

    if-eq v0, v7, :cond_66

    const/4 v8, 0x5

    if-ne v0, v8, :cond_2e

    goto :goto_66

    .line 213
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/R$dimen;->magic_sky_scan_view_height_expand:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    .line 214
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    .line 215
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq p1, v6, :cond_4f

    if-eq p1, v5, :cond_4f

    .line 224
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 225
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_57

    .line 218
    :cond_4f
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 219
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 228
    :goto_57
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 229
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    sub-int/2addr v3, p1

    int-to-float p1, v3

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_f4

    .line 202
    :cond_66
    :goto_66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScreenWidth:I

    .line 203
    iget p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    div-int/2addr p1, v4

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 205
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 206
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v0, v7, :cond_7e

    goto :goto_7f

    :cond_7e
    move v5, v6

    .line 211
    :goto_7f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    int-to-float v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_f4

    .line 173
    :cond_87
    :goto_87
    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    const/16 v5, 0x438

    if-ge v1, v5, :cond_90

    .line 174
    iput v3, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    goto :goto_94

    :cond_90
    const/16 v5, 0x1e0

    .line 176
    iput v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    :goto_94
    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_bd

    .line 179
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_b8

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    const-wide v0, 0x3ff5555560000000L    # 1.3333333730697632

    invoke-static {v2, v3, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    goto :goto_dd

    .line 182
    :cond_b8
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    goto :goto_dd

    :cond_bd
    if-ne v0, v2, :cond_c6

    .line 185
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    .line 186
    iput v3, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    goto :goto_dd

    :cond_c6
    if-ne v0, v4, :cond_dd

    .line 188
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-nez v0, :cond_d6

    .line 189
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    goto :goto_dd

    .line 191
    :cond_d6
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCutoutBaseLine:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    .line 195
    :cond_dd
    :goto_dd
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 196
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 197
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v0, 0x1

    .line 198
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 233
    :goto_f4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->onScreenFormChanged(I)V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->stopScanViewAnim()V

    .line 236
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslationParameter()V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 137
    sget v0, Lcom/transsion/camera/R$layout;->sky_scanner_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 138
    sget v0, Lcom/transsion/camera/R$id;->sky_scanner_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    const-string v0, "cutout_baseline_height"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCutoutBaseLine:I

    return-object p1
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

    .line 318
    const-string p0, "key_magic_sky_type"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 326
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    if-eqz p1, :cond_23

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-eq p1, v0, :cond_23

    return-void

    .line 364
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x7b

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 360
    :cond_1c
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimStart()V

    const/4 p1, 0x1

    .line 361
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    return-void

    .line 356
    :cond_23
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimEnd()V

    const/4 p1, 0x0

    .line 357
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 155
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->updateLayoutParams(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 161
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->updateLayoutParams(Landroid/graphics/Rect;)V

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

    .line 371
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 332
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_c

    .line 334
    const-string v0, "key_fold_switch_preview"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSwitchPreviewValue:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 341
    const-string v0, "key_magic_sky_detection"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_fold_switch_preview"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 377
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimEnd()V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_magic_sky_detection"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 382
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updateCameraState(I)V
    .registers 2

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->updateLayoutParams(Landroid/graphics/Rect;)V

    return-void
.end method
