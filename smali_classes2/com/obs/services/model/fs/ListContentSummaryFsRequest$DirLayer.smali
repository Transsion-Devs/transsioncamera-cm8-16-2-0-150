.class public Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/fs/ListContentSummaryFsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirLayer"
.end annotation


# instance fields
.field private inode:J

.field private key:Ljava/lang/String;

.field private marker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInode()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->inode:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public setInode(J)V
    .registers 3

    .line 72
    iput-wide p1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->inode:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->key:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->marker:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirLayer{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", marker=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->marker:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", inode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;->inode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
