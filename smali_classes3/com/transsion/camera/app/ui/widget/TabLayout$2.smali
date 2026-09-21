.class Lcom/transsion/camera/app/ui/widget/TabLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/TabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/TabLayout;)V
    .registers 2

    .line 604
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 613
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 p1, 0x2c24

    const/16 v0, 0x10

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->cancel(II)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 618
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 p1, 0x2c24

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->end(I)V

    .line 619
    const-string p0, "animator:mode_scroll"

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/AnimationTrace;->endASync(Ljava/lang/String;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 607
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 608
    const-string p0, "animator:mode_scroll"

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/AnimationTrace;->beginAsync(Ljava/lang/String;I)V

    return-void
.end method
