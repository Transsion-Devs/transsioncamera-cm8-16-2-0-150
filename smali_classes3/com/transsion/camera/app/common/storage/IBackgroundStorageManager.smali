.class public interface abstract Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/IBackgroundCommon;
.implements Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;
.implements Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;,
        Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;
    }
.end annotation


# virtual methods
.method public abstract setBackgroundService(Lcom/transsion/camera/app/common/taps/IBackgroundController;)V
.end method
