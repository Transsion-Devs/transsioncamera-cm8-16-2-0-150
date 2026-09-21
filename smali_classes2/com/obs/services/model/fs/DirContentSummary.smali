.class public Lcom/obs/services/model/fs/DirContentSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private inode:J

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private nextMarker:Ljava/lang/String;

.field private subDir:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInode()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/obs/services/model/fs/DirContentSummary;->inode:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/obs/services/model/fs/DirContentSummary;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getNextMarker()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/obs/services/model/fs/DirContentSummary;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public getSubDir()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirSummary;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/obs/services/model/fs/DirContentSummary;->subDir:Ljava/util/List;

    return-object p0
.end method

.method public isTruncated()Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/obs/services/model/fs/DirContentSummary;->isTruncated:Z

    return p0
.end method

.method public setInode(J)V
    .registers 3

    .line 39
    iput-wide p1, p0, Lcom/obs/services/model/fs/DirContentSummary;->inode:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/obs/services/model/fs/DirContentSummary;->key:Ljava/lang/String;

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/obs/services/model/fs/DirContentSummary;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setSubDir(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirSummary;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/obs/services/model/fs/DirContentSummary;->subDir:Ljava/util/List;

    return-void
.end method

.method public setTruncated(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/obs/services/model/fs/DirContentSummary;->isTruncated:Z

    return-void
.end method
