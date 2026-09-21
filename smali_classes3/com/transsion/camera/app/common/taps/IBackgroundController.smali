.class public interface abstract Lcom/transsion/camera/app/common/taps/IBackgroundController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/IBackgroundCommon;


# virtual methods
.method public abstract getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract onHighQualityJpegFailed(J)V
.end method

.method public abstract onLowQualityJpegSaved(JLjava/lang/String;)V
.end method

.method public abstract setScreenState(I)V
.end method
