.class public Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mOrientation:I

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenFormType:I

.field private mTimerView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$CAdiuHiXkm81gf1OMrvRgzIM4E4(Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->lambda$updateRootRectHover$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method private hideTimer()V
    .registers 3

    .line 216
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideTimer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    const/16 v0, 0x8

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$updateRootRectHover$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 114
    const-string/jumbo v0, "timerBottomMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showTimer()V
    .registers 3

    .line 209
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showTimer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    if-eqz p0, :cond_f

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private updateLayout(Z)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 85
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->updateRootRectHover(Z)V

    return-void

    .line 87
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->updateRootRect()V

    return-void
.end method

.method private updateRootRect()V
    .registers 7

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    if-nez v0, :cond_a

    return-void

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0x51

    .line 133
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 136
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mScreenFormType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_hover:I

    .line 138
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1a5

    :cond_3b
    const/4 v3, 0x1

    const/16 v4, 0x33

    const/16 v5, 0x55

    if-ne v2, v3, :cond_116

    .line 140
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_dc

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_ad

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_80

    const/16 v0, 0x35

    .line 162
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_top_margin_expand_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_right_margin_expand_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_expand_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_108

    .line 148
    :cond_80
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_top_margin_expand_horizontal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_expand_horizontal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_right_margin_expand_horizontal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_108

    :cond_ad
    const/16 v0, 0x53

    .line 154
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_expand_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_right_margin_expand_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_top_margin_expand_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_108

    .line 142
    :cond_dc
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_top_margin_expand_horizontal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_right_margin_expand_horizontal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_expand_horizontal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 168
    :goto_108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mOrientation:I

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1a5

    :cond_116
    const/4 v3, 0x5

    if-ne v2, v3, :cond_14d

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 171
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_top_margin_lr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_right_margin_lr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_lr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1a5

    :cond_14d
    const/4 v3, 0x4

    if-ne v2, v3, :cond_184

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 177
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_top_margin_lr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_right_margin_lr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_lr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1a5

    :cond_184
    const/4 v3, 0x2

    if-ne v2, v3, :cond_196

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_column:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1a5

    .line 184
    :cond_196
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin:I

    .line 185
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 187
    :goto_1a5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRootRectHover(Z)V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 99
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mScreenFormType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    .line 100
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin_hover:I

    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2d

    .line 103
    :cond_21
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_timer_bottom_margin:I

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2d
    if-eqz p1, :cond_60

    .line 108
    const-string/jumbo p1, "timerBottomMargin"

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 109
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 110
    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 111
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 119
    :cond_60
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mRootView:Landroid/view/ViewGroup;

    .line 58
    sget v0, Lcom/transsion/camera/feature/longexposure/R$layout;->capture_time_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    sget p1, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_capture_timer_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mOrientation:I

    const/4 p1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->updateLayout(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 78
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mScreenFormType:I

    .line 79
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->updateLayout(Z)V

    return-void
.end method

.method public onTimerEnd()V
    .registers 1

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->hideTimer()V

    return-void
.end method

.method public onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 2

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->showTimer()V

    return-void
.end method

.method public onTimerUpdate(J)V
    .registers 4

    const/4 v0, 0x0

    .line 197
    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    if-eqz p0, :cond_c

    .line 199
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method public setScreenFormTypeAndOrientation(II)V
    .registers 3

    .line 67
    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mOrientation:I

    .line 68
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mScreenFormType:I

    const/4 p1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->updateLayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mRootView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
