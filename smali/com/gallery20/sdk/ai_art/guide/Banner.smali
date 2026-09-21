.class public final Lcom/gallery20/sdk/ai_art/guide/Banner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final description:I

.field private final hint:I

.field private final preview:I

.field private final title:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    .line 84
    iput p2, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    .line 85
    iput p3, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    .line 86
    iput p4, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/gallery20/sdk/ai_art/guide/Banner;IIIIILjava/lang/Object;)Lcom/gallery20/sdk/ai_art/guide/Banner;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gallery20/sdk/ai_art/guide/Banner;->copy(IIII)Lcom/gallery20/sdk/ai_art/guide/Banner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    return p0
.end method

.method public final copy(IIII)Lcom/gallery20/sdk/ai_art/guide/Banner;
    .registers 5

    new-instance p0, Lcom/gallery20/sdk/ai_art/guide/Banner;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gallery20/sdk/ai_art/guide/Banner;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gallery20/sdk/ai_art/guide/Banner;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/gallery20/sdk/ai_art/guide/Banner;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    iget v3, p1, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    iget v3, p1, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    iget v3, p1, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    iget p1, p1, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    if-eq p0, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getDescription()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    return p0
.end method

.method public final getHint()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    return p0
.end method

.method public final getPreview()I
    .registers 1

    .line 86
    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    return p0
.end method

.method public final getTitle()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banner(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->title:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->description:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->hint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/gallery20/sdk/ai_art/guide/Banner;->preview:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
