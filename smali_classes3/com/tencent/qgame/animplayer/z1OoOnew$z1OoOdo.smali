.class public final Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/z1OoOnew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z1OoOdo"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;-><init>()V

    return-void
.end method

.method public static z1OoOdo(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .registers 1

    .line 0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoObyte;Ljava/lang/String;)Z
    .registers 4

    .line 0
    const-string v0, "handlerHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    if-eqz v0, :cond_16

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_16
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;
    :try_end_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_2b} :catch_2d

    :cond_2b
    const/4 p0, 0x1

    return p0

    :catch_2d
    move-exception p0

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimPlayer.Decoder"

    const-string v1, "createThread OOM"

    invoke-virtual {p1, v0, v1, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
