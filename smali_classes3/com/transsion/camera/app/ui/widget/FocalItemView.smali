.class public Lcom/transsion/camera/app/ui/widget/FocalItemView;
.super Lcom/transsion/camera/app/ui/widget/RotateLayout;
.source "SourceFile"


# static fields
.field private static final ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mFocalLengthView:Landroid/widget/TextView;

.field private mFocalSelectTextView:Landroid/widget/TextView;

.field private mFocalSelecteRootView:Landroid/view/View;

.field private mFocalunSelectTextView:Landroid/widget/TextView;

.field private mIndicatorView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 21
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->foacal_item_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 33
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->focal_item_text_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalSelectTextView:Landroid/widget/TextView;

    .line 34
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->focal_item_text_unselect:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalunSelectTextView:Landroid/widget/TextView;

    .line 35
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->focal_item_focaltext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalLengthView:Landroid/widget/TextView;

    .line 36
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->focal_select_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalSelecteRootView:Landroid/view/View;

    .line 37
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->focal_zoom_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    return-void
.end method

.method private updateIndicatorWithAniamiton(ZF)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 69
    const-string v4, "scaleY"

    const-string v5, "scaleX"

    const-string v6, "alpha"

    const-wide/16 v7, 0xc8

    if-eqz p1, :cond_68

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, p2, v9

    if-gez v9, :cond_68

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    new-array p2, v3, [F

    fill-array-data p2, :array_c4

    invoke-static {p1, v6, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 71
    sget-object p2, Lcom/transsion/camera/app/ui/widget/FocalItemView;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_cc

    invoke-static {v6, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 73
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_d4

    invoke-static {v6, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 74
    invoke-virtual {v5, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    invoke-virtual {v4, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 77
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v1

    aput-object v5, v2, v0

    aput-object v4, v2, v3

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 78
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    new-instance p1, Lcom/transsion/camera/app/ui/widget/FocalItemView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/FocalItemView$1;-><init>(Lcom/transsion/camera/app/ui/widget/FocalItemView;)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_68
    if-nez p1, :cond_c2

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_c2

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    new-array p2, v3, [F

    fill-array-data p2, :array_dc

    invoke-static {p1, v6, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 89
    sget-object p2, Lcom/transsion/camera/app/ui/widget/FocalItemView;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_e4

    invoke-static {v6, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 91
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_ec

    invoke-static {v6, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 92
    invoke-virtual {v5, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    invoke-virtual {v4, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 95
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v1

    aput-object v5, v2, v0

    aput-object v4, v2, v3

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 96
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 97
    new-instance p1, Lcom/transsion/camera/app/ui/widget/FocalItemView$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/FocalItemView$2;-><init>(Lcom/transsion/camera/app/ui/widget/FocalItemView;)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_c2
    return-void

    nop

    :array_c4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_cc
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_d4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_dc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_e4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_ec
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private updateIndicatorWithOutAnimation(ZF)V
    .registers 5

    if-eqz p1, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_e

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_e
    if-nez p1, :cond_1a

    const/4 p1, 0x0

    cmpl-float p2, p2, p1

    if-lez p2, :cond_1a

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalSelectTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    return p0
.end method

.method public setSelected(ZZ)V
    .registers 8

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalunSelectTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_f

    move v4, v3

    goto :goto_10

    :cond_f
    move v4, v2

    :goto_10
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalSelecteRootView:Landroid/view/View;

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eq v0, p1, :cond_44

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalunSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p1, :cond_44

    if-eqz p2, :cond_3b

    .line 50
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->updateIndicatorWithAniamiton(ZF)V

    goto :goto_44

    .line 52
    :cond_3b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->updateIndicatorWithOutAnimation(ZF)V

    :cond_44
    :goto_44
    if-nez p1, :cond_4f

    .line 57
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FocalItemView;->updateIndicatorWithAniamiton(ZF)V

    :cond_4f
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalunSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FocalItemView;->mFocalLengthView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
