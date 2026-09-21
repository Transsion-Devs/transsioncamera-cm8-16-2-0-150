.class public Lcom/transsion/camera/app/ui/HintUIInfinix;
.super Lcom/transsion/camera/app/ui/AbstractHintUI;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

.field private mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

.field private mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

.field private mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintAlgorithResultText:Landroid/widget/TextView;

.field private mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdHintEffectImgBg:Landroid/widget/ImageView;

.field private mAsdHintEffectImgView:Landroid/widget/ImageView;

.field private mAsdHintEffectLayout:Landroid/widget/FrameLayout;

.field private mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintEffectText:Landroid/widget/TextView;

.field private mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdHintGap:I

.field private mAsdHintRootLayout:Landroid/widget/RelativeLayout;

.field private final mAsdImgViewPadding:I

.field private mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

.field private mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$55rz4kE6yc14QEGagdQRA4fbikE(Lcom/transsion/camera/app/ui/HintUIInfinix;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/HintUIInfinix;->lambda$initHideAnimator$0(ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$97pb9WMurkEHMnwnmyOOJ1kZYMI(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 201
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 202
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$PGr6Yg5HwPZ-I-v79lwduw-3z-A(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$XtWfWgC97WVAQq8M9uAj07BEDJY(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 194
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 195
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$cDfS3MntsbgFuZmclN5f5MH5kSE(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 252
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$shUVCRq_MZwb1d50A_PHipZ3Y8U(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 245
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 246
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$szl-DkBQiSSMxGA7lX7dBJzWBXI(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 238
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 239
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p1, 0x6

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdImgViewPadding:I

    return-void
.end method

.method private initExpandAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 15

    .line 183
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const-string v3, "alpha"

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    .line 184
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x2

    .line 186
    new-array v6, v1, [F

    fill-array-data v6, :array_72

    invoke-static {p4, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 187
    invoke-virtual {p4, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 189
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 190
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 189
    invoke-virtual {p5, v3, v4}, Landroid/view/View;->measure(II)V

    .line 192
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    new-instance v4, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda1;

    invoke-direct {v4, p6, p5}, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    const/16 p5, 0x12c

    invoke-virtual {p0, v2, v3, p5, v4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p6

    .line 199
    new-instance v3, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda2;

    invoke-direct {v3, p7, p3}, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p1, p2, p5, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p7, 0x6

    invoke-static {p2, p7}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p2

    new-instance p7, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda3;

    invoke-direct {p7, p3}, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda3;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, v2, p2, p5, p7}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p3, 0x5

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object p1, p3, v2

    const/4 p1, 0x1

    aput-object v0, p3, p1

    aput-object p6, p3, v1

    const/4 p1, 0x3

    aput-object p4, p3, p1

    const/4 p1, 0x4

    aput-object p2, p3, p1

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_72
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .registers 11

    .line 136
    new-instance v0, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/HintUIInfinix;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    const/16 p2, 0x12c

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createFloatValueAnimator(FFILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 166
    iget-object p1, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p2, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object p1, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private initShrinkAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 15

    .line 229
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v3, "alpha"

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    .line 230
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x2

    .line 232
    new-array v6, v1, [F

    fill-array-data v6, :array_74

    invoke-static {p4, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 233
    invoke-virtual {p4, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const-wide/16 v3, 0xc8

    .line 234
    invoke-virtual {p4, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 236
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    new-instance v4, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda4;

    invoke-direct {v4, p6, p5}, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda4;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    const/16 p5, 0x12c

    invoke-virtual {p0, v3, v2, p5, v4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p6

    .line 243
    new-instance v3, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda5;

    invoke-direct {v3, p7, p3}, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda5;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p1, p2, p5, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p7, 0x6

    invoke-static {p2, p7}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p2

    new-instance p7, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda6;

    invoke-direct {p7, p3}, Lcom/transsion/camera/app/ui/HintUIInfinix$$ExternalSyntheticLambda6;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p2, v2, p5, p7}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 254
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p5, 0x5

    new-array p5, p5, [Landroid/animation/Animator;

    aput-object p1, p5, v2

    const/4 p1, 0x1

    aput-object v0, p5, p1

    aput-object p4, p5, v1

    const/4 p1, 0x3

    aput-object p6, p5, p1

    const/4 p1, 0x4

    aput-object p2, p5, p1

    invoke-virtual {p3, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void

    nop

    :array_74
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$initHideAnimator$0(ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V
    .registers 12

    .line 138
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1c

    neg-int v0, v0

    int-to-float v0, v0

    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_22

    :cond_1c
    if-ne p1, v2, :cond_22

    int-to-float v0, v0

    .line 142
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 144
    :cond_22
    :goto_22
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 145
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    const/16 v5, 0x8

    if-nez v0, :cond_46

    .line 146
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 149
    :cond_46
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    if-eqz p3, :cond_a0

    .line 150
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_a0

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v5, :cond_66

    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    if-ne p3, p2, :cond_66

    .line 152
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_66
    if-ne p1, v3, :cond_7a

    .line 156
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    neg-float p0, v1

    int-to-float p1, p4

    mul-float/2addr p0, p1

    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_8c

    :cond_7a
    if-ne p1, v2, :cond_8c

    .line 158
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    int-to-float p0, p4

    mul-float/2addr v1, p0

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 160
    :cond_8c
    :goto_8c
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v4

    if-nez p0, :cond_9d

    .line 161
    invoke-virtual {p3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    :cond_9d
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_a0
    return-void
.end method


# virtual methods
.method getAsdHintLayoutId()I
    .registers 1

    .line 56
    sget p0, Lcom/transsion/camera/R$layout;->asd_hint_layout_infinix:I

    return p0
.end method

.method public bridge synthetic getAsdHintRootLayout()Landroid/view/ViewGroup;
    .registers 1

    .line 23
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIInfinix;->getAsdHintRootLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getAsdHintRootLayout()Landroid/widget/RelativeLayout;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method getExpandInitValue()[I
    .registers 1

    const/4 p0, 0x0

    .line 261
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method getOverallValue()[I
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 267
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 266
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 270
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 269
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 272
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->context:Landroid/content/Context;

    .line 273
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    .line 274
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    add-int/2addr v1, p0

    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method getShrinkTargetValue()[I
    .registers 2

    .line 279
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method hideAsdHintView()V
    .registers 2

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopAsdAnimatorSet()V

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIInfinix;->hideHintAlgorithLayout()V

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIInfinix;->hideHintEffectLayout()V

    return-void
.end method

.method hideHintAlgorithLayout()V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 365
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method hideHintEffectLayout()V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 349
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method initAsdHieAnimator()V
    .registers 6

    .line 90
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_23

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v2, v4, v1}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 95
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_3b

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_35

    const/4 v0, 0x2

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    :cond_3b
    return-void
.end method

.method initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 11

    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto/16 :goto_124

    .line 108
    :cond_2d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_7c

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 113
    :cond_66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 116
    :cond_79
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    return-void

    .line 119
    :cond_7c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8d

    move v0, v3

    goto :goto_8e

    :cond_8d
    move v0, v2

    .line 121
    :goto_8e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_dc

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_dc

    .line 122
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b3

    move v4, v3

    goto :goto_b4

    :cond_b3
    move v4, v2

    :goto_b4
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 123
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_be

    move v4, v2

    goto :goto_c3

    :cond_be
    if-eqz v0, :cond_c2

    move v4, v3

    goto :goto_c3

    :cond_c2
    move v4, v5

    :goto_c3
    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    .line 124
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintGap:I

    add-int/2addr v6, v7

    div-int/2addr v6, v5

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    .line 125
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d7

    move-object v8, v1

    goto :goto_d9

    :cond_d7
    iget-object v8, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 123
    :goto_d9
    invoke-direct {p0, v4, v6, v7, v8}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 127
    :cond_dc
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_124

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_124

    .line 128
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_100

    move v4, v3

    goto :goto_101

    :cond_100
    move v4, v2

    :goto_101
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 129
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10a

    goto :goto_10f

    :cond_10a
    if-eqz v0, :cond_10e

    move v2, v5

    goto :goto_10f

    :cond_10e
    move v2, v3

    :goto_10f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v5

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 131
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11f

    goto :goto_121

    :cond_11f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    .line 129
    :goto_121
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    :cond_124
    :goto_124
    return-void
.end method

.method initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 12

    .line 172
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 173
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const/4 v1, 0x0

    move v2, v1

    .line 174
    aget v1, p1, v2

    aget v2, p2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initExpandAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 176
    :cond_33
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    const/4 v1, 0x1

    .line 177
    aget v2, p1, v1

    aget v1, p2, v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectImgBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initExpandAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_61
    return-void
.end method

.method initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 13

    .line 215
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 216
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIInfinix;->getShrinkTargetValue()[I

    move-result-object v2

    aget v2, v2, v8

    if-gt v1, v2, :cond_2e

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 218
    :cond_2e
    aget v1, p1, v8

    aget v2, p2, v8

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initShrinkAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 221
    :cond_40
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIInfinix;->getShrinkTargetValue()[I

    move-result-object v2

    aget v2, v2, v8

    if-gt v1, v2, :cond_66

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    :cond_66
    const/4 v1, 0x1

    .line 223
    aget v2, p1, v1

    aget v1, p2, v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectImgBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/HintUIInfinix;->initShrinkAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_7c
    return-void
.end method

.method setupAsdHintViews(Landroid/view/ViewGroup;)V
    .registers 3

    .line 61
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    .line 62
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_algorith_result_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 63
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_algorith_result_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_algorith_result_img_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/transsion/camera/R$id;->asd_hintalgorith_result_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/transsion/camera/R$id;->asd_algorith_result_text_shell_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->context:Landroid/content/Context;

    .line 75
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_effect_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    .line 76
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_effect_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_effect_img_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectImgBg:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcom/transsion/camera/R$id;->asd_effect_hint_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/transsion/camera/R$id;->asd_effect_text_shell_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->asd_hint_effect_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintGap:I

    return-void
.end method

.method showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdScaleAnimator(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method startAsdHintAnimator(Landroid/animation/Animator;)V
    .registers 2

    .line 284
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    .line 299
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 306
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7c

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintGap:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7c
    return-void
.end method

.method protected updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintGap:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_26

    .line 319
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 321
    :goto_26
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    .line 323
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIInfinix;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
