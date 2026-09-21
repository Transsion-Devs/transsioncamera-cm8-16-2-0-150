.class final Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadResult"
.end annotation


# instance fields
.field private errorCode:I

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 1

    .line 275
    iget p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->errorCode:I

    return p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final hasDone()Z
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->filePath:Ljava/lang/String;

    if-nez v0, :cond_b

    iget p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->errorCode:I

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final setErrorCode(I)V
    .registers 2

    .line 275
    iput p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->errorCode:I

    return-void
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$DownloadResult;->filePath:Ljava/lang/String;

    return-void
.end method
