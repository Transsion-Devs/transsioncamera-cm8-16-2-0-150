.class public interface abstract Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;,
        Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCancel(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onProgress(Ljava/lang/String;I)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
