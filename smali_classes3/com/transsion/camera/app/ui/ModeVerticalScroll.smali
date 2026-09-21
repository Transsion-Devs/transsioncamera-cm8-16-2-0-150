.class public Lcom/transsion/camera/app/ui/ModeVerticalScroll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentModePickerHeight:I

.field private mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

.field private mDisableVerticalScroll:Z

.field private mHasSyncModePickerHeight:Z

.field private final mHintMargin:I

.field private final mMaxShakeHeight:F

.field private mModeMaskView:Landroid/view/View;

.field private mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mModePanelIndicatorView:Landroid/view/View;

.field private mModePanelLayout:Landroid/view/View;

.field private mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mModePickerLayout:Landroid/view/ViewGroup;

.field private mPanelHintView:Landroid/view/View;

.field private mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

.field private final mPullInterpolator:Landroid/view/animation/Interpolator;

.field private mPushingDistance:F

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

.field private final mShakeHeight:I

.field private mStartY:F

.field private final mSupportedModeNum:I

.field private final mTriggerHintHeight:I

.field private final mTriggerShrinkPushDistance:F

.field private final mTriggerSpreadPullDistance:I

.field private final mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;


# direct methods
.method public static synthetic $r8$lambda$-XijXk5EBTt1l2shUjOOsSV-T5s(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmModeMaskView(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePanelLayout(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanelHintView(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHasSyncModePickerHeight(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monModePanelDistanceChanged(Lcom/transsion/camera/app/ui/ModeVerticalScroll;FZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeVerticalScroll"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/mode/ModePickerConfig;)V
    .registers 8

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPullInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    new-instance p4, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p4, v2, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p4, 0x0

    .line 59
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDisableVerticalScroll:Z

    .line 62
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    .line 421
    new-instance p4, Lcom/transsion/camera/app/ui/ModeVerticalScroll$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 423
    new-instance p4, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;

    invoke-direct {p4, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 71
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0xf

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 74
    sget p4, Lcom/transsion/camera/R$dimen;->mode_panel_layout_max_move_distance:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    .line 75
    sget p4, Lcom/transsion/camera/R$dimen;->mode_picker_max_shake_height:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    .line 76
    sget p4, Lcom/transsion/camera/R$dimen;->mode_panel_layout_shake_height:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mShakeHeight:I

    .line 77
    sget p4, Lcom/transsion/camera/R$dimen;->vertical_scroll_trigger_hint_height:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerHintHeight:I

    .line 78
    sget p4, Lcom/transsion/camera/R$dimen;->mode_panel_hint_margin:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHintMargin:I

    .line 80
    sget p4, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p4

    .line 81
    sget v0, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 82
    array-length p4, p4

    array-length p1, p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mSupportedModeNum:I

    .line 83
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    .line 84
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;
    .registers 5

    .line 201
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 202
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)Landroid/animation/AnimatorSet;
    .registers 12

    .line 214
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    .line 213
    const-string/jumbo v5, "translationY"

    const/16 v6, 0x12c

    invoke-direct {p0, p1, v5, v6, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 215
    new-array v7, v1, [F

    fill-array-data v7, :array_5a

    const-string v8, "alpha"

    invoke-direct {p0, p1, v8, v6, v7}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v6

    .line 218
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v7

    new-array v1, v1, [F

    aput v4, v1, v3

    aput v7, v1, v0

    const/16 v0, 0x96

    .line 217
    invoke-direct {p0, p1, v5, v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 219
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_49

    .line 221
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_54

    .line 223
    :cond_49
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 225
    :goto_54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_5a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private varargs createValueAnimator(I[I)Landroid/animation/ValueAnimator;
    .registers 3

    .line 207
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p1

    .line 208
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private currentModePickerHeight()I
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return p0
.end method

.method private getInputRatio(F)F
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->validDistance(F)F

    move-result p1

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private getOriginPanelTranslationY()F
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->mode_panel_indicator_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    .line 189
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 192
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getSpreadStateTranslationY()F
    .registers 1

    .line 197
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mShakeHeight:I

    int-to-float p0, p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 421
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateModePickerLayoutHeight(I)V

    return-void
.end method

.method private onModePanelDistanceChanged(FZ)V
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    .line 480
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz p0, :cond_12

    .line 481
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->onModePanelDistanceChanged(FZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method private originModePickerHeight()I
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    if-nez v0, :cond_d

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mCurrentModePickerHeight:I

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    .line 147
    :cond_d
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mCurrentModePickerHeight:I

    return p0
.end method

.method private pullDistanceToHeight(F)I
    .registers 3

    .line 112
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getInputRatio(F)F

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPullInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 114
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private pushDistanceToTranslationY(I)I
    .registers 2

    .line 413
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private reachShrinking()Z
    .registers 2

    .line 409
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private startVibrator()V
    .registers 4

    .line 464
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 465
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string v0, "Cam_mode_sw.he"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void

    .line 468
    :cond_14
    sget-object v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startVibrator, use os vibrator"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 470
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_32

    .line 472
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_32
    return-void
.end method

.method private updateModePickerLayoutHeight(I)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWideCameraUI(F)V
    .registers 6

    .line 132
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerHintHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_1a

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz v1, :cond_19

    int-to-float v1, v0

    sub-float/2addr p1, v1

    .line 134
    iget v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    .line 135
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    :cond_19
    return-void

    .line 138
    :cond_1a
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    return-void
.end method

.method private validDistance(F)F
    .registers 2

    .line 122
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private validPanelTranslationY(F)F
    .registers 2

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public down(FF)V
    .registers 3

    .line 162
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mStartY:F

    return-void
.end method

.method public pulling(FF)Z
    .registers 5

    .line 168
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mSupportedModeNum:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDisableVerticalScroll:Z

    if-eqz v0, :cond_a

    goto :goto_20

    .line 171
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->pullDistanceToHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateModePickerLayoutHeight(I)V

    .line 172
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraUI(F)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->scroll(FF)Z

    move-result p0

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return p0
.end method

.method public pushing(FF)Z
    .registers 5

    .line 396
    iget p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mStartY:F

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    neg-float p1, p2

    .line 399
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result p1

    iget p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    float-to-int p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->pushDistanceToTranslationY(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->validPanelTranslationY(F)F

    move-result p2

    add-float/2addr p1, p2

    .line 401
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 402
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3e

    .line 403
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 405
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method

.method public setDisableVerticalScroll(Z)V
    .registers 2

    .line 502
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDisableVerticalScroll:Z

    return-void
.end method

.method setModePanelLayout(Landroid/view/ViewGroup;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    return-void
.end method

.method public setModePanelMask(Landroid/view/View;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    return-void
.end method

.method setModePickerLayout(Landroid/view/ViewGroup;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mCurrentModePickerHeight:I

    return-void
.end method

.method public setPanelHintView(Landroid/view/View;)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_9
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    return-void
.end method

.method public setPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    return-void
.end method

.method public startPulling()V
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->startScroll()V

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 13

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 313
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result v1

    .line 315
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    const-string/jumbo v7, "translationY"

    const/16 v8, 0x12c

    invoke-direct {p0, v2, v7, v8, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 317
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_ca

    const-string v10, "alpha"

    invoke-direct {p0, v4, v10, v8, v9}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v4

    .line 319
    iget-object v9, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 323
    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 325
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v9, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelShrink()V

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_bc

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9d

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    add-float/2addr v1, v2

    new-array v2, v3, [F

    aput v0, v2, v5

    aput v1, v2, v6

    invoke-direct {p0, p1, v7, v8, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    new-array v1, v3, [F

    fill-array-data v1, :array_d2

    invoke-direct {p0, v0, v10, v8, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 338
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 339
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    new-instance p1, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a0

    .line 352
    :cond_9d
    invoke-direct {p0, v2, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 354
    :goto_a0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    new-array v0, v3, [F

    fill-array-data v0, :array_da

    invoke-direct {p0, p1, v10, v8, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_bf

    .line 370
    :cond_bc
    invoke-direct {p0, v2, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 372
    :goto_bf
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string/jumbo p1, "total"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    return-void

    :array_ca
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_d2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_da
    .array-data 4
        0x3f59999a    # 0.85f
        0x0
    .end array-data
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 10

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 378
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_57

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    .line 379
    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    div-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 380
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    .line 381
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v3, v5, v7

    .line 380
    const-string/jumbo v3, "translationY"

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 382
    new-instance v5, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v5, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 383
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_56

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    .line 386
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v2

    new-array v4, v4, [F

    aput v0, v4, v6

    aput v2, v4, v7

    .line 385
    invoke-direct {p0, p1, v3, v1, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_56
    return-void

    .line 390
    :cond_57
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/16 v2, 0x12c

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createValueAnimator(I[I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 236
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 239
    new-instance v3, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    new-instance v4, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-direct {v4, p1, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V

    invoke-direct {v3, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 241
    sget-object p1, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startSpreadingAnimation, startVibrator"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->startVibrator()V

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadStart()V

    .line 245
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 246
    const-string v3, "key_camera_guide_usage"

    if-eqz p2, :cond_a2

    .line 247
    const-string p2, "0"

    .line 248
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {p1, v3, p2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, v0, :cond_65

    return-void

    .line 252
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    if-nez p1, :cond_73

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->mode_panel_indicator_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    .line 255
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_b6

    .line 256
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, p2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 258
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHintMargin:I

    add-int/2addr p2, v3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p2, 0x50

    .line 259
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 260
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_b6

    .line 267
    :cond_a2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p2, :cond_ab

    const/16 v4, 0x8

    .line 268
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_ab
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {p1, v3, p2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    :cond_b6
    :goto_b6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    if-eqz p1, :cond_d2

    .line 275
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    new-array p2, v0, [F

    fill-array-data p2, :array_dc

    const-string v0, "alpha"

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 281
    :cond_d2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "slide_preview"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterMoreModeOperation(Ljava/lang/String;)V

    return-void

    :array_dc
    .array-data 4
        0x0
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    div-float/2addr v0, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_22

    .line 290
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadBack()V

    return-void

    .line 294
    :cond_22
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createValueAnimator(I[I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 295
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 296
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 299
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x1

    .line 300
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 301
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopPulling()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public stopPushing()Z
    .registers 1

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method
