.class public final Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bpea/basics/TimeAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeAnchorBean"
.end annotation


# instance fields
.field private endTime:J

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCostTime()J
    .registers 5

    .line 17
    iget-wide v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->endTime:J

    iget-wide v2, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_c

    return-wide v2

    :cond_c
    return-wide v0
.end method

.method public final getEndTime()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->endTime:J

    return-wide v0
.end method

.method public final getStartTime()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->startTime:J

    return-wide v0
.end method

.method public final setEndTime(J)V
    .registers 3

    .line 14
    iput-wide p1, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->endTime:J

    return-void
.end method

.method public final setStartTime(J)V
    .registers 3

    .line 13
    iput-wide p1, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->startTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeAnchorBean(startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",costTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->getCostTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
