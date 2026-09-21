.class public Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;
.super Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.source "SourceFile"


# static fields
.field private static final ADJUST_UI_ALPHA_CHANGE:I = 0x6

.field private static final ADJUST_UI_ALPHA_CHANGE_DELAY:I = 0x7d0

.field private static final ADJUST_UI_HIDE_DELAY:I = 0x7d0

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mFlashAdjustBar:Landroid/widget/ProgressBar;

.field private mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsFirstScroll:Z

.field private mLastMinValue:Z

.field private mPopSettingSupport:Z


# direct methods
.method public static synthetic $r8$lambda$zQfCqJBbGHOVzgvAa2vpd6O4vb8(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 214
    const-string v0, "topMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 215
    const-string v0, "leftMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 216
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mIsFirstScroll:Z

    return-void
.end method

.method private calculateIndicatorViewAlpha(I)F
    .registers 4

    add-int/lit8 p1, p1, -0xa

    int-to-double p0, p1

    const-wide v0, 0x3fe1c71c71c71c72L    # 0.5555555555555556

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    add-double/2addr p0, v0

    double-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private calculatePercentage(I)F
    .registers 3

    .line 107
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private setBarAlphaDrawable(I)V
    .registers 4

    .line 97
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    if-ne v0, p1, :cond_19

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    if-nez v1, :cond_19

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_flash_min_progress:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_19
    if-eq v0, p1, :cond_2f

    .line 100
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    if-eqz p1, :cond_2f

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_flash_progress:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method protected doOnUp()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handlerMsgExt(Landroid/os/Message;)V
    .registers 5

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    return-void

    .line 77
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected hideAdjustUI()V
    .registers 2

    .line 159
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjustUIShow:Z

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mIsFirstScroll:Z

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 58
    sget v0, Lcom/transsion/camera/R$layout;->flash_luminance_flash_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/transsion/camera/R$id;->flash_luminance_adjust_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    .line 60
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    if-eqz v0, :cond_20

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$drawable;->ic_flash_min_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_20
    sget p2, Lcom/transsion/camera/R$id;->flash_adjust_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPopSettingSupported:Z

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mPopSettingSupport:Z

    return-object p1
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 228
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mIsFirstScroll:Z

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x2

    .line 147
    new-array v2, v2, [I

    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    aget v2, v2, v4

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v0, v3, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mIsFirstScroll:Z

    if-nez v2, :cond_3f

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mPopSettingSupport:Z

    if-eqz v2, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3f

    return v1

    .line 154
    :cond_3f
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjustUIShow:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mIsFirstScroll:Z

    .line 139
    :cond_b
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected refreshAdjustUI(I)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 119
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->setBarAlphaDrawable(I)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->calculateIndicatorViewAlpha(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->calculatePercentage(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->setPercentage(F)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected showAdjustUI()V
    .registers 4

    .line 86
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjustUIShow:Z

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 89
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->refreshAdjustUI(I)V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->updateSettingUILayout(Z)V

    .line 92
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mIsFirstScroll:Z

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 10

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 173
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_18

    goto :goto_23

    .line 175
    :cond_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_23

    const/4 v2, 0x0

    .line 181
    :cond_23
    :goto_23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 184
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 187
    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_68

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "flash_adjust_margin_top_hover"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v2, :cond_49

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "flash_adjust_margin_left_hover"

    invoke-static {v2, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_53

    .line 192
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "flash_adjust_margin_left_hover_rtl"

    invoke-static {v2, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 195
    :goto_53
    const-string v6, "on"

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "flash_adjust_margin_preview_on_top_hover"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    goto :goto_89

    .line 199
    :cond_68
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "flash_adjust_margin_top_normal"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v2, :cond_7f

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "flash_adjust_margin_left_normal"

    invoke-static {v2, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_89

    .line 203
    :cond_7f
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "flash_adjust_margin_left_normal_rtl"

    invoke-static {v2, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 207
    :cond_89
    :goto_89
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_cf

    if-eqz p1, :cond_cf

    .line 208
    const-string p1, "topMargin"

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 209
    const-string v3, "leftMargin"

    filled-new-array {v4, v2}, [I

    move-result-object v2

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 210
    filled-new-array {p1, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 211
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 220
    :cond_cf
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 221
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
