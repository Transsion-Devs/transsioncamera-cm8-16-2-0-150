.class public Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DELAY_TIME:I = 0x64

.field private static final DURATION:I = 0x96

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final STATE_TO_SHOW_RECYCLE_VIEW:I = 0x1

.field private static final STATE_TO_SHOW_SWITCH_BAR:I = 0x0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F = 0.0f

.field private static final TRANSPARENT_1:F = 1.0f


# instance fields
.field private final mAppearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentUIState:I

.field private mCurrentValue:Ljava/lang/String;

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsFilterShow:Z

.field private mIsPopSettingShow:Z

.field private final mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLastOffset:I

.field private mLastPosition:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mResources:Landroid/content/res/Resources;

.field private final mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mSettingUiAdjustHeight:I

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

.field private mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

.field private mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

.field private mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mStreetPhotoStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mUI5AlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mUI5AlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUI5PathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mUI5TranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# direct methods
.method public static synthetic $r8$lambda$0lUEFL-Jhp4O2qMxpWonGKGKXKQ(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->lambda$new$2(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3bwHyKYvvUvWEffhj_QnpWvca88(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->onUI5TranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8VjFgm4Od2rt_9euMGkGaIXrfPU(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$CCaYjGFcUa1tuSItpW2yrdc0Dq4(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->lambda$updateViewLayoutParams$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9uysVqmAbtmMoZo-wZ9XE6FlSE(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->lambda$new$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XtxYUbg4X_wI7FWdLk3BE7uRLAI(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zq6K6fCwWo3FfC6sRevNHp2d_xk(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->onItemSelected(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dI0HqRjec_lRnW8TsBnhdwMYQGg(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptxOdLFa3d0nNVd7fzbaP1Mb2Mw(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->onUI5AlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoiwzgB1LL7jjJad5RTbpiBIOac(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/content/res/Resources;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreetPhotoStyleSelectRoot(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StreetPhotoStyleSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 11

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 54
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 55
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 56
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastOffset:I

    .line 68
    iput v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastPosition:I

    .line 78
    const-string v4, "2"

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentValue:Ljava/lang/String;

    .line 82
    iput v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentUIState:I

    .line 84
    new-instance v4, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 100
    new-instance v4, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$2;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mAppearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 142
    new-instance v4, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 211
    new-instance v4, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$3;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$3;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 401
    new-instance v4, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 623
    new-instance v4, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 653
    new-instance v4, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$5;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$5;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mResources:Landroid/content/res/Resources;

    .line 116
    sget v4, Lcom/transsion/camera/R$dimen;->street_photo_style_rv_translate_anim_distance:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateDistance:F

    .line 117
    sget v5, Lcom/transsion/camera/R$dimen;->street_photo_style_item_adjust_height:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mSettingUiAdjustHeight:I

    const/4 p1, 0x2

    .line 118
    new-array v5, p1, [F

    fill-array-data v5, :array_da

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->getAnimatorDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 120
    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v1, v6, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5PathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 121
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v5, v6, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 122
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v5, v6, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 124
    new-array v1, p1, [F

    aput v6, v1, v0

    const/4 v0, 0x1

    aput v4, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->getAnimatorDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    new-array p1, p1, [F

    fill-array-data p1, :array_e2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_da
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 298
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 299
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 301
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 302
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3d
    return-void
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 650
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p0, :cond_b

    const/16 p0, 0x96

    return p0

    :cond_b
    const/16 p0, 0x12c

    return p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 440
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVssTranslateDistance()F
    .registers 2

    .line 664
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 667
    :cond_8
    iget p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    return p0
.end method

.method private hideEntryRootView()V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :cond_10
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method private hideSettingUI(Z)V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_66

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_66

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->isAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_66

    .line 310
    :cond_11
    sget-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSettingUI, needAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentUIState:I

    if-eqz p1, :cond_3f

    .line 314
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_3b

    .line 315
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->startUI5CollapseAnimator()V

    goto :goto_57

    .line 317
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->startCollapseAnimator()V

    goto :goto_57

    .line 320
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateDistance:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideEntryRootView()V

    .line 325
    :goto_57
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_66

    const/4 v0, 0x1

    .line 326
    invoke-interface {p1, v0, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xf3

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_66
    :goto_66
    return-void
.end method

.method private initSelectRecyclerViewData()V
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$4;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 237
    invoke-static {}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo;->getStreetPhotoFilterItem()Ljava/util/List;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;-><init>(Ljava/util/List;II)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    new-instance v1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter$OnItemClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 146
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 147
    sget v0, Lcom/transsion/camera/R$layout;->street_photo_style_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    .line 148
    sget p2, Lcom/transsion/camera/R$id;->street_photo_style_select_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->street_photo_style_select_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    .line 150
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->updateViewLayoutParams(Z)V

    return-void
.end method

.method private isAnimatorRunning()Z
    .registers 4

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    goto :goto_1c

    .line 674
    :cond_a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

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

.method private synthetic lambda$new$1(Ljava/lang/Object;)V
    .registers 2

    .line 406
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->resetUIState(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Object;I)V
    .registers 4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_20

    .line 403
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_14

    .line 404
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->resetUIState(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_14
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p2, :cond_20

    .line 406
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 2

    const/4 v0, 0x1

    .line 632
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 624
    sget-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    const-string v0, "key_super_definition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p1, "off"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_50

    .line 628
    :cond_2f
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->isCameraFacingBack()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 629
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_44

    const/4 p1, 0x1

    .line 630
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    return-void

    .line 631
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_50

    .line 632
    new-instance p2, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_50
    :goto_50
    return-void
.end method

.method private synthetic lambda$updateViewLayoutParams$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 193
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onItemSelected(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;)V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_9

    .line 397
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;->StreetPhotoStyleValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 399
    :cond_9
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;->StreetPhotoStyleValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method private onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_2f

    .line 257
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 258
    iget v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 259
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 260
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 261
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_28

    .line 262
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 265
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2f

    .line 266
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private onUI5AlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_11

    .line 276
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    return-void
.end method

.method private onUI5TranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_11

    .line 271
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_11
    return-void
.end method

.method private recoverFilterPanelToDefault()V
    .registers 5

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    if-nez v1, :cond_9

    goto :goto_2f

    .line 432
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 433
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setCurrentPosition(IZ)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setEnable(Z)V

    .line 436
    iput v3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastOffset:I

    .line 437
    iput v3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastPosition:I

    :cond_2f
    :goto_2f
    return-void
.end method

.method private registerKeyToMonitor()V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_b

    .line 615
    const-string v1, "key_super_definition"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_b
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method private resetUIState(Ljava/lang/String;)V
    .registers 4

    .line 411
    sget-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetUIState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    .line 413
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 414
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->recoverFilterPanelToDefault()V

    :cond_16
    return-void
.end method

.method private showEntryRootView()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private showSettingUI()V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 332
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2e

    .line 335
    :cond_b
    sget-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->showEntryRootView()V

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->setEnable(Z)V

    .line 338
    iput v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentUIState:I

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->updateViewLayoutParams(Z)V

    .line 340
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_2b

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->startUI5ExpandAnimator()V

    return-void

    .line 343
    :cond_2b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->startExpandAnimator()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private startCollapseAnimator()V
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private startExpandAnimator()V
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mAppearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 352
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xf2

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_28
    return-void
.end method

.method private startUI5CollapseAnimator()V
    .registers 10

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_6c

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_29

    move v4, v5

    goto :goto_2c

    :cond_29
    iget v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateDistance:F

    neg-float v4, v4

    :goto_2c
    new-array v6, v1, [F

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v8, 0x1

    aput v4, v6, v8

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->getVssTranslateDistance()F

    move-result v4

    new-array v1, v1, [F

    aput v5, v1, v7

    aput v4, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_6c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startUI5ExpandAnimator()V
    .registers 8

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_5c

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->getVssTranslateDistance()F

    move-result v4

    new-array v1, v1, [F

    const/4 v5, 0x0

    aput v4, v1, v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mAppearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5PathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_5b

    .line 369
    invoke-interface {v0, v5, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xf2

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_5b
    return-void

    :array_5c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private toggleFilterPanel()V
    .registers 4

    .line 447
    sget-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "toggleFilterPanel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 449
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5AlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUI5TranslateAnimator:Landroid/animation/ValueAnimator;

    .line 450
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_5e

    .line 453
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentValue:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setCurrentPosition(IZ)V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5b

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentValue:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setCurrentPosition(IZ)V

    .line 458
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->showSettingUI()V

    return-void

    .line 460
    :cond_5b
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private unRegisterKeyToMonitor()V
    .registers 3

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_b

    .line 620
    const-string v1, "key_super_definition"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_b
    return-void
.end method

.method private updateArcIndicatorRingScreenLight(Z)V
    .registers 2

    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_16

    :cond_3
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastOffset:I

    .line 250
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastPosition:I

    :cond_16
    :goto_16
    return-void
.end method

.method private updateViewLayoutParams(Z)V
    .registers 8

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    goto/16 :goto_cd

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 170
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v3, -0x1

    .line 172
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 173
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->street_photo_style_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x51

    .line 174
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v3, :cond_49

    .line 176
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    .line 177
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_52

    .line 179
    :cond_49
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v3, v4

    .line 181
    :goto_52
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 183
    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIsFilterShow:Z

    if-eqz v4, :cond_63

    .line 184
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 185
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 187
    :cond_63
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 188
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9e

    if-eqz p1, :cond_9e

    .line 189
    filled-new-array {v1, v3}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    .line 190
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a3

    .line 198
    :cond_9e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :goto_a3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    if-eqz p1, :cond_af

    .line 202
    invoke-virtual {p1, v2, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->onOrientationChanged(IZ)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 205
    :cond_af
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 207
    iget v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastPosition:I

    if-ltz v0, :cond_cd

    .line 208
    iget p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mLastOffset:I

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_cd
    :goto_cd
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 132
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentValue:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->initSelectRecyclerViewData()V

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->addAnimatorListener()V

    const/4 p1, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    .line 138
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->registerKeyToMonitor()V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

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

    .line 521
    const-string p0, "key_street_photo_style"

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

    .line 525
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    const-string v0, "key_street_photo_style"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 531
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCameraFacingBack()Z
    .registers 1

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 639
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 638
    :cond_9
    const-string p0, "0"

    .line 641
    :goto_b
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
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

    .line 444
    iget p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentUIState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_76

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6f

    const/16 v3, 0x13

    if-eq p1, v3, :cond_5d

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_56

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_76

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4d

    const/16 v1, 0x4d

    if-eq p1, v1, :cond_6f

    const/16 v1, 0x169

    if-eq p1, v1, :cond_49

    const/16 v1, 0xf

    if-eq p1, v1, :cond_6f

    const/16 v1, 0x10

    if-eq p1, v1, :cond_56

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_45

    const/16 v1, 0x80

    if-eq p1, v1, :cond_41

    const/16 v1, 0xcf

    if-eq p1, v1, :cond_3b

    const/16 v1, 0xd0

    if-eq p1, v1, :cond_38

    return-void

    .line 598
    :cond_38
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIsPopSettingShow:Z

    return-void

    .line 594
    :cond_3b
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIsPopSettingShow:Z

    .line 595
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    return-void

    .line 607
    :cond_41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->showEntryRootView()V

    return-void

    .line 604
    :cond_45
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideEntryRootView()V

    return-void

    .line 601
    :cond_49
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    return-void

    .line 568
    :cond_4d
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIsFilterShow:Z

    .line 569
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->setEnable(Z)V

    .line 570
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->showEntryRootView()V

    return-void

    .line 574
    :cond_56
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->setEnable(Z)V

    .line 575
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->showEntryRootView()V

    return-void

    .line 584
    :cond_5d
    const-string p1, "2"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mCurrentValue:Ljava/lang/String;

    .line 585
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setCurrentPosition(IZ)V

    return-void

    .line 580
    :cond_6f
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->setEnable(Z)V

    .line 581
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    return-void

    .line 591
    :cond_76
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 558
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 559
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    return v0

    :cond_1b
    return v1
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 645
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onConfigurationChanged()V

    const/4 v0, 0x0

    .line 646
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

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

    .line 505
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x1

    .line 506
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->updateViewLayoutParams(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 159
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    const/4 p1, 0x1

    .line 160
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->updateViewLayoutParams(Z)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 420
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mIsPopSettingShow:Z

    if-eqz v0, :cond_5

    goto :goto_10

    .line 424
    :cond_5
    const-string v0, "key_street_photo_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 425
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->toggleFilterPanel()V

    :cond_10
    :goto_10
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

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 537
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 538
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 539
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_street_photo_style"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 540
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 541
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 543
    :cond_26
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 544
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 545
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_7

    :cond_38
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleItemAdapter:Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;

    if-eqz p0, :cond_7

    .line 483
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItemAdapter;->setEnable(Z)V

    :cond_7
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

    .line 551
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_7

    .line 111
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 154
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 155
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 488
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 489
    sget-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->setEnable(Z)V

    .line 491
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideEntryRootView()V

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->hideSettingUI(Z)V

    .line 493
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mEntryView:Landroid/view/View;

    .line 495
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->unRegisterKeyToMonitor()V

    .line 496
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_25

    .line 497
    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 499
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUI;->mStreetPhotoStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_2c

    .line 500
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_2c
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
