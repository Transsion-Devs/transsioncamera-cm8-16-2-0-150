.class public interface abstract Lcom/ss/android/vesdk/VEListener$VEFileDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VEFileDownloadListener"
.end annotation


# virtual methods
.method public abstract onConnected(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract onFinished(Ljava/lang/String;)V
.end method

.method public abstract onProgress(Ljava/lang/String;F)V
.end method
