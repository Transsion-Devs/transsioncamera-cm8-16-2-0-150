.class public interface abstract Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraOfflineSessionListener"
.end annotation


# virtual methods
.method public abstract executeSwitchToOffline()V
.end method

.method public abstract onClosed()V
.end method

.method public abstract onError(IZ)V
.end method

.method public abstract onIdle()V
.end method

.method public abstract onReady(I)V
.end method

.method public abstract onSwitchFailed(I)V
.end method
