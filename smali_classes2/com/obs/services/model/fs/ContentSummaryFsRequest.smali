.class public Lcom/obs/services/model/fs/ContentSummaryFsRequest;
.super Lcom/obs/services/model/GenericRequest;
.source "SourceFile"


# instance fields
.field private dirName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/obs/services/model/GenericRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirName()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/obs/services/model/fs/ContentSummaryFsRequest;->dirName:Ljava/lang/String;

    return-object p0
.end method

.method public setDirName(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/obs/services/model/fs/ContentSummaryFsRequest;->dirName:Ljava/lang/String;

    return-void
.end method
