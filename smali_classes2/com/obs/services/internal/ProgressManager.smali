.class public abstract Lcom/obs/services/internal/ProgressManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/ProgressManager$BytesUnit;
    }
.end annotation


# instance fields
.field protected final intervalBytes:J

.field protected lastCheckpoint:J

.field protected volatile lastInstantaneousBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/internal/ProgressManager$BytesUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected final progressListener:Lcom/obs/services/model/ProgressListener;

.field protected startCheckpoint:J

.field protected final totalBytes:J


# direct methods
.method public constructor <init>(JLcom/obs/services/model/ProgressListener;J)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/ProgressManager;->lastInstantaneousBytes:Ljava/util/List;

    .line 42
    iput-wide p1, p0, Lcom/obs/services/internal/ProgressManager;->totalBytes:J

    .line 43
    iput-object p3, p0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 45
    iput-wide p1, p0, Lcom/obs/services/internal/ProgressManager;->startCheckpoint:J

    .line 46
    iput-wide p1, p0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    .line 47
    iput-wide p4, p0, Lcom/obs/services/internal/ProgressManager;->intervalBytes:J

    return-void
.end method


# virtual methods
.method protected createCurrentInstantaneousBytes(JJ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/obs/services/internal/ProgressManager$BytesUnit;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object p0, p0, Lcom/obs/services/internal/ProgressManager;->lastInstantaneousBytes:Ljava/util/List;

    if-eqz p0, :cond_27

    .line 68
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/ProgressManager$BytesUnit;

    .line 69
    iget-wide v2, v1, Lcom/obs/services/internal/ProgressManager$BytesUnit;->dateTime:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 74
    :cond_27
    new-instance p0, Lcom/obs/services/internal/ProgressManager$BytesUnit;

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/obs/services/internal/ProgressManager$BytesUnit;-><init>(JJ)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected abstract doProgressChanged(I)V
.end method

.method public final progressChanged(I)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/obs/services/internal/ProgressManager;->progressListener:Lcom/obs/services/model/ProgressListener;

    if-eqz v0, :cond_a

    if-gtz p1, :cond_7

    goto :goto_a

    .line 60
    :cond_7
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ProgressManager;->doProgressChanged(I)V

    :cond_a
    :goto_a
    return-void
.end method

.method public abstract progressEnd()V
.end method

.method public progressStart()V
    .registers 3

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lcom/obs/services/internal/ProgressManager;->startCheckpoint:J

    .line 53
    iput-wide v0, p0, Lcom/obs/services/internal/ProgressManager;->lastCheckpoint:J

    return-void
.end method
