.class public interface abstract Lcom/transsion/camera/app/common/IUIAnimatorController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;
    }
.end annotation


# virtual methods
.method public abstract isRunning()Z
.end method

.method public abstract registerOnIdle(Ljava/lang/Runnable;JLandroid/os/Handler;)V
.end method

.method public abstract unregisterOnIdle(Ljava/lang/Runnable;)V
.end method

.method public abstract updateAnimatorState(Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;Z)V
.end method
