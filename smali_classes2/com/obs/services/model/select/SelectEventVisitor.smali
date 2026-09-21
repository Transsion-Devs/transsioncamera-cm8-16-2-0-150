.class public Lcom/obs/services/model/select/SelectEventVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitContinuationEvent()V
    .registers 1

    return-void
.end method

.method public visitEndEvent()V
    .registers 1

    return-void
.end method

.method public visitProgressEvent(JJJ)V
    .registers 7

    return-void
.end method

.method public visitRecordsEvent(Ljava/nio/ByteBuffer;)V
    .registers 2

    return-void
.end method

.method public visitStatsEvent(JJJ)V
    .registers 7

    return-void
.end method
