.class public abstract Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mIsRecord:Z

.field private mIsScaleBarVisible:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mResource:Landroid/content/res/Resources;

.field protected mSettingLevel:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mSettingSwitch:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field protected mVideoPortraitSpotScaleGroup:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$tSEkbldY3EHWTLLP6EDZyo4Wnfc(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsScaleBarVisible(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mIsScaleBarVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetPortraitSpotScaleGroupVisibility(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setPortraitSpotScaleGroupVisibility()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/res/Resources;)V
    .registers 8

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 44
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mIsScaleBarVisible:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mIsRecord:Z

    .line 179
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mResource:Landroid/content/res/Resources;

    const/4 p1, 0x2

    .line 53
    new-array p1, p1, [F

    fill-array-data p1, :array_52

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_52
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_11

    .line 175
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    return-void
.end method

.method private setPortraitSpotScaleGroupVisibility()V
    .registers 2

    .line 202
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mIsScaleBarVisible:Z

    if-eqz v0, :cond_b

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 205
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public initDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mSettingLevel:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 148
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mSettingSwitch:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public resetValue()V
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->destroy()V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperate(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setCurrentScaleValue(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 224
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setRecordStatus(Z)V
    .registers 2

    .line 232
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mIsRecord:Z

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateLowLight(Z)V

    return-void
.end method

.method public updateScaleBarVisibility(ZZ)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_5

    return-void

    .line 155
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mIsScaleBarVisible:Z

    if-eqz p2, :cond_4a

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x2

    if-eqz p1, :cond_25

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_54

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_36

    .line 162
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    fill-array-data p2, :array_5c

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    :goto_36
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4a
    if-eqz p1, :cond_4e

    const/4 p0, 0x0

    goto :goto_50

    :cond_4e
    const/16 p0, 0x8

    .line 169
    :goto_50
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :array_54
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateScaleGroupLayout(II)V
    .registers 13

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v3, 0x1

    const/16 v4, 0x51

    const/16 v5, 0x5a

    const/16 v6, 0x10e

    if-eqz v2, :cond_84

    .line 62
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScaleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 64
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 65
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_ruler_view_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 66
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_width:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_ruler_view_height:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 70
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mResource:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->video_portrait_spot_function_container_root_height:I

    .line 71
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mResource:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_margin_bottom_offset:I

    .line 72
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_197

    :cond_84
    const/16 v2, 0x33

    const/16 v7, 0x55

    if-ne p1, v3, :cond_11f

    if-eqz p2, :cond_f7

    if-eq p2, v5, :cond_d6

    const/16 v2, 0xb4

    if-eq p2, v2, :cond_b7

    if-eq p2, v6, :cond_96

    goto/16 :goto_115

    :cond_96
    const/16 v2, 0x35

    .line 84
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_90_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 87
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_90_margin_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_115

    .line 91
    :cond_b7
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_0_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 94
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_0_margin_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_115

    :cond_d6
    const/16 v2, 0x53

    .line 77
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_90_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 80
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_90_margin_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_115

    .line 98
    :cond_f7
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_0_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scale_expand_0_margin_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 107
    :goto_115
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 v4, p2, 0x10e

    rem-int/lit16 v4, v4, 0x168

    invoke-virtual {v2, v4, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_18a

    :cond_11f
    const/4 v8, 0x4

    if-ne p1, v8, :cond_146

    .line 109
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_hover_margin_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 112
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_hover_margin_bottom:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 114
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v5, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_18a

    :cond_146
    const/4 v7, 0x5

    if-ne p1, v7, :cond_16d

    .line 116
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_hover_margin_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 119
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_hover_margin_bottom:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 121
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v6, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_18a

    .line 123
    :cond_16d
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_180

    .line 126
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_margin_bottom_column:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_188

    .line 127
    :cond_180
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_margin_bottom:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_188
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 129
    :goto_18a
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mResource:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_width:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setParentRootWidth(I)V

    :goto_197
    if-ne p1, v3, :cond_19a

    move v1, v6

    .line 133
    :cond_19a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_1ab

    if-nez p1, :cond_1ab

    if-ne p2, v5, :cond_1a7

    const/16 p2, -0x5a

    goto :goto_1ac

    :cond_1a7
    if-ne p2, v6, :cond_1ac

    move p2, v5

    goto :goto_1ac

    :cond_1ab
    move p2, v1

    .line 141
    :cond_1ac
    :goto_1ac
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
