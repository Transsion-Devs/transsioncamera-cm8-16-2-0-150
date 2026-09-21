.class public Lcom/obs/services/model/fs/ContentSummaryFsResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private contentSummary:Lcom/obs/services/model/fs/DirSummary;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSummary()Lcom/obs/services/model/fs/DirSummary;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/obs/services/model/fs/ContentSummaryFsResult;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    return-object p0
.end method

.method public setContentSummary(Lcom/obs/services/model/fs/DirSummary;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/obs/services/model/fs/ContentSummaryFsResult;->contentSummary:Lcom/obs/services/model/fs/DirSummary;

    return-void
.end method
