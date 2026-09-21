.class final Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final callback:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

.field private final downloadId:J

.field private downloadStatus:I

.field private final filePath:Ljava/lang/String;

.field private final filePathDownloading:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;I)V
    .registers 9

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePathDownloading"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->url:Ljava/lang/String;

    .line 316
    iput-object p2, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->filePath:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->filePathDownloading:Ljava/lang/String;

    .line 318
    iput-wide p4, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->downloadId:J

    .line 319
    iput-object p6, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->callback:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    .line 320
    iput p7, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->downloadStatus:I

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->callback:Lcom/ss/android/ugc/cut_downloader/AbsDownloadService$Callback;

    return-object p0
.end method

.method public final getDownloadId()J
    .registers 3

    .line 318
    iget-wide v0, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->downloadId:J

    return-wide v0
.end method

.method public final getDownloadStatus()I
    .registers 1

    .line 320
    iget p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->downloadStatus:I

    return p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFilePathDownloading()Ljava/lang/String;
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->filePathDownloading:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final setDownloadStatus(I)V
    .registers 2

    .line 320
    iput p1, p0, Lcom/ss/android/ugc/cut_downloader_simple/DownloadInfo;->downloadStatus:I

    return-void
.end method
