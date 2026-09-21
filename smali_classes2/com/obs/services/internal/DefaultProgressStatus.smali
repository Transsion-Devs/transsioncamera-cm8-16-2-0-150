.class public Lcom/obs/services/internal/DefaultProgressStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/ProgressStatus;


# instance fields
.field private instantaneousBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/internal/ProgressManager$BytesUnit;",
            ">;"
        }
    .end annotation
.end field

.field private instantaneousSpeed:J

.field private final intervalMilliseconds:J

.field private final newlyTransferredBytes:J

.field private final totalBytes:J

.field private final totalMilliseconds:J

.field private final transferredBytes:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .registers 11

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/obs/services/internal/DefaultProgressStatus;->newlyTransferredBytes:J

    .line 35
    iput-wide p3, p0, Lcom/obs/services/internal/DefaultProgressStatus;->transferredBytes:J

    .line 36
    iput-wide p5, p0, Lcom/obs/services/internal/DefaultProgressStatus;->totalBytes:J

    .line 37
    iput-wide p7, p0, Lcom/obs/services/internal/DefaultProgressStatus;->intervalMilliseconds:J

    .line 38
    iput-wide p9, p0, Lcom/obs/services/internal/DefaultProgressStatus;->totalMilliseconds:J

    return-void
.end method


# virtual methods
.method public getAverageSpeed()D
    .registers 7

    .line 67
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->totalMilliseconds:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 70
    :cond_b
    iget-wide v2, p0, Lcom/obs/services/internal/DefaultProgressStatus;->transferredBytes:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    long-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getInstantaneousSpeed()D
    .registers 5

    .line 43
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->intervalMilliseconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 46
    :cond_b
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->instantaneousSpeed:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getNewlyTransferredBytes()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->newlyTransferredBytes:J

    return-wide v0
.end method

.method public getOldInstantaneousSpeed()D
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->instantaneousBytes:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1c

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/ProgressManager$BytesUnit;

    .line 54
    iget-wide v3, v0, Lcom/obs/services/internal/ProgressManager$BytesUnit;->bytes:J

    add-long/2addr v1, v3

    goto :goto_a

    :cond_1a
    long-to-double v0, v1

    return-wide v0

    .line 59
    :cond_1c
    iget-wide v3, p0, Lcom/obs/services/internal/DefaultProgressStatus;->intervalMilliseconds:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_25

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 62
    :cond_25
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->newlyTransferredBytes:J

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v5

    long-to-double v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->totalBytes:J

    return-wide v0
.end method

.method public getTransferPercentage()I
    .registers 7

    .line 75
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    const/16 p0, 0x64

    return p0

    .line 80
    :cond_11
    iget-wide v2, p0, Lcom/obs/services/internal/DefaultProgressStatus;->transferredBytes:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method

.method public getTransferredBytes()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/obs/services/internal/DefaultProgressStatus;->transferredBytes:J

    return-wide v0
.end method

.method public setInstantaneousBytes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/internal/ProgressManager$BytesUnit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/obs/services/internal/DefaultProgressStatus;->instantaneousBytes:Ljava/util/List;

    return-void
.end method

.method public setInstantaneousSpeed(J)V
    .registers 3

    .line 104
    iput-wide p1, p0, Lcom/obs/services/internal/DefaultProgressStatus;->instantaneousSpeed:J

    return-void
.end method
