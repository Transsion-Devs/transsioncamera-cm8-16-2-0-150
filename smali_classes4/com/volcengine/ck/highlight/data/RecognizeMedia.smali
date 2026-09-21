.class public final Lcom/volcengine/ck/highlight/data/RecognizeMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final duration:J

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:I

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIJ)V
    .registers 9

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    .line 16
    iput p4, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    .line 18
    iput p5, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    .line 20
    iput-wide p6, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 20

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_e

    const-wide/16 v0, 0x0

    move-wide v8, v0

    :goto_7
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    goto :goto_11

    :cond_e
    move-wide/from16 v8, p6

    goto :goto_7

    .line 8
    :goto_11
    invoke-direct/range {v2 .. v9}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/data/RecognizeMedia;Ljava/lang/String;Ljava/lang/String;IIIJILjava/lang/Object;)Lcom/volcengine/ck/highlight/data/RecognizeMedia;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget p3, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget p4, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget p5, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    :cond_1e
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_24

    iget-wide p6, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    :cond_24
    move-wide p8, p6

    move p6, p4

    move p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->copy(Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    return p0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/volcengine/ck/highlight/data/RecognizeMedia;
    .registers 16

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    iget v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    iget v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    iget v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-wide v3, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    iget-wide p0, p1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_40

    return v2

    :cond_40
    return v0
.end method

.method public final getDuration()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    return-wide v0
.end method

.method public final getHeight()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizeMedia(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
