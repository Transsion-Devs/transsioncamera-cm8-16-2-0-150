.class public final Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMaskAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    .line 43
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 58
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    # getter for: Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMaskDelegate$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    move-result-object v0

    const-string v1, "maskDelegate"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_17
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isReversed()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    goto :goto_30

    :cond_25
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    move v0, v3

    :goto_30
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 59
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    # getter for: Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMaskDelegate$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    move-result-object p1

    if-nez p1, :cond_3f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3f
    invoke-virtual {p1, v3}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->setReversed(Z)V

    .line 60
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    # getter for: Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMPath$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object p1

    if-nez p1, :cond_50

    const-string p1, "mPath"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_51

    :cond_50
    move-object v2, p1

    :goto_51
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 46
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 47
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    # invokes: Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMPaint()Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMPaint(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Paint;

    move-result-object p1

    .line 48
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    const v0, -0x777778

    if-eqz p0, :cond_28

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 47
    :cond_28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 50
    :cond_2c
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    # invokes: Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMPaint()Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$getMPaint(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    const v0, -0xffff01

    if-eqz p0, :cond_48

    const v1, 0x10100a1

    .line 51
    filled-new-array {v1}, [I

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :cond_48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
