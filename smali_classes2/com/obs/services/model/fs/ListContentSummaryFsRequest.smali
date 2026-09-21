.class public Lcom/obs/services/model/fs/ListContentSummaryFsRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;
    }
.end annotation


# instance fields
.field private dirLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;",
            ">;"
        }
    .end annotation
.end field

.field private maxKeys:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirLayers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest;->dirLayers:Ljava/util/List;

    return-object p0
.end method

.method public getMaxKeys()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest;->maxKeys:I

    return p0
.end method

.method public setDirLayers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsRequest$DirLayer;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest;->dirLayers:Ljava/util/List;

    return-void
.end method

.method public setMaxKeys(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsRequest;->maxKeys:I

    return-void
.end method
