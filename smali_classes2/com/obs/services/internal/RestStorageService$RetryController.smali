.class final Lcom/obs/services/internal/RestStorageService$RetryController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/RestStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RetryController"
.end annotation


# instance fields
.field private errorRetryCounter:Lcom/obs/services/internal/RestStorageService$RetryCounter;

.field private lastException:Ljava/lang/Exception;

.field private unexpectedErrorRetryCounter:Lcom/obs/services/internal/RestStorageService$RetryCounter;

.field private wasRecentlyRedirected:Z


# direct methods
.method public constructor <init>(Lcom/obs/services/internal/RestStorageService$RetryCounter;Lcom/obs/services/internal/RestStorageService$RetryCounter;Z)V
    .registers 5

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->lastException:Ljava/lang/Exception;

    .line 296
    iput-object p1, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->errorRetryCounter:Lcom/obs/services/internal/RestStorageService$RetryCounter;

    .line 297
    iput-object p2, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->unexpectedErrorRetryCounter:Lcom/obs/services/internal/RestStorageService$RetryCounter;

    .line 298
    iput-boolean p3, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->wasRecentlyRedirected:Z

    return-void
.end method


# virtual methods
.method public getErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->errorRetryCounter:Lcom/obs/services/internal/RestStorageService$RetryCounter;

    return-object p0
.end method

.method public getLastException()Ljava/lang/Exception;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->lastException:Ljava/lang/Exception;

    return-object p0
.end method

.method public getUnexpectedErrorRetryCounter()Lcom/obs/services/internal/RestStorageService$RetryCounter;
    .registers 1

    .line 314
    iget-object p0, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->unexpectedErrorRetryCounter:Lcom/obs/services/internal/RestStorageService$RetryCounter;

    return-object p0
.end method

.method public isWasRecentlyRedirected()Z
    .registers 1

    .line 318
    iget-boolean p0, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->wasRecentlyRedirected:Z

    return p0
.end method

.method public setLastException(Ljava/lang/Exception;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->lastException:Ljava/lang/Exception;

    return-void
.end method

.method public setWasRecentlyRedirected(Z)V
    .registers 2

    .line 322
    iput-boolean p1, p0, Lcom/obs/services/internal/RestStorageService$RetryController;->wasRecentlyRedirected:Z

    return-void
.end method
