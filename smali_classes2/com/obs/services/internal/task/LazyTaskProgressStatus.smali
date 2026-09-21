.class public Lcom/obs/services/internal/task/LazyTaskProgressStatus;
.super Lcom/obs/services/internal/task/DefaultTaskProgressStatus;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/obs/services/internal/task/DefaultTaskProgressStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public execTaskIncrement()V
    .registers 1

    return-void
.end method

.method public failTaskIncrement()V
    .registers 1

    return-void
.end method

.method public getExecPercentage()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getExecTaskNum()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getFailTaskNum()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getSucceedTaskNum()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getTotalTaskNum()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public setTotalTaskNum(I)V
    .registers 2

    return-void
.end method

.method public succeedTaskIncrement()V
    .registers 1

    return-void
.end method
