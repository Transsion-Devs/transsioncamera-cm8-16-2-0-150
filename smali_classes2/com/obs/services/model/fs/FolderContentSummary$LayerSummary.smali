.class public Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/fs/FolderContentSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerSummary"
.end annotation


# instance fields
.field private dirCount:J

.field private fileCount:J

.field private fileSize:J

.field private summaryHeight:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirCount()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->dirCount:J

    return-wide v0
.end method

.method public getFileCount()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->fileCount:J

    return-wide v0
.end method

.method public getFileSize()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->fileSize:J

    return-wide v0
.end method

.method public getSummaryHeight()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->summaryHeight:J

    return-wide v0
.end method

.method public setDirCount(J)V
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->dirCount:J

    return-void
.end method

.method public setFileCount(J)V
    .registers 3

    .line 67
    iput-wide p1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->fileCount:J

    return-void
.end method

.method public setFileSize(J)V
    .registers 3

    .line 75
    iput-wide p1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->fileSize:J

    return-void
.end method

.method public setSummaryHeight(J)V
    .registers 3

    .line 51
    iput-wide p1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->summaryHeight:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayerSummary{summaryHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->summaryHeight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dirCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->dirCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->fileCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
