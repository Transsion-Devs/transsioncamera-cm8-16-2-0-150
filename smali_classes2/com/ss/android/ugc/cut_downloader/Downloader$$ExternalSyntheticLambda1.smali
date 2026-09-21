.class public final synthetic Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/ss/android/ugc/cut_downloader/Downloader;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/Downloader;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;->f$0:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;

    iput-object p2, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;->f$2:Lcom/ss/android/ugc/cut_downloader/Downloader;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;->f$0:Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda1;->f$2:Lcom/ss/android/ugc/cut_downloader/Downloader;

    invoke-static {v0, v1, p0}, Lcom/ss/android/ugc/cut_downloader/Downloader;->$r8$lambda$zi5AwxgiQNT7unYc2XGEWk8ziHM(Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;Ljava/lang/String;Lcom/ss/android/ugc/cut_downloader/Downloader;)V

    return-void
.end method
