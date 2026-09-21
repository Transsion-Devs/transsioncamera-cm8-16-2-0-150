.class public Lcom/transsion/camera/app/ui/HintUIItel;
.super Lcom/transsion/camera/app/ui/AbstractHintUI;
.source "SourceFile"


# instance fields
.field private mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

.field private mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

.field private mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintAlgorithResultText:Landroid/widget/TextView;

.field private mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mAsdHintEffectImgView:Landroid/widget/ImageView;

.field private mAsdHintEffectLayout:Landroid/widget/LinearLayout;

.field private mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintEffectText:Landroid/widget/TextView;

.field private mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mAsdHintGap:I

.field private mAsdHintRootLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public static synthetic $r8$lambda$HRyuHUKJvMNDxcmLkJNsFVyyyR4(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 117
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$SNCnoZZn2nQFgodQY6RBrxhgHEg(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 110
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$UNdhK613R0Gfjn6jwcocR2_bIig(Lcom/transsion/camera/app/ui/HintUIItel;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ILandroid/animation/ValueAnimator;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/HintUIItel;->lambda$initHideAnimator$3(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mX2uDXn7nrqOOYWVMNpW35ckUU4(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 83
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-void
.end method

.method private synthetic lambda$initHideAnimator$3(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ILandroid/animation/ValueAnimator;)V
    .registers 12

    .line 296
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

    .line 298
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_22

    :cond_1c
    if-ne p1, v2, :cond_22

    int-to-float v0, v0

    .line 300
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 302
    :cond_22
    :goto_22
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    const/16 v5, 0x8

    if-nez v0, :cond_46

    .line 304
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 307
    :cond_46
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    if-eqz p3, :cond_a0

    .line 308
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_a0

    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v5, :cond_66

    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    if-ne p3, p2, :cond_66

    .line 310
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_66
    if-ne p1, v3, :cond_7a

    .line 314
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

    .line 316
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    int-to-float p0, p4

    mul-float/2addr v1, p0

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 318
    :cond_8c
    :goto_8c
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v4

    if-nez p0, :cond_9d

    .line 319
    invoke-virtual {p3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 321
    :cond_9d
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_a0
    return-void
.end method


# virtual methods
.method getAsdHintLayoutId()I
    .registers 1

    .line 46
    sget p0, Lcom/transsion/camera/R$layout;->asd_hint_layout:I

    return p0
.end method

.method public bridge synthetic getAsdHintRootLayout()Landroid/view/ViewGroup;
    .registers 1

    .line 23
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIItel;->getAsdHintRootLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getAsdHintRootLayout()Landroid/widget/RelativeLayout;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method getExpandInitValue()[I
    .registers 1

    const/4 p0, 0x0

    .line 132
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method getOverallValue()[I
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 138
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 137
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 140
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 139
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr v1, p0

    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method getShrinkTargetValue()[I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method hideAsdHintView()V
    .registers 1

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopAsdAnimatorSet()V

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIItel;->hideHintAlgorithLayout()V

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIItel;->hideHintEffectLayout()V

    return-void
.end method

.method protected hideHintAlgorithLayout()V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected hideHintEffectLayout()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public initAsdHieAnimator()V
    .registers 6

    .line 248
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2b

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    move v0, v2

    .line 251
    :goto_26
    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 250
    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/transsion/camera/app/ui/HintUIItel;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 253
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_4b

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_45

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_45

    const/4 v0, 0x2

    goto :goto_46

    :cond_45
    move v0, v2

    .line 255
    :goto_46
    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 254
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/HintUIItel;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    :cond_4b
    return-void
.end method

.method initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 11

    .line 261
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 262
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 263
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

    .line 266
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

    .line 267
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 268
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUIItel;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 271
    :cond_66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUIItel;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 274
    :cond_79
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    return-void

    .line 277
    :cond_7c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8d

    move v0, v3

    goto :goto_8e

    :cond_8d
    move v0, v2

    .line 279
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

    .line 280
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b3

    move v4, v3

    goto :goto_b4

    :cond_b3
    move v4, v2

    :goto_b4
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 281
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
    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 282
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintGap:I

    add-int/2addr v6, v7

    div-int/2addr v6, v5

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 283
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d7

    move-object v8, v1

    goto :goto_d9

    :cond_d7
    iget-object v8, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 281
    :goto_d9
    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/transsion/camera/app/ui/HintUIItel;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 285
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

    .line 286
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_100

    move v4, v3

    goto :goto_101

    :cond_100
    move v4, v2

    :goto_101
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 287
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
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v5

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 289
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11f

    goto :goto_121

    :cond_11f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 287
    :goto_121
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/transsion/camera/app/ui/HintUIItel;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    :cond_124
    :goto_124
    return-void
.end method

.method initExpandAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V
    .registers 6

    .line 81
    new-instance v0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p4}, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda3;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    const/16 p3, 0x12c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 8

    .line 71
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 72
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    .line 73
    aget v1, p1, v0

    aget v0, p2, v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/transsion/camera/app/ui/HintUIItel;->initExpandAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    .line 75
    :cond_2b
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4f

    const/4 p3, 0x1

    .line 76
    aget p1, p1, p3

    aget p2, p2, p3

    iget-object p3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/HintUIItel;->initExpandAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    :cond_4f
    return-void
.end method

.method initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .registers 11

    .line 294
    new-instance v0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/HintUIItel;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    const/16 p2, 0x12c

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createFloatValueAnimator(FFILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 324
    iget-object p1, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p2, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    iget-object p1, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method initShrinkAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V
    .registers 9

    .line 108
    new-instance v0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p4}, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    const/16 p3, 0x12c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 115
    invoke-virtual {p6}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/4 p4, 0x0

    rsub-int/lit8 p2, p2, 0x0

    new-instance v0, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p5, p6}, Lcom/transsion/camera/app/ui/HintUIItel$$ExternalSyntheticLambda2;-><init>(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const/4 p3, 0x2

    .line 122
    new-array p5, p3, [F

    fill-array-data p5, :array_4c

    const-string v0, "alpha"

    invoke-static {p6, v0, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const-wide/16 v0, 0x12c

    .line 123
    invoke-virtual {p5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p5

    .line 125
    iget-object p6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, p4

    const/4 p1, 0x1

    aput-object p2, v0, p1

    aput-object p5, v0, p3

    invoke-virtual {p6, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_4c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 11

    .line 93
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 94
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIItel;->getShrinkTargetValue()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gt v1, v2, :cond_2e

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 96
    :cond_2e
    aget v1, p1, v3

    aget v2, p2, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/HintUIItel;->initShrinkAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V

    .line 99
    :cond_3e
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUIItel;->getShrinkTargetValue()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_65

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 101
    :cond_65
    aget v1, p1, v3

    aget v2, p2, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/HintUIItel;->initShrinkAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V

    :cond_75
    return-void
.end method

.method setupAsdHintViews(Landroid/view/ViewGroup;)V
    .registers 3

    .line 51
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    .line 52
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_algorith_result_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 53
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_algorith_result_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/transsion/camera/R$id;->asd_hintalgorith_result_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_effect_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 60
    sget v0, Lcom/transsion/camera/R$id;->asd_hint_effect_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/transsion/camera/R$id;->asd_effect_hint_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->asd_hint_effect_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintGap:I

    return-void
.end method

.method showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdScaleAnimator(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method startAsdHintAnimator(Landroid/animation/Animator;)V
    .registers 2

    .line 152
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 7

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    .line 170
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 175
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7c

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintGap:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7c
    return-void
.end method

.method protected updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintGap:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_26

    .line 188
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 190
    :goto_26
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    .line 194
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIItel;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
