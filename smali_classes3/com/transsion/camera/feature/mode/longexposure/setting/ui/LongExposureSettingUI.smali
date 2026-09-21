.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final ANIM_TIME:I = 0xc8

.field private static final STATE_TO_SHOW_RECYCLE_VIEW:I = 0x1

.field private static final STATE_TO_SHOW_SWITCH_BAR:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected mAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mAppearAlphaPath:Landroid/view/animation/PathInterpolator;

.field private mAppearPV:Landroid/animation/PropertyValuesHolder;

.field private mAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

.field private mAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

.field private mAppearTranslateYNdPV:Landroid/animation/PropertyValuesHolder;

.field private mAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

.field protected mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

.field protected final mCaptureTimeChangeListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

.field protected mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

.field protected mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field protected mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field protected mCurrentScene:Ljava/lang/String;

.field private mCurrentUIState:I

.field private mDisAppearPV:Landroid/animation/PropertyValuesHolder;

.field private mDisAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

.field private mDisAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

.field private mDisAppearTranslateYNdPV:Landroid/animation/PropertyValuesHolder;

.field private mDisAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

.field private final mDisappearAlphaPath:Landroid/view/animation/PathInterpolator;

.field protected mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

.field protected mEntryRootView:Landroid/view/ViewGroup;

.field protected mEntryView:Landroid/view/View;

.field protected mHoverAnimator:Landroid/animation/ValueAnimator;

.field protected mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mLongExposureRootLayout:Landroid/view/ViewGroup;

.field protected mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mLongExposureTimeRootLayout:Landroid/widget/RelativeLayout;

.field private final mMainHandler:Landroid/os/Handler;

.field protected final mMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

.field protected final mResources:Landroid/content/res/Resources;

.field private mSceneListShow:Z

.field protected mSceneListView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollerRootLayoutTranslateValue:I

.field private final mScrollerViewStateCallBack:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected final statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$1jzm2vDof4HSHPgnA8pQ9xiTy6w(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$createEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4YVvGnKhfOs528TSxTrl9A2ATPc(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$updateSettingUILayout$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JSq0M8Uo_n3CCnlvMiPYxybX32I(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Landroid/animation/PropertyValuesHolder;Landroid/animation/PropertyValuesHolder;Ljava/util/List;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$runAnim$5(Landroid/animation/PropertyValuesHolder;Landroid/animation/PropertyValuesHolder;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KXO_jnHJnwqS6BO-X7Vw-v4YA0Q(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$new$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oac5abSxH9Vl0xsTk6m1nkzgcgk(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$getTimeListForScene$8(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T56Qi02gv8uEeLraOg-mE2UBjuc(ZLandroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 670
    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p0, :cond_d

    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    const/4 p0, 0x4

    .line 671
    :goto_e
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WcGzPq7-va7gPnFUxQOQ1Hwvis0(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$getTimeListForScene$7(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YVTl-uTXQ9fzzZEjk2fmB0wQc2k(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$notifyCameraOperateAction$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$sO9jvfsJzK-Cc31-VZG-8MyF1xA(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->lambda$updateSettingUILayout$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$z6fVxwoaJ0X4c6bQEeEFge8kvFk(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 604
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLongExposureSceneSetting(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monLongExposureSeekbarStateChange(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->onLongExposureSeekbarStateChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScrollerViewState(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateScrollerViewState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mMainHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearAlphaPath:Landroid/view/animation/PathInterpolator;

    .line 96
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisappearAlphaPath:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentUIState:I

    .line 792
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeChangeListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    .line 806
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerViewStateCallBack:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;

    .line 813
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    .line 829
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    .line 138
    sget v0, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_scroller_layout_translate_value:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    return-void
.end method

.method private convertedTimeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->isPicTraceMode(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 775
    const-string p0, "s"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 777
    :cond_1e
    const-string p0, "min"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const p1, 0xea60

    mul-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 678
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0xc8

    return p0
.end method

.method private hideIcon()V
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 731
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private isPicTraceMode(Ljava/lang/String;)Z
    .registers 2

    .line 787
    const-string/jumbo p0, "traffic"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string p0, "flowingwater"

    .line 788
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string p0, "lightpainting"

    .line 789
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createEntryView$0(Landroid/view/View;)V
    .registers 4

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 168
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->switchBulbStatus(Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateIcon(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getTimeListForScene$7(Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 756
    new-instance v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->convertedTimeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$getTimeListForScene$8(Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 759
    new-instance v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->convertedTimeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$9(Ljava/lang/String;)V
    .registers 6

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    if-nez v0, :cond_c

    .line 794
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDurationHelper == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 797
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bulbOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->switchBulbStatus(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateIcon(Ljava/lang/String;)V

    .line 803
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->updateDuration(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateAction$3()V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x114

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_long_exposure_ui_off"

    .line 549
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$runAnim$5(Landroid/animation/PropertyValuesHolder;Landroid/animation/PropertyValuesHolder;Ljava/util/List;Landroid/view/View;)V
    .registers 6

    .line 638
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_13

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez p0, :cond_13

    .line 639
    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_1b

    .line 641
    :cond_13
    filled-new-array {p1, p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 643
    :goto_1b
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 496
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2()V
    .registers 4

    .line 509
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/16 v2, -0x5a

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 510
    :goto_a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v1, :cond_21

    .line 511
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1b

    goto :goto_22

    :cond_1b
    const/16 v2, 0x10e

    if-ne v0, v2, :cond_21

    move v2, v1

    goto :goto_22

    :cond_21
    move v2, v0

    .line 518
    :goto_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeValueForScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    return-void
.end method

.method private notifyScenePanelState(Z)V
    .registers 5

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v1, :cond_9

    goto :goto_35

    .line 584
    :cond_9
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListShow:Z

    const-string v2, "key_conflict_ui_state"

    if-eqz v1, :cond_21

    const/16 p1, 0x113

    .line 585
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_long_exposure_ui_on"

    .line 587
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_21
    if-eqz p1, :cond_34

    const/16 p1, 0x114

    .line 590
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 591
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_long_exposure_ui_off"

    .line 592
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_34
    return-void

    .line 581
    :cond_35
    :goto_35
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyScenePanelState AppUI/StatusMonitor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private onLongExposureSeekbarStateChange(Z)V
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_13

    .line 845
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/16 p1, 0x164

    goto :goto_17

    :cond_13
    if-nez p1, :cond_1c

    const/16 p1, 0x165

    .line 852
    :goto_17
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1c
    return-void
.end method

.method private varargs runAnim(ZZ[Landroid/view/View;)V
    .registers 10

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 599
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 602
    :cond_c
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 606
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_aa

    if-eqz p1, :cond_24

    .line 609
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_26

    :cond_24
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearPV:Landroid/animation/PropertyValuesHolder;

    :goto_26
    if-eqz p1, :cond_2b

    .line 610
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearAlphaPath:Landroid/view/animation/PathInterpolator;

    goto :goto_2d

    :cond_2b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisappearAlphaPath:Landroid/view/animation/PathInterpolator;

    .line 611
    :goto_2d
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    .line 612
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_58

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_50

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_48

    if-eqz p1, :cond_45

    .line 624
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_45
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_48
    if-eqz p1, :cond_4d

    .line 620
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_4d
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_50
    if-eqz p1, :cond_55

    .line 617
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_55
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_58
    if-eqz p1, :cond_5d

    .line 614
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateYNdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_5d
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateYNdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_60
    const/4 v3, 0x5

    if-ne v2, v3, :cond_6b

    if-eqz p1, :cond_68

    .line 628
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_68
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_6b
    const/4 v3, 0x4

    if-ne v2, v3, :cond_76

    if-eqz p1, :cond_73

    .line 630
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_73
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_76
    if-eqz p1, :cond_7b

    .line 632
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

    goto :goto_7d

    :cond_7b
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

    .line 634
    :goto_7d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 636
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p2, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Landroid/animation/PropertyValuesHolder;Landroid/animation/PropertyValuesHolder;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 645
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getAnimatorDuration()I

    move-result p2

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 646
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 647
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 648
    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;

    invoke-direct {p2, p0, p1, p3}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Z[Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 667
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 669
    :cond_aa
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 673
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->onLongExposureSeekbarStateChange(Z)V

    return-void
.end method

.method private showIcon()V
    .registers 2

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private updateCurrentScene()V
    .registers 5

    .line 682
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    .line 683
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    if-eqz v1, :cond_3b

    .line 684
    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->setSelect(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->getSelectPosition()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateHelpGuideIndex(I)V

    .line 687
    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentScene CurrentScene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " currentHelpGuideIndex: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private updateScrollerViewState(Ljava/lang/String;)V
    .registers 3

    .line 692
    const-string v0, "star"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 693
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->hideScrollerView()V

    return-void

    .line 695
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->showScrollerView()V

    .line 696
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateCaptureTimeData(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mContext:Landroid/content/Context;

    .line 152
    sget p3, Lcom/transsion/camera/feature/longexposure/R$layout;->long_exposure_main_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    .line 154
    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_rotate_root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_time_root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureTimeRootLayout:Landroid/widget/RelativeLayout;

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->exposure_time_scroller_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->capture_time_root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_scene_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_time_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 162
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x3f4ccccd    # 0.8f

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_restore_settings_notify_ui"

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->initCaptureScene()V

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->initScrollerView()V

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->initAnim()V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getIconTypeForState(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 783
    sget p0, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_capture_bulb_on:I

    return p0

    :cond_5
    sget p0, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_capture_bulb_off:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 294
    const-string p0, "key_long_exposure_scene"

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

    .line 311
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    const-string v0, "key_long_exposure_option"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v0, "key_long_exposure_scene"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v0, "key_iso"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const-string v0, "key_exposure_time"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getTimeListForScene(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;"
        }
    .end annotation

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_60

    goto :goto_3d

    :sswitch_11
    const-string v1, "lightpainting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_3d

    :cond_1a
    const/4 v2, 0x3

    goto :goto_3d

    :sswitch_1c
    const-string v1, "flowingwater"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_3d

    :cond_25
    const/4 v2, 0x2

    goto :goto_3d

    :sswitch_27
    const-string/jumbo v1, "traffic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_3d

    :cond_31
    const/4 v2, 0x1

    goto :goto_3d

    :sswitch_33
    const-string v1, "stellartrack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    packed-switch v2, :pswitch_data_72

    return-object v0

    .line 756
    :pswitch_41
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->LONG_EXPOSURE_PICTRACE_DATA:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    .line 759
    :pswitch_50
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->LONG_EXPOSURE_STELLAR_DATA:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    nop

    :sswitch_data_60
    .sparse-switch
        -0x7e5d776a -> :sswitch_33
        -0x3f9dde03 -> :sswitch_27
        -0x3a4e425d -> :sswitch_1c
        0x533119da -> :sswitch_11
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_50
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method protected getTimeValueForScene(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 766
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 769
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected hideSceneView(ZZ)V
    .registers 6

    const/4 v0, 0x0

    .line 570
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListShow:Z

    .line 571
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentUIState:I

    .line 572
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, v0

    invoke-direct {p0, v0, p2, v2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->runAnim(ZZ[Landroid/view/View;)V

    .line 573
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_18

    .line 574
    const-string v0, "off"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 576
    :cond_18
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->notifyScenePanelState(Z)V

    return-void
.end method

.method protected hideScrollerView()V
    .registers 3

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 719
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->onLongExposureSeekbarStateChange(Z)V

    :cond_12
    return-void
.end method

.method protected initAnim()V
    .registers 9

    .line 249
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 250
    new-array v1, v0, [F

    fill-array-data v1, :array_a6

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearPV:Landroid/animation/PropertyValuesHolder;

    .line 251
    new-array v1, v0, [F

    fill-array-data v1, :array_ae

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearPV:Landroid/animation/PropertyValuesHolder;

    .line 252
    iget v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    neg-int v1, v1

    int-to-float v1, v1

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput v4, v2, v1

    const-string/jumbo v5, "translationY"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

    .line 253
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v6, v0, [F

    aput v4, v6, v3

    aput v2, v6, v1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateYPdPV:Landroid/animation/PropertyValuesHolder;

    .line 254
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v6, v0, [F

    aput v2, v6, v3

    aput v4, v6, v1

    const-string/jumbo v2, "translationX"

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

    .line 255
    iget v6, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    neg-int v6, v6

    int-to-float v6, v6

    new-array v7, v0, [F

    aput v4, v7, v3

    aput v6, v7, v1

    invoke-static {v2, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateXPdPV:Landroid/animation/PropertyValuesHolder;

    .line 257
    iget v6, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    int-to-float v6, v6

    new-array v7, v0, [F

    aput v6, v7, v3

    aput v4, v7, v1

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateYNdPV:Landroid/animation/PropertyValuesHolder;

    .line 258
    iget v6, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    int-to-float v6, v6

    new-array v7, v0, [F

    aput v4, v7, v3

    aput v6, v7, v1

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateYNdPV:Landroid/animation/PropertyValuesHolder;

    .line 259
    iget v5, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    int-to-float v5, v5

    new-array v6, v0, [F

    aput v5, v6, v3

    aput v4, v6, v1

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

    .line 260
    iget v5, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerRootLayoutTranslateValue:I

    int-to-float v5, v5

    new-array v0, v0, [F

    aput v4, v0, v3

    aput v5, v0, v1

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDisAppearTranslateXNdPV:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_a6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ae
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected initCaptureScene()V
    .registers 4

    .line 202
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    .line 203
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 206
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/SceneRepo;->captureScenes()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;-><init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mScrollerViewStateCallBack:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->setScrollerViewCallBack(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 228
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateCurrentScene()V

    return-void
.end method

.method protected initScrollerView()V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-nez v0, :cond_5

    goto :goto_47

    :cond_5
    const/4 v1, 0x1

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeChangeListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    const-string v1, "star"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeListForScene(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeValueForScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateScope(Ljava/util/List;Ljava/lang/String;I)V

    :cond_47
    :goto_47
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

    .line 341
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentUIState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 528
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_48

    const/4 v2, 0x2

    if-eq p1, v2, :cond_48

    const/16 v2, 0x13

    if-eq p1, v2, :cond_48

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_48

    const/16 v2, 0x4d

    if-eq p1, v2, :cond_48

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_48

    const/16 v2, 0xb

    if-eq p1, v2, :cond_3a

    const/16 v2, 0xc

    if-eq p1, v2, :cond_2b

    const/16 v2, 0x111

    if-eq p1, v2, :cond_3a

    const/16 v0, 0x112

    if-eq p1, v0, :cond_2b

    goto :goto_39

    .line 545
    :cond_2b
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListShow:Z

    if-nez p1, :cond_39

    .line 546
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_39
    :goto_39
    return-void

    .line 540
    :cond_3a
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_44

    const/4 v2, 0x4

    if-ne p1, v2, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :cond_44
    :goto_44
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->hideSceneView(ZZ)V

    return-void

    .line 536
    :cond_48
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->hideSceneView(ZZ)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 360
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListShow:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 361
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->hideSceneView(ZZ)V

    return v0

    .line 364
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 369
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x0

    .line 370
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 375
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    .line 377
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->notifyScenePanelState(Z)V

    :cond_11
    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 5

    .line 346
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    const-string v0, "key_long_exposure_option"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_39

    .line 349
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 350
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x1

    .line 351
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->showSceneView(Z)V

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 304
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setDeviceSetting"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateCurrentScene()V

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

    .line 321
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setDeviceSettingData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-eqz p1, :cond_3a

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 325
    const-string v1, "key_long_exposure_scene"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 326
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_10

    .line 327
    :cond_2b
    const-string v1, "key_long_exposure_option"

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 328
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_10

    :cond_3a
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
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    .line 182
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    return-void
.end method

.method protected showSceneView(Z)V
    .registers 6

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListShow:Z

    .line 561
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentUIState:I

    .line 562
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateCurrentScene()V

    .line 563
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->notifyScenePanelState(Z)V

    .line 564
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateIcon(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateScrollerViewState(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v2, v0, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, p1, v2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->runAnim(ZZ[Landroid/view/View;)V

    return-void
.end method

.method protected showScrollerView()V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 712
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->onLongExposureSeekbarStateChange(Z)V

    :cond_12
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 265
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->onLongExposureSeekbarStateChange(Z)V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentMode:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected updateCaptureTimeData(Ljava/lang/String;)V
    .registers 6

    .line 701
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeListForScene(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 702
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeValueForScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 704
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateScope(Ljava/util/List;Ljava/lang/String;I)V

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    .line 706
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCaptureTimeData scene = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timeValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentMode:Ljava/lang/String;

    .line 189
    const-string v0, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2d

    .line 191
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 192
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->showSceneView(Z)V

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method protected updateIcon(Ljava/lang/String;)V
    .registers 3

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_5

    return-void

    .line 739
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->isPicTraceMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 740
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getIconTypeForState(Z)I

    move-result p1

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, p1, :cond_24

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 744
    :cond_24
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->showIcon()V

    return-void

    .line 746
    :cond_28
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->hideIcon()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 383
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 385
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_2b9

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_2b9

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureTimeRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2b9

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2b9

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1d

    goto/16 :goto_2b9

    .line 390
    :cond_1d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 391
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 392
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 394
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureTimeRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 396
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v7, 0x0

    .line 399
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 400
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 401
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 402
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v8, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 403
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 405
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_time_root_layout_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 406
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->capture_time_root_layout_margin_start:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 407
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_start:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 408
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 409
    iget v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v9, 0x35

    const/16 v10, 0x5a

    const/16 v11, 0x33

    const/16 v12, 0x10e

    const/16 v13, 0xc

    const/16 v14, 0x9

    const/4 v15, 0x1

    if-ne v8, v15, :cond_153

    .line 410
    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 411
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 412
    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 413
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 414
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/longexposure/R$dimen;->capture_time_root_layout_left_margin_expand:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 415
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_top_margin_expand:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 416
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_right_margin_expand:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 417
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v1, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 418
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_height_expand:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_time_root_layout_height_expand:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 420
    iget v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v8, v10, :cond_12a

    const/16 v10, 0xb4

    if-eq v8, v10, :cond_113

    if-eq v8, v12, :cond_fc

    .line 439
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_top_margin_expand_0:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 440
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_left_margin_expand_0:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 441
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_142

    .line 432
    :cond_fc
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_top_margin_expand_270:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 433
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_left_margin_expand_270:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 434
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_142

    .line 427
    :cond_113
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_top_margin_expand_180:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 428
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_right_margin_expand_180:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 429
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_142

    .line 422
    :cond_12a
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_left_margin_expand_90:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 423
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_bottom_margin_expand_90:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v8, 0x53

    .line 424
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 444
    :goto_142
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v8, v12, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 445
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v9, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    add-int/2addr v9, v12

    rem-int/lit16 v9, v9, 0x168

    invoke-virtual {v8, v9, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_25b

    :cond_153
    const/4 v12, 0x3

    if-ne v8, v12, :cond_169

    .line 447
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v7

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_margin_bottom_hover:I

    .line 448
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_25b

    :cond_169
    const/4 v12, 0x4

    if-ne v8, v12, :cond_1bb

    .line 451
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v4, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 452
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/feature/longexposure/R$dimen;->capture_time_root_layout_margin_end:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 453
    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 454
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 455
    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 456
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_start_lr_hover:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 457
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_long_exposure_icon_bottom_margin:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 458
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_long_exposure_root_layout_top_margin:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 459
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_long_exposure_root_layout_right_margin:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 460
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8, v10, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_25b

    :cond_1bb
    const/4 v9, 0x5

    if-ne v8, v9, :cond_20e

    .line 463
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v4, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 464
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->capture_time_root_layout_margin_end:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 465
    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 466
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 467
    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 468
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_start_lr_hover:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 469
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_long_exposure_icon_bottom_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 470
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_long_exposure_root_layout_top_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 471
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_long_exposure_root_layout_left_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 472
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 473
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v9, 0x10e

    invoke-virtual {v8, v9, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_25b

    .line 475
    :cond_20e
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v4, v15, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 476
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/longexposure/R$dimen;->capture_time_root_layout_margin_end:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 477
    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 478
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 479
    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 480
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v7, 0x51

    .line 481
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 482
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v7

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_margin_bottom:I

    .line 483
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 486
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v8

    if-eqz v8, :cond_25b

    iget v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v8, :cond_25b

    .line 487
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v9, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v8, v9, v15}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 491
    :cond_25b
    :goto_25b
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_28b

    if-eqz p1, :cond_28b

    .line 492
    filled-new-array {v6, v7}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    .line 493
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 495
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2a4

    .line 501
    :cond_28b
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureTimeRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    :goto_2a4
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 521
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    if-eqz v1, :cond_2b9

    .line 522
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    iget v0, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->updateScreenFormType(II)V

    :cond_2b9
    :goto_2b9
    return-void
.end method
