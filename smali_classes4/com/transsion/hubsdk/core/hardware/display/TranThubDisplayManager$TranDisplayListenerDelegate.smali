.class public final Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TranDisplayListenerDelegate"
.end annotation


# instance fields
.field public mEventsMask:J

.field public final mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Looper;J)V
    .registers 5

    .line 185
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    .line 187
    iput-wide p3, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    return-void
.end method


# virtual methods
.method public clearEvents()V
    .registers 2

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 8

    monitor-enter p0

    .line 205
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_2f

    .line 212
    :cond_c
    iget-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    .line 213
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;->onDisplayRemoved(I)V

    goto :goto_2f

    :catchall_1d
    move-exception p1

    goto :goto_31

    .line 207
    :cond_1f
    iget-wide v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    .line 208
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mListener:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;->onDisplayAdded(I)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_1d

    .line 219
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1d

    throw p1
.end method

.method public sendDualDisplayEvent(II)V
    .registers 4

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized setEventsMask(J)V
    .registers 3

    monitor-enter p0

    .line 200
    :try_start_1
    iput-wide p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranDisplayListenerDelegate;->mEventsMask:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 201
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
