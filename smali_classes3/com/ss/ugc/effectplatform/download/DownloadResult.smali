.class public final Lcom/ss/ugc/effectplatform/download/DownloadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downloadException:Ljava/lang/Exception;

.field private downloadTimeMillsCost:J

.field private fetchInputStreamTimeMillsCost:J

.field private fileSize:J

.field private writeToDiskTimeMillsCost:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDownloadException()Ljava/lang/Exception;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->downloadException:Ljava/lang/Exception;

    return-object p0
.end method

.method public final getDownloadTimeMillsCost()J
    .registers 3

    .line 8
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->downloadTimeMillsCost:J

    return-wide v0
.end method

.method public final getFetchInputStreamTimeMillsCost()J
    .registers 3

    .line 9
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->fetchInputStreamTimeMillsCost:J

    return-wide v0
.end method

.method public final getWriteToDiskTimeMillsCost()J
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->writeToDiskTimeMillsCost:J

    return-wide v0
.end method

.method public final isSuccess()Z
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->downloadException:Ljava/lang/Exception;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final setDownloadException(Ljava/lang/Exception;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->downloadException:Ljava/lang/Exception;

    return-void
.end method

.method public final setDownloadTimeMillsCost(J)V
    .registers 3

    .line 8
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->downloadTimeMillsCost:J

    return-void
.end method

.method public final setFetchInputStreamTimeMillsCost(J)V
    .registers 3

    .line 9
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->fetchInputStreamTimeMillsCost:J

    return-void
.end method

.method public final setFileSize(J)V
    .registers 3

    .line 13
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->fileSize:J

    return-void
.end method

.method public final setWriteToDiskTimeMillsCost(J)V
    .registers 3

    .line 10
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadResult;->writeToDiskTimeMillsCost:J

    return-void
.end method
