.class Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exitWithFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->-$$Nest$fputmExitComplete(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exit()V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->-$$Nest$fputmExitComplete(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
