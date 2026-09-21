.class final Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/z1OoOfor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOfor;

.field final synthetic z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;


# direct methods
.method constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOfor;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOfor;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOfor;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    invoke-static {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOfor;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "Audio exception="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimPlayer.AudioPlayer"

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOfor;

    invoke-static {p0}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOfor;)V

    return-void
.end method
