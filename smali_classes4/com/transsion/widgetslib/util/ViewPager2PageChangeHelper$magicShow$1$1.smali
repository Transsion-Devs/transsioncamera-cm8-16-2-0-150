.class public final Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;->magicShow(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $currentItemViewBefore:Landroid/view/View;

.field final synthetic $currentItemViewReal:Landroid/view/View;

.field final synthetic $this_run:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$currentItemViewBefore:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$currentItemViewReal:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$this_run:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$this_run:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$this_run:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$currentItemViewBefore:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$currentItemViewReal:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper$magicShow$1$1;->$currentItemViewBefore:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    sub-float/2addr v0, p0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
