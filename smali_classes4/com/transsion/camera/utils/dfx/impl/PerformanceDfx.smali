.class public abstract Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;


# static fields
.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActionMap:Ljava/util/Map;

.field protected mHandler:Landroid/os/Handler;

.field private mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

.field private mJankTypeMap:Landroid/util/ArraySet;

.field private mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

.field private mLocalSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PerformanceDfx"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    .line 31
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mJankTypeMap:Landroid/util/ArraySet;

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public declared-synchronized begin(Landroid/view/View;I)V
    .registers 6

    monitor-enter p0

    .line 130
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 131
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[DFX][begin]Local device don\'t support."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 132
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_48

    .line 135
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    if-eqz v0, :cond_46

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mJankTypeMap:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_e

    if-eqz v0, :cond_22

    .line 137
    monitor-exit p0

    return-void

    .line 139
    :cond_22
    :try_start_22
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][JankMonitor]begin cujType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mJankTypeMap:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->begin(Landroid/view/View;I)Z
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_e

    .line 143
    :cond_46
    monitor-exit p0

    return-void

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_e

    throw p1
.end method

.method public declared-synchronized cancel(II)V
    .registers 4

    monitor-enter p0

    .line 235
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 236
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[DFX][cancel]Local device don\'t support."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 237
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_19

    .line 240
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    if-eqz v0, :cond_17

    .line 241
    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->cancel(II)Z
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_e

    .line 243
    :cond_17
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_e

    throw p1
.end method

.method public declared-synchronized end(I)V
    .registers 5

    monitor-enter p0

    .line 147
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 148
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[DFX][end]Local device don\'t support."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 149
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_46

    .line 152
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    if-eqz v0, :cond_44

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mJankTypeMap:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 154
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][JankMonitor]end cujType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->end(I)Z

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mJankTypeMap:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_e

    .line 159
    :cond_44
    monitor-exit p0

    return-void

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_e

    throw p1
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 41
    new-instance p1, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    .line 42
    new-instance p1, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    return-void
.end method

.method public declared-synchronized isTargetActionExists(I)Z
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_11

    .line 53
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[DFX][isTargetActionExists]Local device don\'t support."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    .line 54
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_f
    move-exception p1

    goto :goto_1d

    .line 56
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_f

    monitor-exit p0

    return p1

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_f

    throw p1
.end method

.method public declared-synchronized logAction(II)V
    .registers 6

    monitor-enter p0

    .line 164
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 165
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[DFX][logAction]Local device don\'t support."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 166
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_2f

    .line 169
    :cond_10
    :try_start_10
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][Latency]logAction action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    if-eqz v0, :cond_2d

    .line 172
    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->logAction(II)V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_e

    .line 174
    :cond_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_e

    throw p1
.end method

.method public declared-synchronized onActionCancel(I)V
    .registers 5

    monitor-enter p0

    .line 178
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 179
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[DFX][onActionCancel]Local device don\'t support."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 180
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_38

    .line 183
    :cond_10
    :try_start_10
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][Latency]onActionCancel action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    if-eqz v0, :cond_36

    .line 186
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->onActionCancel(I)V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_e

    .line 188
    :cond_36
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_e

    throw p1
.end method

.method public declared-synchronized onActionEnd(I)V
    .registers 5

    monitor-enter p0

    .line 87
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 88
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[DFX][onActionEnd]Local device don\'t support."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 89
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_46

    .line 92
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    if-eqz v0, :cond_44

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 94
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][Latency]onActionEnd action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->onActionEnd(I)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_e

    .line 99
    :cond_44
    monitor-exit p0

    return-void

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_e

    throw p1
.end method

.method public declared-synchronized onActionEnd(ILjava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 103
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 104
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[DFX][onActionEnd]Local device don\'t support."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 105
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_38

    .line 108
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_e

    if-eqz v1, :cond_24

    .line 110
    monitor-exit p0

    return-void

    .line 113
    :cond_24
    :try_start_24
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 114
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->onActionEnd(I)V

    .line 115
    iget-object p2, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_e

    .line 117
    :cond_36
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_e

    throw p1
.end method

.method public declared-synchronized onActionStart(ILjava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 70
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    if-nez v0, :cond_10

    .line 71
    sget-object p1, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[DFX][onActionStart]Local device don\'t support."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 72
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_4e

    .line 75
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_e

    if-eqz v0, :cond_1e

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][Latency]onActionStart tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    if-eqz v0, :cond_4c

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->onActionStart(ILjava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_1e .. :try_end_4c} :catchall_e

    .line 83
    :cond_4c
    monitor-exit p0

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_e

    throw p1
.end method

.method public declared-synchronized onDestroy()V
    .registers 1

    monitor-enter p0

    .line 280
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onPause()V
    .registers 5

    monitor-enter p0

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    if-eqz v0, :cond_2c

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 264
    iget-object v2, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLatencyTracker:Lcom/transsion/hubsdk/api/util/TranLatencyTracker;

    invoke-virtual {v2, v1}, Lcom/transsion/hubsdk/api/util/TranLatencyTracker;->onActionCancel(I)V

    goto :goto_f

    :catchall_25
    move-exception v0

    goto :goto_54

    .line 266
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mActionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 269
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    if-eqz v0, :cond_52

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mJankTypeMap:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 271
    iget-object v2, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mInteractionJankMonitor:Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/transsion/hubsdk/api/internal/jank/TranInteractionJankMonitor;->cancel(II)Z

    goto :goto_36

    .line 273
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mJankTypeMap:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_25

    .line 275
    :cond_52
    monitor-exit p0

    return-void

    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_25

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 1

    monitor-enter p0

    .line 258
    monitor-exit p0

    return-void
.end method

.method public varargs updateLocalSupports([Z)V
    .registers 5

    const/4 v0, 0x0

    .line 247
    aget-boolean p1, p1, v0

    const-string v1, "sys.trancare.performance.latency"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    move v0, v2

    :cond_d
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfx;->mLocalSupport:Z

    return-void
.end method
