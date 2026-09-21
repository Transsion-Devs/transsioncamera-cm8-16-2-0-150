.class public Lcom/obs/services/model/fs/ListContentSummaryFsResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;
    }
.end annotation


# instance fields
.field private dirContentSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirContentSummary;",
            ">;"
        }
    .end annotation
.end field

.field private errorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirContentSummaries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirContentSummary;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryFsResult;->dirContentSummaries:Ljava/util/List;

    return-object p0
.end method

.method public getErrorResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/obs/services/model/fs/ListContentSummaryFsResult;->errorResults:Ljava/util/List;

    return-object p0
.end method

.method public setDirContentSummaries(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/DirContentSummary;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsResult;->dirContentSummaries:Ljava/util/List;

    return-void
.end method

.method public setErrorResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/fs/ListContentSummaryFsResult$ErrorResult;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/obs/services/model/fs/ListContentSummaryFsResult;->errorResults:Ljava/util/List;

    return-void
.end method
