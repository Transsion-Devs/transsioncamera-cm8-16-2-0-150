.class public final Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    iput p2, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;IIILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->copy(II)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    return p0
.end method

.method public final copy(II)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;
    .registers 3

    new-instance p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;

    invoke-direct {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    iget v3, p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    iget p1, p1, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getHeight()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CutSameVideoResolution(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
