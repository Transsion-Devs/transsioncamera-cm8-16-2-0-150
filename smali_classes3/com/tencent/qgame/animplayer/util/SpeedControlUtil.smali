.class public final Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;


# instance fields
.field private final ONE_MILLION:J

.field private fixedFrameDurationUsec:J

.field private loopReset:Z

.field private prevMonoUsec:J

.field private prevPresentUsec:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->Companion:Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->loopReset:Z

    return-void
.end method


# virtual methods
.method public final preRender(J)V
    .registers 14

    iget-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    :goto_11
    iput-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    return-void

    :cond_14
    iget-boolean v4, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->loopReset:Z

    if-eqz v4, :cond_24

    iget-wide v7, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    const-wide/16 v9, 0x1e

    div-long/2addr v7, v9

    sub-long v7, p1, v7

    iput-wide v7, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->loopReset:Z

    :cond_24
    iget-wide v7, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->fixedFrameDurationUsec:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_2b

    goto :goto_2f

    :cond_2b
    iget-wide v7, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    sub-long v7, p1, v7

    :goto_2f
    cmp-long p1, v7, v2

    if-gez p1, :cond_34

    goto :goto_42

    :cond_34
    iget-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    const-wide/16 v2, 0xa

    mul-long/2addr v2, p1

    cmp-long v2, v7, v2

    if-lez v2, :cond_41

    const-wide/16 v2, 0x5

    mul-long/2addr v2, p1

    goto :goto_42

    :cond_41
    move-wide v2, v7

    :goto_42
    add-long/2addr v0, v2

    :goto_43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    div-long/2addr p1, v5

    const-wide/16 v7, 0x64

    sub-long v7, v0, v7

    cmp-long v4, p1, v7

    if-gez v4, :cond_77

    sub-long p1, v0, p1

    const-wide/32 v7, 0x7a120

    cmp-long v4, p1, v7

    if-lez v4, :cond_5a

    move-wide p1, v7

    :cond_5a
    :try_start_5a
    div-long v7, p1, v5

    rem-long/2addr p1, v5

    long-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {v7, v8, p1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_43

    :catch_64
    move-exception p1

    sget-object p2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v4, "e="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "AnimPlayer.SpeedControlUtil"

    invoke-virtual {p2, v7, v4, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :cond_77
    iget-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    iget-wide p1, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    add-long/2addr p1, v2

    goto :goto_11
.end method

.method public final reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevPresentUsec:J

    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->prevMonoUsec:J

    return-void
.end method

.method public final setFixedPlaybackRate(I)V
    .registers 6

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->ONE_MILLION:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->fixedFrameDurationUsec:J

    return-void
.end method
