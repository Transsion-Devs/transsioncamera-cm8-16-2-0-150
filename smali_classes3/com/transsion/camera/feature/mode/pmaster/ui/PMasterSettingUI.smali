.class public Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x12c

.field private static final HIDE_SETTING_NAME_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_SETTING_NAME:I = 0x64

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBlurAlgoSupportForBackCamera:Z

.field private mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mExpandTranslateDistance:F

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIsEntryRootViewRestore:Z

.field private mIsModeChanging:Z

.field private mIsPopSettingShow:Z

.field private mIsSelfTimerCancel:Z

.field private mIsSettingUIShow:Z

.field private mIsSuperNightLiteOn:Z

.field private mIsSuperNightLiteSwitchOn:Z

.field private mLowLight:Z

.field private final mMakeupSupport:Z

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopSettingTitleContainer:Landroid/view/ViewGroup;

.field private mPopSettingTitleTextView:Landroid/widget/TextView;

.field private final mPortraitFlareSupport:Z

.field private mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

.field private final mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

.field private mSelfTimerCapturing:Z

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldHideEntryOnPause:Z

.field private mShouldShowSettingTitle:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

.field private mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$UIHandler;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;


# direct methods
.method public static synthetic $r8$lambda$3BQEWF8QqMtKxj8dpRq-DTeLJ7w(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->lambda$updateBottomUILayout$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$3D8JnuV0hLA4wAYoKjcTBjk8cq0(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$SymyLxBUOEWk88piiO7B68-aonY(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TrDtloLHqJtkMJmazrk6fx1lkKg(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->lambda$updateBottomUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBottomContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSelfTimerCancel(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSelfTimerCancel:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSuperNightLiteOn(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSuperNightLiteOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSuperNightLiteSwitchOn(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSuperNightLiteSwitchOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhide(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hide(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhidePopSettingTitle(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misExpandedOrLRHoverState(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->isExpandedOrLRHoverState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 71
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PMasterSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 118
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 9

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsEntryRootViewRestore:Z

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mShouldHideEntryOnPause:Z

    .line 121
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 131
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 157
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    .line 164
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

    .line 189
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 984
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 1263
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$9;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$9;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1283
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$10;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$10;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    .line 425
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$UIHandler;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$UIHandler;

    .line 426
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMakeupSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mMakeupSupport:Z

    .line 427
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getPortraitFlareSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPortraitFlareSupport:Z

    .line 428
    sget v2, Lcom/transsion/camera/feature/pmaster/R$bool;->is_algo_support_for_back_camera:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBlurAlgoSupportForBackCamera:Z

    .line 429
    sget v2, Lcom/transsion/camera/feature/pmaster/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateDistance:F

    .line 430
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->bottom_ui_expand_translate_anim_distance:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mExpandTranslateDistance:F

    .line 432
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 433
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 434
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    .line 436
    new-array v3, p1, [F

    fill-array-data v3, :array_ec

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    new-instance v5, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$7;

    invoke-direct {v5, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$7;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    new-array v3, p1, [F

    fill-array-data v3, :array_f4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 459
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 460
    new-instance v5, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$8;

    invoke-direct {v5, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$8;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 480
    new-array p1, p1, [F

    aput v4, p1, v0

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 481
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getAnimatorDuration()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_ec
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 489
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 493
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2d
    return-void
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 1291
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

    .line 1295
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
    .registers 3

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->isExpandedOrLRHoverState()Z

    move-result v0

    if-nez v0, :cond_12

    .line 301
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateDistance:F

    :goto_10
    neg-float p0, p0

    return p0

    .line 304
    :cond_12
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v0, :cond_1e

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1b

    goto :goto_1e

    .line 307
    :cond_1b
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mExpandTranslateDistance:F

    return p0

    .line 305
    :cond_1e
    :goto_1e
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mExpandTranslateDistance:F

    goto :goto_10
.end method

.method private hide(Z)V
    .registers 7

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_af

    :cond_15
    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    .line 316
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v2, :cond_23

    .line 317
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    :cond_23
    const/4 v2, 0x1

    if-eqz p1, :cond_65

    .line 321
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getMakeUpTranslateDistance()F

    move-result p1

    .line 322
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 323
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 324
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v0

    aput p1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8f

    .line 332
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    :cond_7f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :goto_8f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_a8

    .line 341
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_a2

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->isExpandedOrLRHoverState()Z

    move-result p1

    if-nez p1, :cond_a2

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0, v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 344
    :cond_a2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyState(IIZ)V

    .line 346
    :cond_a8
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_af

    .line 347
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->notifyConflictUI(Z)V

    :cond_af
    :goto_af
    return-void
.end method

.method private hideEntryRootView()V
    .registers 2

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 616
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 618
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mNeedShow:Z

    .line 619
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private hidePopSettingTitle()V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$UIHandler;

    if-eqz v0, :cond_9

    const/16 v1, 0x64

    .line 414
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    goto :goto_1b

    .line 419
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private isExpandedOrLRHoverState()Z
    .registers 3

    .line 1254
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

.method private isExpandedState()Z
    .registers 2

    .line 1260
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 985
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 986
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    .line 987
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 3

    .line 994
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz v0, :cond_9

    .line 995
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateLowLight(Z)V

    .line 997
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz v0, :cond_12

    .line 998
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateLowLight(Z)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$updateBottomUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1177
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1178
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateBottomUILayout$3()V
    .registers 3

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz v0, :cond_b

    .line 1223
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateLayout(II)V

    :cond_b
    return-void
.end method

.method private notifyConflictUI(Z)V
    .registers 5

    .line 220
    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_1a

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    const-string/jumbo v2, "value_facebeauty_ui_on"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2f

    const/16 v1, 0xf7

    .line 223
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_2f

    .line 226
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    const-string/jumbo v2, "value_facebeauty_ui_off"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2f

    const/16 v1, 0xf8

    .line 228
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 231
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->showOrHideBottomUI(Z)V

    :cond_3e
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetSettingUI()V
    .registers 4

    .line 499
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetSettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    .line 502
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_24

    const/4 v2, 0x0

    .line 503
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 504
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getMakeUpTranslateDistance()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 507
    :cond_24
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz v1, :cond_2b

    .line 508
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->resetToInitState()V

    .line 510
    :cond_2b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->isExpandedOrLRHoverState()Z

    move-result v1

    if-nez v1, :cond_38

    .line 511
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_38

    .line 512
    invoke-interface {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 515
    :cond_38
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 993
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1002
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 1003
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    if-eqz p0, :cond_17

    const/high16 p0, -0x1000000

    goto :goto_18

    :cond_17
    const/4 p0, -0x1

    :goto_18
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_32

    .line 388
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateFeatureRv(I)V

    .line 389
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_2d

    .line 390
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showPopSettingTitleIfNeed()V

    :cond_2d
    const/4 p1, 0x1

    .line 392
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showOrHide(Z)V

    return p1

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method private showEntryRootView()V
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 651
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 652
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mNeedShow:Z

    .line 653
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private showOrHide(Z)V
    .registers 7

    if-eqz p1, :cond_d6

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz p1, :cond_11

    move p1, v2

    goto :goto_12

    :cond_11
    move p1, v1

    .line 251
    :goto_12
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAnimShow:Z

    if-eqz p1, :cond_1e

    .line 252
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-eqz v3, :cond_1e

    .line 253
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    return-void

    :cond_1e
    if-eqz p1, :cond_25

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getMakeUpTranslateDistance()F

    move-result p1

    goto :goto_26

    :cond_25
    move p1, v0

    .line 257
    :goto_26
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAnimShow:Z

    if-eqz v3, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getMakeUpTranslateDistance()F

    move-result v0

    .line 258
    :goto_2f
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p1, v4, v1

    aput v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 260
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAnimShow:Z

    if-eqz p1, :cond_75

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getAnimatorStartDelay()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getAnimatorStartDelay()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    goto :goto_a2

    .line 269
    :cond_75
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 276
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    .line 278
    :goto_a2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_cd

    .line 279
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAnimShow:Z

    if-eqz p1, :cond_b6

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->isExpandedState()Z

    move-result p1

    if-nez p1, :cond_cd

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_cd

    .line 285
    :cond_b6
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_c5

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->isExpandedState()Z

    move-result p1

    if-nez p1, :cond_c5

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 289
    :cond_c5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    const/4 v0, -0x1

    const-string v3, "showOrHide"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->notifyState(IIZLjava/lang/String;)V

    .line 293
    :cond_cd
    :goto_cd
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_d6

    .line 294
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mAnimShow:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->notifyConflictUI(Z)V

    :cond_d6
    return-void
.end method

.method private showPopSettingTitleIfNeed()V
    .registers 4

    .line 397
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mShouldShowSettingTitle:Z

    if-eqz v0, :cond_2b

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 400
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$6;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$UIHandler;

    const/16 v0, 0x64

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2b
    return-void

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePopSettingTitleLayout()V
    .registers 5

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1073
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 1074
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x51

    .line 1075
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1076
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1078
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1079
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 7

    .line 520
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init createEntryView,mScreenFormType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 522
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    .line 523
    sget v0, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_main_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    .line 524
    sget p2, Lcom/transsion/camera/feature/pmaster/R$id;->top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    .line 525
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 526
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->setListener(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;)V

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 529
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->setIPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;)V

    .line 530
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/pmaster/R$id;->bottom_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    .line 531
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_bottom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 533
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 534
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setCameraChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 535
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 536
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V

    .line 537
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 538
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setParentView(Landroid/view/ViewGroup;)V

    .line 540
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->resetSettingUI()V

    .line 541
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->addAnimatorListener()V

    .line 542
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 544
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_d6

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleContainer:Landroid/view/ViewGroup;

    .line 546
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 547
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    if-eqz p2, :cond_d2

    const/high16 p2, -0x1000000

    goto :goto_d3

    :cond_d2
    const/4 p2, -0x1

    :goto_d3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    :cond_d6
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public enableUIStatus(Z)V
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz v0, :cond_7

    .line 607
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->enableUIStatus(Z)V

    .line 609
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p0, :cond_e

    .line 610
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->enableUIStatus(Z)V

    :cond_e
    return-void
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

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

    .line 660
    const-string p0, "key_pmaster_feature"

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 9
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

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    .line 671
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 672
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    .line 673
    const-string v2, "key_mu_monomer"

    const-string v3, "key_makeup_feature"

    if-eqz p1, :cond_4a

    const/4 p1, 0x7

    .line 674
    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const-string v5, "key_mu_slimbody"

    const-string v6, "key_mu_stereo"

    if-ne p1, v4, :cond_2c

    .line 675
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mMakeupSupport:Z

    if-eqz p1, :cond_25

    .line 676
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_25
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_2c
    if-eqz v0, :cond_3b

    .line 681
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mMakeupSupport:Z

    if-eqz p1, :cond_35

    .line 682
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_35
    const-string p1, "key_vip_stereo"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 686
    :cond_3b
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBlurAlgoSupportForBackCamera:Z

    if-eqz p1, :cond_43

    .line 687
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 689
    :cond_43
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :goto_46
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 694
    :cond_4a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mMakeupSupport:Z

    if-eqz p1, :cond_54

    .line 696
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_54
    :goto_54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPortraitFlareSupport:Z

    if-eqz p0, :cond_5d

    .line 700
    const-string p0, "key_portrait_flare"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_5d
    const-string p0, "key_mu_face_beauty"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    const-string p0, "key_gender_attribute_value"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 665
    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    const/4 v0, 0x0

    .line 564
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSelfTimerCapturing:Z

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->resetSettingUI()V

    .line 566
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hideEntryRootView()V

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->unregisterSettingData()V

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->unregisterSettingListener()V

    return-void
.end method

.method public hideSettingTitle()V
    .registers 2

    .line 1247
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 1248
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mShouldShowSettingTitle:Z

    .line 1249
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    :cond_e
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
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 215
    :cond_6
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needShowOptionBar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->currentState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->currentState()I

    move-result p0

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v1
.end method

.method public needShowSettingTitle(Z)V
    .registers 3

    .line 1240
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_a

    .line 1241
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mShouldShowSettingTitle:Z

    :cond_a
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_17e

    const/4 v1, 0x1

    if-eq p1, v1, :cond_177

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_164

    const/4 v2, 0x5

    if-eq p1, v2, :cond_155

    const/16 v2, 0x9

    if-eq p1, v2, :cond_177

    const/16 v2, 0x13

    if-eq p1, v2, :cond_14c

    const/16 v2, 0x35

    if-eq p1, v2, :cond_149

    const/16 v2, 0xa5

    if-eq p1, v2, :cond_145

    const/16 v2, 0xab

    if-eq p1, v2, :cond_139

    const/16 v2, 0x149

    if-eq p1, v2, :cond_12d

    const/16 v2, 0x176

    if-eq p1, v2, :cond_12a

    const/16 v2, 0x197

    if-eq p1, v2, :cond_12a

    const/16 v2, 0x24

    if-eq p1, v2, :cond_126

    const/16 v2, 0x25

    if-eq p1, v2, :cond_122

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_ff

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_f5

    const/16 v2, 0xed

    if-eq p1, v2, :cond_ed

    const/16 v2, 0xee

    if-eq p1, v2, :cond_e3

    packed-switch p1, :pswitch_data_192

    packed-switch p1, :pswitch_data_19e

    goto/16 :goto_191

    .line 792
    :pswitch_4f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mShouldHideEntryOnPause:Z

    .line 793
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hide(Z)V

    .line 794
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showEntryRootView()V

    .line 795
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p0, :cond_191

    .line 796
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setEnable(Z)V

    return-void

    .line 832
    :pswitch_5f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p1, :cond_66

    .line 833
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setEnable(Z)V

    .line 835
    :cond_66
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 836
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hide(Z)V

    .line 838
    :cond_6f
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->setEnable(Z)V

    return-void

    .line 809
    :pswitch_73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsModeChanging:Z

    .line 810
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_89

    .line 811
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->resetSettingUI()V

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p1, :cond_89

    .line 813
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->activityPause()V

    .line 814
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->hideDialog()V

    .line 817
    :cond_89
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_191

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mShouldHideEntryOnPause:Z

    if-eqz p1, :cond_191

    .line 818
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    .line 819
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hideEntryRootView()V

    return-void

    .line 823
    :pswitch_9c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p1, :cond_a3

    .line 824
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setEnable(Z)V

    .line 826
    :cond_a3
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->setEnable(Z)V

    .line 827
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_191

    .line 828
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    return-void

    .line 855
    :pswitch_b2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSelfTimerCapturing:Z

    .line 856
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->setEnable(Z)V

    .line 857
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->enableUIStatus(Z)V

    .line 858
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsEntryRootViewRestore:Z

    .line 859
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSuperNightLiteSwitchOn:Z

    if-eqz p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSuperNightLiteOn:Z

    if-eqz p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSelfTimerCancel:Z

    if-eqz p1, :cond_191

    .line 860
    :cond_c8
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsEntryRootViewRestore:Z

    .line 861
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSelfTimerCancel:Z

    .line 862
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showEntryRootView()V

    return-void

    .line 800
    :pswitch_d0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSelfTimerCapturing:Z

    .line 801
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->setEnable(Z)V

    .line 802
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->enableUIStatus(Z)V

    .line 803
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hideEntryRootView()V

    .line 804
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p0, :cond_191

    .line 805
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->hideDialog()V

    return-void

    .line 939
    :cond_e3
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsEntryRootViewRestore:Z

    if-nez p1, :cond_191

    .line 940
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsEntryRootViewRestore:Z

    .line 941
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showEntryRootView()V

    return-void

    .line 926
    :cond_ed
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    if-eqz p1, :cond_191

    .line 927
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hide(Z)V

    return-void

    .line 896
    :cond_f5
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    .line 897
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p0, :cond_191

    .line 898
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setEnable(Z)V

    return-void

    .line 881
    :cond_ff
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p1, :cond_106

    .line 882
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setEnable(Z)V

    .line 884
    :cond_106
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    if-eqz p1, :cond_10d

    .line 885
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hide(Z)V

    .line 887
    :cond_10d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_118

    .line 888
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    .line 890
    :cond_118
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz p1, :cond_11f

    .line 891
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideSeekBarAndContractBar()V

    .line 893
    :cond_11f
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    return-void

    .line 866
    :cond_122
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showEntryRootView()V

    return-void

    .line 789
    :cond_126
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hideEntryRootView()V

    return-void

    .line 946
    :cond_12a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mShouldHideEntryOnPause:Z

    return-void

    .line 850
    :cond_12d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_191

    .line 851
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    return-void

    .line 921
    :cond_139
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p1, :cond_191

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsModeChanging:Z

    if-nez p0, :cond_191

    .line 922
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateHintVisible()V

    return-void

    .line 902
    :cond_145
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hide(Z)V

    return-void

    .line 914
    :cond_149
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsModeChanging:Z

    return-void

    .line 877
    :cond_14c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->hideHint()V

    .line 878
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->resetSettingUI()V

    return-void

    .line 931
    :cond_155
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz p1, :cond_15c

    .line 932
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->notifyPhotoSizeChangeEnd()V

    .line 934
    :cond_15c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz p0, :cond_191

    .line 935
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->notifyPhotoSizeChangeEnd()V

    return-void

    .line 917
    :cond_164
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setModeSwitching(Z)V

    .line 918
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsModeChanging:Z

    return-void

    .line 907
    :cond_16c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->hideHint()V

    .line 908
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setModeSwitching(Z)V

    return-void

    .line 870
    :cond_177
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->enableUIStatus(Z)V

    .line 874
    :pswitch_17a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->setEnable(Z)V

    return-void

    .line 841
    :cond_17e
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->setEnable(Z)V

    .line 842
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->enableUIStatus(Z)V

    .line 843
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_191

    .line 844
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz p0, :cond_191

    .line 845
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideSeekBarAndContractBar()V

    :cond_191
    :goto_191
    return-void

    :pswitch_data_192
    .packed-switch 0xb
        :pswitch_d0
        :pswitch_b2
        :pswitch_9c
        :pswitch_17a
    .end packed-switch

    :pswitch_data_19e
    .packed-switch 0x1c
        :pswitch_73
        :pswitch_5f
        :pswitch_17a
        :pswitch_17a
        :pswitch_4f
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 5

    .line 738
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_2d

    .line 741
    :cond_6
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_18

    return v2

    .line 744
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2d

    .line 747
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2e

    :goto_2d
    return v1

    .line 750
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_46

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->onBackPressed()Z

    move-result v0

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    if-eqz v0, :cond_69

    .line 754
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showOrHide(Z)V

    .line 755
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v2, :cond_57

    .line 756
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    .line 758
    :cond_57
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;->getContrastTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_69

    .line 759
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;->getContrastTag()I

    move-result v2

    invoke-interface {p0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;->closeContrast(ZI)V

    .line 762
    :cond_69
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHandled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 7

    .line 1009
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 1010
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    const/4 v3, 0x7

    if-ne v0, v3, :cond_d

    goto :goto_41

    .line 1013
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_40

    .line 1014
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v3, v0, v4, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateLayout(IIZ)V

    .line 1015
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz v0, :cond_29

    .line 1016
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateLayout(II)V

    .line 1018
    :cond_29
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_40

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_39

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3a

    :cond_39
    move p1, v1

    .line 1022
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_40
    return-void

    .line 1012
    :cond_41
    :goto_41
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onPreviewClick()Z
    .registers 2

    .line 729
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    if-eqz v0, :cond_d

    .line 730
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->onBackPressed()Z

    .line 732
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 1029
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    const/4 p1, 0x1

    .line 1030
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 8

    .line 353
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    const/4 v0, 0x0

    .line 357
    sput-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_92

    goto :goto_6e

    :sswitch_2d
    const-string v1, "key_mu_face_beauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_6e

    :cond_36
    const/4 v5, 0x5

    goto :goto_6e

    :sswitch_38
    const-string v1, "key_makeup_feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_6e

    :cond_41
    const/4 v5, 0x4

    goto :goto_6e

    :sswitch_43
    const-string v1, "key_mu_slimbody"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_6e

    :cond_4c
    move v5, v2

    goto :goto_6e

    :sswitch_4e
    const-string v1, "key_mu_monomer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_6e

    :cond_57
    move v5, v3

    goto :goto_6e

    :sswitch_59
    const-string v1, "key_mu_stereo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_6e

    :cond_62
    move v5, v4

    goto :goto_6e

    :sswitch_64
    const-string v1, "key_vip_stereo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v5, v0

    :goto_6e
    packed-switch v5, :pswitch_data_ac

    goto :goto_77

    :pswitch_72
    move v0, v4

    goto :goto_77

    :pswitch_74
    move v0, v2

    goto :goto_77

    :pswitch_76
    move v0, v3

    .line 377
    :goto_77
    :pswitch_77
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_8d

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->getTitle(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->updatePopSettingTitleTextView()V

    .line 381
    :cond_8d
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->settingUIAnimShowOrHide(I)Z

    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        -0x5216c7c6 -> :sswitch_64
        -0x37803771 -> :sswitch_59
        0x2093e60 -> :sswitch_4e
        0x709a336 -> :sswitch_43
        0x489ebfa0 -> :sswitch_38
        0x7e425a67 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_76
        :pswitch_74
        :pswitch_72
    .end packed-switch
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 1230
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbc

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 1235
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbd

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public overrideRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
    .registers 2

    .line 981
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

    return-void
.end method

.method public overrideSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .registers 2

    .line 976
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public restoreInteractiveView()V
    .registers 1

    .line 573
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->restoreInteractiveView()V

    .line 574
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hideEntryRootView()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 971
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    return-void
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

    .line 713
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 714
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSettingDataList:Ljava/util/List;

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

    .line 719
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1d

    .line 721
    const-string v0, "key_super_night_lite"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 722
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_night_lite_switch"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 723
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer_status"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1d
    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 555
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->setScreenFormType(II)V

    .line 559
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showEntryRootView()V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 626
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->unInit()V

    .line 628
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->removeAnimatorListener()V

    .line 629
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 631
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->releaseResource()V

    .line 632
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    .line 634
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_40

    .line 635
    const-string v2, "key_super_night_lite"

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_super_night_lite_switch"

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_self_timer_status"

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 639
    :cond_40
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_4b

    .line 640
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->hidePopSettingTitle()V

    .line 642
    :cond_4b
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    .line 643
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mSelfTimerCapturing:Z

    .line 646
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updateBottomUILayout(IIZ)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1083
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1084
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    .line 1085
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    .line 1087
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v5, :cond_24

    .line 1088
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateRootLayout()V

    .line 1091
    :cond_24
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1092
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1093
    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-ne v1, v9, :cond_39

    goto :goto_58

    :cond_39
    if-ne v1, v8, :cond_44

    .line 1099
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_root_bottom_padding:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    :goto_41
    sub-int v3, v4, v3

    goto :goto_58

    .line 1102
    :cond_44
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_51

    .line 1103
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_bottom_margin_tb_hover:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_41

    .line 1105
    :cond_51
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_bottom_offset:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_41

    :goto_58
    const/4 v4, 0x0

    .line 1108
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v10, 0x1

    const/16 v12, 0x55

    const/16 v13, 0x35

    const/16 v14, 0x33

    const/16 v15, 0xb4

    const/16 v8, 0x5a

    const/16 v9, 0x53

    const/16 v11, 0x10e

    if-ne v1, v10, :cond_ed

    if-eq v2, v8, :cond_c4

    if-eq v2, v15, :cond_a9

    if-eq v2, v11, :cond_8e

    .line 1141
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1142
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1144
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1146
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_de

    .line 1130
    :cond_8e
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1131
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1133
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1135
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_de

    .line 1121
    :cond_a9
    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1122
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1124
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1126
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_de

    .line 1112
    :cond_c4
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1113
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1115
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1117
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1150
    :goto_de
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/2addr v2, v11

    rem-int/lit16 v2, v2, 0x168

    invoke-virtual {v1, v2, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1151
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1cc

    .line 1152
    :cond_ed
    iget v10, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v14, 0x7

    if-ne v10, v14, :cond_11e

    if-eq v2, v8, :cond_10b

    if-eq v2, v15, :cond_10b

    if-eq v2, v11, :cond_10b

    .line 1165
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1166
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1167
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1168
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_bottom_0_flip_top_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1cc

    .line 1157
    :cond_10b
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v15, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1158
    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1159
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1160
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_bottom_90_flip_top_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1cc

    .line 1171
    :cond_11e
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_155

    if-eqz p3, :cond_155

    .line 1172
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1173
    filled-new-array {v7, v3}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 1174
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1175
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1176
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1181
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1cc

    :cond_155
    if-eqz v1, :cond_1b0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15e

    goto :goto_1b0

    :cond_15e
    const/4 v2, 0x4

    if-ne v1, v2, :cond_186

    .line 1191
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1192
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1193
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1194
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1195
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v8, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1196
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1cc

    :cond_186
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1cc

    const/16 v1, 0x33

    .line 1198
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1199
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1200
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1201
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1202
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v11, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1203
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1cc

    .line 1185
    :cond_1b0
    :goto_1b0
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1186
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_1c0

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    .line 1187
    :cond_1c0
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1188
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1189
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    :cond_1cc
    :goto_1cc
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1207
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v14, 0x7

    if-ne v14, v2, :cond_1e0

    .line 1208
    sget v2, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_mu_big_item_height:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_201

    .line 1210
    :cond_1e0
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-nez v2, :cond_1ef

    .line 1211
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    .line 1212
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_201

    .line 1215
    :cond_1ef
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v2, :cond_1f9

    const/4 v2, -0x2

    goto :goto_1ff

    .line 1216
    :cond_1f9
    sget v2, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_bottom_height:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1ff
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1219
    :goto_201
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1221
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePopSettingTitleTextView()V
    .registers 5

    .line 954
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_3c

    .line 955
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mLowLight:Z

    if-nez v0, :cond_35

    .line 956
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 957
    const-string v1, "4:3"

    const-string v2, "_global_scope"

    const-string v3, "key_picture_ratio"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    const-string v1, "1:1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 959
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->pop_menu_name_background_black:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 961
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->pop_menu_name_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 964
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mPopSettingTitleTextView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->pop_menu_name_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3c
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 6

    .line 1035
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_6b

    .line 1039
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1040
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateLayout(IIZ)V

    .line 1042
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->updateBottomUILayout(IIZ)V

    .line 1044
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_42

    if-ne p1, v0, :cond_2c

    goto :goto_42

    :cond_2c
    const/4 v3, 0x4

    if-eq p1, v3, :cond_32

    const/4 v3, 0x5

    if-ne p1, v3, :cond_4d

    .line 1053
    :cond_32
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_4d

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-nez v3, :cond_4d

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    if-nez v3, :cond_4d

    .line 1054
    invoke-interface {p1, v2, v2, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_4d

    .line 1046
    :cond_42
    :goto_42
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    if-eqz p1, :cond_4d

    .line 1047
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_4d

    .line 1048
    invoke-interface {p1, v1, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1059
    :cond_4d
    :goto_4d
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne p1, v0, :cond_60

    .line 1060
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsSettingUIShow:Z

    if-nez p1, :cond_60

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_60

    .line 1061
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_60

    .line 1062
    invoke-interface {p1, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1066
    :cond_60
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_6b

    .line 1067
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->updatePopSettingTitleLayout()V

    :cond_6b
    :goto_6b
    return-void
.end method
