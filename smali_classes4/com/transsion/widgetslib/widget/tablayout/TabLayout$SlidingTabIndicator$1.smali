.class Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

.field final synthetic val$finalTargetLeft:I

.field final synthetic val$finalTargetRight:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;II)V
    .registers 4

    .line 3326
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 3329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 3330
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 3331
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartLeft:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->access$1400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 3332
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartRight:I
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->access$1500(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;)I

    move-result v2

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-static {v2, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p0

    .line 3330
    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method
