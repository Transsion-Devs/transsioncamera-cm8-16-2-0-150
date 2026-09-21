.class public final Lcom/bytedance/bpea/basics/TimeAnchor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;
    }
.end annotation


# instance fields
.field private absoluteTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

.field private final nanoTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

.field private threadTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-direct {v0}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->absoluteTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    .line 36
    new-instance v0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-direct {v0}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->nanoTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    .line 39
    new-instance v0, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-direct {v0}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->threadTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/bpea/basics/TimeAnchor;->start()V

    return-void
.end method


# virtual methods
.method public final end()V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->absoluteTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->setEndTime(J)V

    .line 53
    iget-object v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->nanoTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->setEndTime(J)V

    .line 54
    iget-object p0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->threadTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->setEndTime(J)V

    return-void
.end method

.method public final getAbsoluteTime()Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->absoluteTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    return-object p0
.end method

.method public final getNanoTime()Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->nanoTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    return-object p0
.end method

.method public final getThreadTime()Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->threadTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    return-object p0
.end method

.method public final setAbsoluteTime(Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->absoluteTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    return-void
.end method

.method public final setThreadTime(Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->threadTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    return-void
.end method

.method public final start()V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->absoluteTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->setStartTime(J)V

    .line 47
    iget-object v0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->nanoTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->setStartTime(J)V

    .line 48
    iget-object p0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->threadTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;->setStartTime(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeAnchor(absoluteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->absoluteTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->threadTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/bpea/basics/TimeAnchor;->nanoTime:Lcom/bytedance/bpea/basics/TimeAnchor$TimeAnchorBean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
