.class public final Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;

.field private static final PAGE_CHANGE_DURATION:J = 0x32L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;->INSTANCE:Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final magicShow(Landroid/view/View;Landroid/view/View;)V
    .registers 8

    const-string p0, "currentItemViewBefore"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "currentItemViewReal"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$anim;->os_page_change_alpha_out_interpolator:I

    .line 50
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 49
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 53
    new-instance v3, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;

    invoke-direct {v3, p1, p2, p1}, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-nez p0, :cond_4e

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 69
    :cond_4e
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$anim;->os_page_change_alpha_in_interpolator:I

    .line 70
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 73
    new-instance p1, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$2$1;

    invoke-direct {p1, p2}, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$2$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final setCurrentPage(Landroidx/viewpager2/widget/ViewPager2;I)V
    .registers 4

    const-string v0, "vp2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;->setCurrentPage(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    return-void
.end method

.method public final setCurrentPage(Landroidx/viewpager2/widget/ViewPager2;IZ)V
    .registers 6

    const-string v0, "vp2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_d

    .line 26
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    goto :goto_e

    :cond_d
    move v1, v0

    .line 28
    :goto_e
    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    if-nez p3, :cond_33

    if-ne v1, p2, :cond_16

    goto :goto_33

    .line 33
    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_33

    .line 34
    :cond_1d
    instance-of p3, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez p3, :cond_22

    goto :goto_33

    .line 37
    :cond_22
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_33

    if-eqz p1, :cond_33

    .line 40
    invoke-virtual {p0, p3, p1}, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;->magicShow(Landroid/view/View;Landroid/view/View;)V

    :cond_33
    :goto_33
    return-void
.end method
