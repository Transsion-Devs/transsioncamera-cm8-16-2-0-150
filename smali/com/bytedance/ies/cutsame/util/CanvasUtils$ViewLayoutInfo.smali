.class public final Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/util/CanvasUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewLayoutInfo"
.end annotation


# instance fields
.field private final height:I

.field private final marginLeft:I

.field private final marginTop:I

.field private final width:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    .line 123
    iput p2, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    .line 124
    iput p3, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    .line 125
    iput p4, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;IIIIILjava/lang/Object;)Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->copy(IIII)Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    return p0
.end method

.method public final copy(IIII)Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;
    .registers 5

    new-instance p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    iget p1, p1, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    if-eq p0, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getHeight()I
    .registers 1

    .line 125
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    return p0
.end method

.method public final getMarginLeft()I
    .registers 1

    .line 122
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    return p0
.end method

.method public final getMarginTop()I
    .registers 1

    .line 123
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 124
    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewLayoutInfo(marginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->marginTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/ies/cutsame/util/CanvasUtils$ViewLayoutInfo;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
