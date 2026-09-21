.class public final synthetic Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

.field public final synthetic f$3:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$2:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    iput-object p4, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$3:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget v0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$2:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback$$ExternalSyntheticLambda1;->f$3:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;

    invoke-static {v0, v1, v2, p0}, Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;->$r8$lambda$3ZefEhpp0pAUASPzcHrXDUzvyXc(ILjava/lang/String;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;Lcom/ss/android/ugc/cut_downloader/AbsDownloadService;)V

    return-void
.end method
