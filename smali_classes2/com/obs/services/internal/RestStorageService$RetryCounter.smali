.class final Lcom/obs/services/internal/RestStorageService$RetryCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/RestStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RetryCounter"
.end annotation


# instance fields
.field private errorCount:I

.field private retryMaxCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lcom/obs/services/internal/RestStorageService$RetryCounter;->errorCount:I

    .line 271
    iput p1, p0, Lcom/obs/services/internal/RestStorageService$RetryCounter;->retryMaxCount:I

    return-void
.end method


# virtual methods
.method public addErrorCount()V
    .registers 2

    .line 279
    iget v0, p0, Lcom/obs/services/internal/RestStorageService$RetryCounter;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/obs/services/internal/RestStorageService$RetryCounter;->errorCount:I

    return-void
.end method

.method public getErrorCount()I
    .registers 1

    .line 275
    iget p0, p0, Lcom/obs/services/internal/RestStorageService$RetryCounter;->errorCount:I

    return p0
.end method

.method public getRetryMaxCount()I
    .registers 1

    .line 283
    iget p0, p0, Lcom/obs/services/internal/RestStorageService$RetryCounter;->retryMaxCount:I

    return p0
.end method
