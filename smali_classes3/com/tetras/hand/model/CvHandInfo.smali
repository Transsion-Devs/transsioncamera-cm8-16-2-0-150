.class public Lcom/tetras/hand/model/CvHandInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fingerPoint:Landroid/graphics/Point;

.field public handRect:Landroid/graphics/Rect;

.field public handType:I

.field public id:I

.field public score:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tetras/hand/model/CvHandInfo;->handRect:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/tetras/hand/model/CvHandInfo;->fingerPoint:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public clone()Lcom/tetras/hand/model/CvHandInfo;
    .registers 4

    .line 27
    new-instance v0, Lcom/tetras/hand/model/CvHandInfo;

    invoke-direct {v0}, Lcom/tetras/hand/model/CvHandInfo;-><init>()V

    .line 28
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/tetras/hand/model/CvHandInfo;->handRect:Landroid/graphics/Rect;

    .line 29
    iget-object v2, p0, Lcom/tetras/hand/model/CvHandInfo;->handRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 30
    iget v1, p0, Lcom/tetras/hand/model/CvHandInfo;->id:I

    iput v1, v0, Lcom/tetras/hand/model/CvHandInfo;->id:I

    .line 31
    iget v1, p0, Lcom/tetras/hand/model/CvHandInfo;->handType:I

    iput v1, v0, Lcom/tetras/hand/model/CvHandInfo;->handType:I

    .line 32
    iget p0, p0, Lcom/tetras/hand/model/CvHandInfo;->score:F

    iput p0, v0, Lcom/tetras/hand/model/CvHandInfo;->score:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 6
    invoke-virtual {p0}, Lcom/tetras/hand/model/CvHandInfo;->clone()Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CvHandInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tetras/hand/model/CvHandInfo;->handRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tetras/hand/model/CvHandInfo;->handType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tetras/hand/model/CvHandInfo;->score:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
