.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->createThumbIntervalAnimatorHios()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Z)V

    return-void
.end method
