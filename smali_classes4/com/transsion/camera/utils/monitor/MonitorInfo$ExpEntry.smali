.class public Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/monitor/MonitorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpEntry"
.end annotation


# instance fields
.field protected mExpRecord:J

.field private mPrevUploadRecord:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpRecord()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->mExpRecord:J

    return-wide v0
.end method

.method public getPrevUploadRecord()J
    .registers 3

    .line 128
    iget-wide v0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->mPrevUploadRecord:J

    return-wide v0
.end method

.method public setExpRecord(J)V
    .registers 3

    .line 124
    iput-wide p1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->mExpRecord:J

    return-void
.end method

.method public setPrevUploadRecord(J)V
    .registers 3

    .line 132
    iput-wide p1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->mPrevUploadRecord:J

    return-void
.end method

.method public updateBegin(J)V
    .registers 3

    return-void
.end method

.method public updateEnd(J)V
    .registers 3

    return-void
.end method

.method public updateExp(J)V
    .registers 3

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;->setExpRecord(J)V

    return-void
.end method
