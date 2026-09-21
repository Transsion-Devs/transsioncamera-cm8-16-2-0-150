.class public final Lcom/gallery20/base/base_ui/ItemDecoration$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gallery20/base/base_ui/ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field private final count:I

.field private final isFirst:Z

.field private final isLast:Z

.field private final position:I


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    .line 13
    iput p2, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    .line 14
    iput-boolean p3, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    .line 15
    iput-boolean p4, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/gallery20/base/base_ui/ItemDecoration$Data;IIZZILjava/lang/Object;)Lcom/gallery20/base/base_ui/ItemDecoration$Data;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-boolean p4, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->copy(IIZZ)Lcom/gallery20/base/base_ui/ItemDecoration$Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    return p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    return p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    return p0
.end method

.method public final copy(IIZZ)Lcom/gallery20/base/base_ui/ItemDecoration$Data;
    .registers 5

    new-instance p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gallery20/base/base_ui/ItemDecoration$Data;-><init>(IIZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gallery20/base/base_ui/ItemDecoration$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/gallery20/base/base_ui/ItemDecoration$Data;

    iget v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    iget v3, p1, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    iget v3, p1, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    iget-boolean v3, p1, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    iget-boolean p1, p1, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    if-eq p0, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getCount()I
    .registers 1

    .line 12
    iget p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    return p0
.end method

.method public final getPosition()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isFirst()Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    return p0
.end method

.method public final isLast()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data(count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
