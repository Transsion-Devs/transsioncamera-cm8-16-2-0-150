.class Lcom/transsion/camera/app/ui/AbstractSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment$1;->this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment$1;->this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_28

    .line 328
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment$1;->this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;

    iget v0, p1, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 332
    :cond_19
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->-$$Nest$fgetmOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment$1;->this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->-$$Nest$fgetmOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;->onAnimationEnd()V

    :cond_28
    :goto_28
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
