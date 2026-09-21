.class public abstract Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TimerRecord"


# instance fields
.field private mEnable:Z

.field private mMaxRound:I

.field private mRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowAverage:Z

.field private mShowTime:Z

.field private mStartTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    .line 25
    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    .line 32
    iput p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    .line 33
    iput-boolean p2, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowTime:Z

    .line 34
    iput-boolean p3, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowAverage:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 91
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    :cond_d
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public record(Ljava/lang/String;)V
    .registers 4

    .line 54
    iget-boolean v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    if-nez v0, :cond_5

    return-void

    .line 55
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 56
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract recordAverage(Ljava/lang/String;DI)V
.end method

.method protected abstract recordOnce(Ljava/lang/String;J)V
.end method

.method public setEnable(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    return-void
.end method

.method public setMaxRound(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    return-void
.end method

.method public setShowAverage(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowAverage:Z

    return-void
.end method

.method public setShowTime(Z)V
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowTime:Z

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 9

    .line 60
    iget-boolean v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mEnable:Z

    if-nez v0, :cond_6

    goto/16 :goto_81

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mStartTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_20

    .line 63
    const-string p0, "call record() with tag %s first"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimerRecord"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 67
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 68
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3d
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mRecord:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-boolean v3, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowTime:Z

    if-eqz v3, :cond_53

    .line 73
    invoke-virtual {p0, p1, v1, v2}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->recordOnce(Ljava/lang/String;J)V

    .line 75
    :cond_53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    if-ne v1, v2, :cond_81

    .line 76
    iget-boolean v1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mShowAverage:Z

    if-eqz v1, :cond_7e

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_66
    if-ge v4, v1, :cond_77

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v2, v5

    goto :goto_66

    .line 81
    :cond_77
    iget v1, p0, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->mMaxRound:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 82
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/bytedance/labcv/core/util/timer_record/TimerRecord;->recordAverage(Ljava/lang/String;DI)V

    .line 84
    :cond_7e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_81
    :goto_81
    return-void
.end method
