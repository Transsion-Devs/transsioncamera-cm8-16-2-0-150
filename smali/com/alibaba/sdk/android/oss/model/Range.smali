.class public Lcom/alibaba/sdk/android/oss/model/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INFINITE:J = -0x1L


# instance fields
.field private begin:J

.field private end:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/model/Range;->setBegin(J)V

    .line 28
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/sdk/android/oss/model/Range;->setEnd(J)V

    return-void
.end method


# virtual methods
.method public checkIsValid()Z
    .registers 9

    .line 48
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-ltz v4, :cond_21

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    cmp-long p0, v6, v2

    if-gez p0, :cond_10

    goto :goto_21

    :cond_10
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1f

    cmp-long p0, v6, v2

    if-ltz p0, :cond_1f

    cmp-long p0, v0, v6

    if-lez p0, :cond_1f

    return v5

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v5
.end method

.method public getBegin()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    return-wide v0
.end method

.method public getEnd()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    return-wide v0
.end method

.method public setBegin(J)V
    .registers 3

    .line 44
    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    return-void
.end method

.method public setEnd(J)V
    .registers 3

    .line 36
    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->begin:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-string v6, ""

    if-nez v5, :cond_16

    move-object v1, v6

    goto :goto_1a

    :cond_16
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/model/Range;->end:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :goto_2d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
