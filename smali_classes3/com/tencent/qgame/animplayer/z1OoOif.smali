.class public final Lcom/tencent/qgame/animplayer/z1OoOif;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOfinal:Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOdo;


# instance fields
.field z1OoObreak:Z

.field public z1OoObyte:Z

.field public z1OoOcase:Z

.field public final z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

.field z1OoOchar:Z

.field public final z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

.field public final z1OoOconst:Lcom/tencent/qgame/animplayer/IAnimView;

.field z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

.field z1OoOelse:I

.field z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoOfor;

.field z1OoOgoto:Z

.field public z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

.field z1OoOint:I

.field z1OoOlong:Z

.field z1OoOnew:I

.field z1OoOthis:Ljava/lang/Runnable;

.field z1OoOtry:I

.field z1OoOvoid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOfinal:Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/IAnimView;)V
    .registers 3

    const-string v0, "animView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOconst:Lcom/tencent/qgame/animplayer/IAnimView;

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOelse:I

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOdo;

    invoke-direct {p1, p0}, Lcom/tencent/qgame/animplayer/z1OoOdo;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    invoke-direct {p1, p0}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    return-void
.end method

.method public static final synthetic z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOif;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 5

    .line 0
    const-class v0, Lcom/tencent/qgame/animplayer/z1OoOif;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOlong:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOvoid:Z

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_59

    :cond_14
    :goto_14
    iget-boolean v2, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoObreak:Z

    if-nez v2, :cond_55

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoOfor;

    if-eqz p0, :cond_55

    const-string v2, "fileContainer"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOint:Z

    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOnew:Z

    sget-object v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOgoto:Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoObyte;

    const-string v2, "anim_audio_thread"

    invoke-static {v1, v2}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoObyte;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-boolean v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_38

    iput-boolean v2, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOint:Z

    :cond_38
    iput-boolean v2, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif:Z

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v1, v1, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v1, :cond_55

    new-instance v2, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;

    invoke-direct {v2, p0, p1}, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOif;-><init>(Lcom/tencent/qgame/animplayer/z1OoOfor;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_55

    :cond_49
    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOfor;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qgame/animplayer/z1OoOif$z1OoOfor;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOthis:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOconst:Lcom/tencent/qgame/animplayer/IAnimView;

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/IAnimView;->prepareTextureView()V

    :cond_55
    :goto_55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_12

    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final z1OoOdo()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOlong:Z

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOvoid:Z

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif()V

    :cond_c
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoOfor;

    if-eqz p0, :cond_1d

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOnew:Z

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOint:Z

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo()V

    :cond_1d
    return-void
.end method

.method public final z1OoOdo(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo(I)V

    :cond_7
    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOint:I

    return-void
.end method

.method public final z1OoOif(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v0, :cond_6

    iput p1, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoObyte:I

    :cond_6
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoOfor;

    if-eqz v0, :cond_c

    iput p1, v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOfor:I

    :cond_c
    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOtry:I

    return-void
.end method

.method public final z1OoOif()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOvoid:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOcase:Z

    goto :goto_d

    :cond_c
    move p0, v0

    :goto_d
    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    return v0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method
