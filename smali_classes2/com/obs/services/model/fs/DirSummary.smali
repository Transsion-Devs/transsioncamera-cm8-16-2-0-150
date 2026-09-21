.class public Lcom/obs/services/model/fs/DirSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dirCount:J

.field private fileCount:J

.field private fileSize:J

.field private inode:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirCount()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/obs/services/model/fs/DirSummary;->dirCount:J

    return-wide v0
.end method

.method public getFileCount()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/obs/services/model/fs/DirSummary;->fileCount:J

    return-wide v0
.end method

.method public getFileSize()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/obs/services/model/fs/DirSummary;->fileSize:J

    return-wide v0
.end method

.method public getInode()J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/obs/services/model/fs/DirSummary;->inode:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/obs/services/model/fs/DirSummary;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setDirCount(J)V
    .registers 3

    .line 37
    iput-wide p1, p0, Lcom/obs/services/model/fs/DirSummary;->dirCount:J

    return-void
.end method

.method public setFileCount(J)V
    .registers 3

    .line 45
    iput-wide p1, p0, Lcom/obs/services/model/fs/DirSummary;->fileCount:J

    return-void
.end method

.method public setFileSize(J)V
    .registers 3

    .line 53
    iput-wide p1, p0, Lcom/obs/services/model/fs/DirSummary;->fileSize:J

    return-void
.end method

.method public setInode(J)V
    .registers 3

    .line 61
    iput-wide p1, p0, Lcom/obs/services/model/fs/DirSummary;->inode:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/obs/services/model/fs/DirSummary;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirSummary{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/DirSummary;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dirCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/DirSummary;->dirCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/DirSummary;->fileCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/DirSummary;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/DirSummary;->inode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
