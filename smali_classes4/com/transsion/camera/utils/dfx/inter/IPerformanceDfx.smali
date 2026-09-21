.class public interface abstract Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/dfx/inter/IExCommon;
.implements Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;


# virtual methods
.method public abstract begin(Landroid/view/View;I)V
.end method

.method public abstract cancel(II)V
.end method

.method public abstract end(I)V
.end method

.method public abstract isTargetActionExists(I)Z
.end method

.method public abstract logAction(II)V
.end method

.method public abstract onActionCancel(I)V
.end method

.method public abstract onActionEnd(I)V
.end method

.method public abstract onActionEnd(ILjava/lang/String;)V
.end method

.method public abstract onActionStart(ILjava/lang/String;)V
.end method
