.class public Lcom/obs/services/internal/ext/ExtObsConfiguration;
.super Lcom/obs/services/ObsConfiguration;
.source "SourceFile"


# instance fields
.field private maxRetryOnUnexpectedEndException:I

.field private retryOnConnectionFailureInOkhttp:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/obs/services/ObsConfiguration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/obs/services/internal/ext/ExtObsConfiguration;->retryOnConnectionFailureInOkhttp:Z

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/obs/services/internal/ext/ExtObsConfiguration;->maxRetryOnUnexpectedEndException:I

    return-void
.end method


# virtual methods
.method public getMaxRetryOnUnexpectedEndException()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/obs/services/internal/ext/ExtObsConfiguration;->maxRetryOnUnexpectedEndException:I

    return p0
.end method

.method public isRetryOnConnectionFailureInOkhttp()Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/obs/services/internal/ext/ExtObsConfiguration;->retryOnConnectionFailureInOkhttp:Z

    return p0
.end method

.method public retryOnConnectionFailureInOkhttp(Z)V
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/obs/services/internal/ext/ExtObsConfiguration;->retryOnConnectionFailureInOkhttp:Z

    return-void
.end method

.method public setMaxRetryOnUnexpectedEndException(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/obs/services/internal/ext/ExtObsConfiguration;->maxRetryOnUnexpectedEndException:I

    return-void
.end method
