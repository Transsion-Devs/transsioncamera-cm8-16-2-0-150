.class public interface abstract Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICShotButtonOperationControl"
.end annotation


# virtual methods
.method public abstract isPreviewReady()Z
.end method

.method public abstract notifyCsViewAnimationChange(Z)V
.end method

.method public abstract onCSViewMoving()V
.end method

.method public abstract resetCSViewStatus()V
.end method

.method public abstract setContinuousShotSuccessful(Z)V
.end method

.method public abstract startContinuousShot()V
.end method

.method public abstract stopContinuousShot()V
.end method

.method public abstract updateUIState()V
.end method
