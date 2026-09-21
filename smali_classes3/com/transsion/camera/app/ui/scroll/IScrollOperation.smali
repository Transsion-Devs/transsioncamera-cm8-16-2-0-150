.class public interface abstract Lcom/transsion/camera/app/ui/scroll/IScrollOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;
    }
.end annotation


# virtual methods
.method public abstract down(FF)V
.end method

.method public abstract pulling(FF)Z
.end method

.method public pushing(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public startPulling()V
    .registers 1

    return-void
.end method

.method public startPushing()V
    .registers 1

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 50
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .registers 3

    .line 42
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 46
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public abstract stopPulling()Z
.end method

.method public stopPushing()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
