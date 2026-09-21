.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1043
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMToThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V

    .line 1044
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    # invokes: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$calculateProgress(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMProgress$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V

    .line 1045
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getOnProgressChangedListener$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1046
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    .line 1047
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v2

    .line 1048
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v3

    const/4 v4, 0x1

    .line 1045
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    .line 1051
    :cond_51
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    const/4 v3, 0x2

    if-gtz v2, :cond_70

    .line 1052
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    int-to-float v2, v3

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    goto :goto_87

    .line 1054
    :cond_70
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    sub-float/2addr p1, v1

    int-to-float v1, v3

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMToThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr p1, v1

    add-float v1, v2, p1

    .line 1051
    :goto_87
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMCurrentThumbInHalfWidth$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V

    .line 1056
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
