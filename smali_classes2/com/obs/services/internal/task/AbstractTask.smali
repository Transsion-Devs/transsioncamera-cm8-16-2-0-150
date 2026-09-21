.class public abstract Lcom/obs/services/internal/task/AbstractTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private obsClient:Lcom/obs/services/AbstractClient;


# direct methods
.method public constructor <init>(Lcom/obs/services/AbstractClient;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractTask;->obsClient:Lcom/obs/services/AbstractClient;

    .line 26
    iput-object p2, p0, Lcom/obs/services/internal/task/AbstractTask;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/obs/services/internal/task/AbstractTask;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getObsClient()Lcom/obs/services/AbstractClient;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/obs/services/internal/task/AbstractTask;->obsClient:Lcom/obs/services/AbstractClient;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractTask;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setObsClient(Lcom/obs/services/AbstractClient;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/obs/services/internal/task/AbstractTask;->obsClient:Lcom/obs/services/AbstractClient;

    return-void
.end method
