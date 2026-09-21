.class public Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEditWatermarkTabView:Landroid/widget/Button;

.field private mProWatermarkSlideBar:Landroid/view/View;

.field private mProWatermarkTabLayout:Landroid/widget/LinearLayout;

.field private mProWatermarkTabListener:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;

.field private mProWatermarkTabView:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$CcovgyOjvBr0swDfYCO3JOKtHg8(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->lambda$updateLayoutParameters$0(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dueu9-N-P5fQYCgKz6e53L3u6t8(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->lambda$setCurrentItem$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mEditWatermarkTabView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->inflateLayout(Landroid/content/Context;)V

    return-void
.end method

.method private addOnPreDrawListener(Landroid/view/View;Z)V
    .registers 5

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$1;-><init>(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private inflateLayout(Landroid/content/Context;)V
    .registers 4

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$layout;->pro_watermark_tab_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget v0, Lcom/transsion/camera/R$id;->pro_watermark_tab_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    .line 41
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_tab_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    .line 42
    sget v0, Lcom/transsion/camera/R$id;->pro_watermark_slider_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkSlideBar:Landroid/view/View;

    .line 43
    sget v0, Lcom/transsion/camera/R$id;->pro_watermark_tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabLayout:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->updateLayoutParameters()V

    return-void
.end method

.method private synthetic lambda$setCurrentItem$1()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkSlideBar:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$updateLayoutParameters$0(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 7

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->pro_watermark_slider_bar_margin_start:I

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 59
    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkSlideBar:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private triggerTranslateAnimation(F)V
    .registers 4

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkSlideBar:Landroid/view/View;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string/jumbo p1, "translationX"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateLayoutParameters()V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkSlideBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    new-instance v3, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateWatermarkTabViewState(ZZ)V
    .registers 6

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 108
    :cond_8
    sget-object v0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProWatermarkTabView, mEditWatermarkTabView is null, return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->addOnPreDrawListener(Landroid/view/View;Z)V

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->addOnPreDrawListener(Landroid/view/View;Z)V

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mEditWatermarkTabView:Landroid/widget/Button;

    if-eqz p2, :cond_33

    .line 116
    sget p2, Lcom/transsion/camera/R$color;->watermark_tab_select_color:I

    :goto_2e
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_36

    :cond_33
    sget p2, Lcom/transsion/camera/R$color;->watermark_tab_normal_color:I

    goto :goto_2e

    .line 115
    :goto_36
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabView:Landroid/widget/Button;

    if-eqz p1, :cond_44

    .line 118
    sget p1, Lcom/transsion/camera/R$color;->watermark_tab_select_color:I

    :goto_3f
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_47

    :cond_44
    sget p1, Lcom/transsion/camera/R$color;->watermark_tab_normal_color:I

    goto :goto_3f

    .line 117
    :goto_47
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 70
    sget v0, Lcom/transsion/camera/R$id;->pro_watermark_tab_view:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_19

    .line 71
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->updateWatermarkTabViewState(ZZ)V

    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->triggerTranslateAnimation(F)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabListener:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;

    if-eqz p0, :cond_34

    .line 74
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;->onProWatermarkTabClick()V

    return-void

    .line 76
    :cond_19
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_tab_view:I

    if-ne p1, v0, :cond_34

    .line 77
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->updateWatermarkTabViewState(ZZ)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->triggerTranslateAnimation(F)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabListener:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;

    if-eqz p0, :cond_34

    .line 80
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;->onEditWatermarkTabClick()V

    :cond_34
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_e

    .line 98
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->updateWatermarkTabViewState(ZZ)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkSlideBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 101
    :cond_e
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->updateWatermarkTabViewState(ZZ)V

    .line 102
    new-instance p1, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setProWatermarkTabListener(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->mProWatermarkTabListener:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;

    return-void
.end method
