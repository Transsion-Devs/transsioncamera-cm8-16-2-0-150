.class public interface abstract Lcom/ss/android/ugc/cut_downloader/IDownloadService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;,
        Lcom/ss/android/ugc/cut_downloader/IDownloadService$Default;
    }
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract download(Ljava/lang/String;)V
.end method

.method public abstract registerCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
.end method
