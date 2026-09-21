.class public final Lcom/cutsame/solution/compile/CompileSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cutsame/solution/compile/CompileSize;->a:I

    iput p2, p0, Lcom/cutsame/solution/compile/CompileSize;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/cutsame/solution/compile/CompileSize;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/cutsame/solution/compile/CompileSize;

    iget v1, p0, Lcom/cutsame/solution/compile/CompileSize;->a:I

    iget v3, p1, Lcom/cutsame/solution/compile/CompileSize;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget p0, p0, Lcom/cutsame/solution/compile/CompileSize;->b:I

    iget p1, p1, Lcom/cutsame/solution/compile/CompileSize;->b:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getHeight()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/CompileSize;->b:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/CompileSize;->a:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/cutsame/solution/compile/CompileSize;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/cutsame/solution/compile/CompileSize;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CompileSize(width="

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cutsame/solution/compile/CompileSize;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/cutsame/solution/compile/CompileSize;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
