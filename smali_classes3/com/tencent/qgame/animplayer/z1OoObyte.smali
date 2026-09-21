.class public final Lcom/tencent/qgame/animplayer/z1OoObyte;
.super Ljava/lang/Object;


# instance fields
.field z1OoOdo:Landroid/os/HandlerThread;

.field z1OoOif:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/tencent/qgame/animplayer/z1OoObyte;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    iget-object v1, p1, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandlerHolder(thread="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
