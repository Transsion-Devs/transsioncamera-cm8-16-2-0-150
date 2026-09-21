.class public final Lcom/cutsame/solution/player/video/MediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/player/video/MediaSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cutsame/solution/player/video/MediaSource$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:F

.field public final d:J

.field public final e:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cutsame/solution/player/video/MediaSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cutsame/solution/player/video/MediaSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cutsame/solution/player/video/MediaSource;->Companion:Lcom/cutsame/solution/player/video/MediaSource$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FJJ)V
    .registers 9

    const-string v0, "mediaSrcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cutsame/solution/player/video/MediaSource;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/cutsame/solution/player/video/MediaSource;->b:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/cutsame/solution/player/video/MediaSource;->c:F

    .line 12
    iput-wide p4, p0, Lcom/cutsame/solution/player/video/MediaSource;->d:J

    .line 15
    iput-wide p6, p0, Lcom/cutsame/solution/player/video/MediaSource;->e:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/cutsame/solution/player/video/MediaSource;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/player/video/MediaSource;

    iget-object v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/player/video/MediaSource;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/cutsame/solution/player/video/MediaSource;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/cutsame/solution/player/video/MediaSource;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-wide v3, p0, Lcom/cutsame/solution/player/video/MediaSource;->d:J

    iget-wide v5, p1, Lcom/cutsame/solution/player/video/MediaSource;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3e

    return v2

    :cond_3e
    iget-wide v3, p0, Lcom/cutsame/solution/player/video/MediaSource;->e:J

    iget-wide p0, p1, Lcom/cutsame/solution/player/video/MediaSource;->e:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_47

    return v2

    :cond_47
    return v0
.end method

.method public final getDurationMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/player/video/MediaSource;->e:J

    return-wide v0
.end method

.method public final getMediaSrcPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/video/MediaSource;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTimeMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/cutsame/solution/player/video/MediaSource;->d:J

    return-wide v0
.end method

.method public final getVolume()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/player/video/MediaSource;->c:F

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/cutsame/solution/player/video/MediaSource;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/cutsame/solution/player/video/MediaSource;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/cutsame/solution/player/video/MediaSource;->c:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/cutsame/solution/player/video/MediaSource;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isVideo()Z
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/video/MediaSource;->b:Ljava/lang/String;

    const-string v0, "video"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "MediaSource(mediaSrcPath="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cutsame/solution/player/video/MediaSource;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
