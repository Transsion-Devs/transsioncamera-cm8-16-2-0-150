.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->playFakeDragAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Landroid/animation/ValueAnimator;

.field final synthetic $updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 4

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->$it:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 237
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const-string v0, "viewPager"

    const/4 v1, 0x0

    if-nez p1, :cond_17

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_17
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->endFakeDrag()Z

    .line 247
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_26

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_26
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 248
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_36

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_36
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->currentPst:I
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v0

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lcom/transsion/widgetslib/flipper/FlipperLayoutHelperKt;->setCurrentItemSafety$default(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    .line 249
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->$it:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->$it:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd, isVisible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->isVisible:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$isVisible$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlipperLayout"

    invoke-static {v0, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # invokes: Lcom/transsion/widgetslib/flipper/FlipperLayout;->sendScrollMsg()V
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$sendScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 240
    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "viewPager"

    if-nez p1, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_17
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->beginFakeDrag()Z

    .line 241
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$playFakeDragAnim$1$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # getter for: Lcom/transsion/widgetslib/flipper/FlipperLayout;->viewPager:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    if-nez p0, :cond_26

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_27

    :cond_26
    move-object v0, p0

    :goto_27
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    return-void
.end method
