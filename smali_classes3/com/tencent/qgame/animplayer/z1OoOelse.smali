.class public final Lcom/tencent/qgame/animplayer/z1OoOelse;
.super Ljava/lang/Object;


# instance fields
.field public final z1OoOdo:I

.field public final z1OoOfor:I

.field public final z1OoOif:I

.field public final z1OoOint:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    iput p2, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    iput p3, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    iput p4, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_23

    instance-of v0, p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    iget v1, p1, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    iget v1, p1, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    iget v1, p1, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    if-ne v0, v1, :cond_21

    iget p0, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    iget p1, p1, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    if-ne p0, p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointRect(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOdo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOif:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
