.class public Lcom/obs/services/model/fs/FolderContentSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;
    }
.end annotation


# instance fields
.field private dir:Ljava/lang/String;

.field private dirHeight:J

.field private layerSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDir()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/obs/services/model/fs/FolderContentSummary;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public getDirHeight()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/obs/services/model/fs/FolderContentSummary;->dirHeight:J

    return-wide v0
.end method

.method public getLayerSummaries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/FolderContentSummary$LayerSummary;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/obs/services/model/fs/FolderContentSummary;->layerSummaries:Ljava/util/List;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/fs/FolderContentSummary;->layerSummaries:Ljava/util/List;

    .line 31
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/fs/FolderContentSummary;->layerSummaries:Ljava/util/List;

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/obs/services/model/fs/FolderContentSummary;->dir:Ljava/lang/String;

    return-void
.end method

.method public setDirHeight(J)V
    .registers 3

    .line 24
    iput-wide p1, p0, Lcom/obs/services/model/fs/FolderContentSummary;->dirHeight:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderContentSummary{dir=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/fs/FolderContentSummary;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dirHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/model/fs/FolderContentSummary;->dirHeight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", LayerSummaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/fs/FolderContentSummary;->layerSummaries:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
