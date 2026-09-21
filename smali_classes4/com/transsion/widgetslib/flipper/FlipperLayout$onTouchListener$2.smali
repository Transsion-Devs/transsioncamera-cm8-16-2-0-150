.class final Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method public static synthetic $r8$lambda$SBF9qheJmN00NQvdf98otVQ9EaU(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->invoke$lambda$0(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_90

    if-eq v0, v1, :cond_10

    goto/16 :goto_97

    .line 449
    :cond_10
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->downX:F
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_21

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_97

    .line 452
    :cond_21
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "viewPager"

    const/4 v4, 0x0

    if-eqz p1, :cond_5e

    .line 453
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->downX:F
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4b

    .line 454
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_42

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_42
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety$default(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_97

    .line 456
    :cond_4b
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_55

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_55
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety$default(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_97

    .line 459
    :cond_5e
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->downX:F
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7d

    .line 460
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_74

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_74
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety$default(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_97

    .line 462
    :cond_7d
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_87

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_87
    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety$default(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_97

    .line 445
    :cond_90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V

    :goto_97
    return v1
.end method


# virtual methods
.method public final invoke()Landroid/view/View$OnTouchListener;
    .registers 2

    .line 442
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    new-instance v0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 441
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->invoke()Landroid/view/View$OnTouchListener;

    move-result-object p0

    return-object p0
.end method
