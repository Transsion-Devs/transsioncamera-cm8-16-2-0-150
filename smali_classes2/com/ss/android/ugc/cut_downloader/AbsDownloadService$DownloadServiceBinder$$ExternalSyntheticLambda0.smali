.class public final synthetic Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

.field public final synthetic f$1:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda0;->f$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    iput-object p2, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda0;->f$1:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda0;->f$0:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder$$ExternalSyntheticLambda0;->f$1:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$DownloadServiceBinder;->$r8$lambda$hsRzK2KfbdgsPWSPjp-rhuCrZw8(Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V

    return-void
.end method
