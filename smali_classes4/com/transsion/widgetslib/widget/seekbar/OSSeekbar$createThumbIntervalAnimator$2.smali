.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method
