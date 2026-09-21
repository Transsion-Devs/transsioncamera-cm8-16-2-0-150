.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;->startVideoSizePointAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 603
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 598
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V

    return-void
.end method
