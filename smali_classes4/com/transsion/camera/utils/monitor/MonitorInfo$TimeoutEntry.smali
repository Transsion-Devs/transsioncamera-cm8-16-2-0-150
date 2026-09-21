.class public Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;
.super Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/monitor/MonitorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutEntry"
.end annotation


# instance fields
.field private mBeginRecord:J

.field private mEndRecord:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpRecord()J
    .registers 8

    .line 178
    iget-wide v0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;->mBeginRecord:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_16

    iget-wide v4, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;->mEndRecord:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_f

    goto :goto_16

    :cond_f
    sub-long/2addr v4, v0

    .line 181
    invoke-virtual {p0, v4, v5}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->updateExp(J)V

    .line 182
    iget-wide v0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->mExpRecord:J

    return-wide v0

    :cond_16
    :goto_16
    return-wide v2
.end method

.method public setBeginRecord(J)V
    .registers 3

    .line 165
    iput-wide p1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;->mBeginRecord:J

    return-void
.end method

.method public setEndRecord(J)V
    .registers 3

    .line 173
    iput-wide p1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;->mEndRecord:J

    return-void
.end method

.method public updateBegin(J)V
    .registers 3

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;->setBeginRecord(J)V

    return-void
.end method

.method public updateEnd(J)V
    .registers 3

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;->setEndRecord(J)V

    return-void
.end method
