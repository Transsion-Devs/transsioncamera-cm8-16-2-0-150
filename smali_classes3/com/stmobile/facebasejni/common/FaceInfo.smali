.class public Lcom/stmobile/facebasejni/common/FaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public eyeDist:F

.field public faceMorePoints:[Landroid/graphics/PointF;

.field public facePoints:[Landroid/graphics/PointF;

.field public faceRect:Landroid/graphics/Rect;

.field public id:I

.field public pitch:F

.field public roll:F

.field public score:F

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/stmobile/facebasejni/common/FaceInfo;
    .registers 6

    .line 28
    new-instance v0, Lcom/stmobile/facebasejni/common/FaceInfo;

    invoke-direct {v0}, Lcom/stmobile/facebasejni/common/FaceInfo;-><init>()V

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 30
    iget-object v2, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/PointF;

    iput-object v2, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    .line 31
    iget-object v2, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    move v2, v1

    .line 32
    :goto_1a
    iget-object v3, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    array-length v4, v3

    if-ge v2, v4, :cond_34

    .line 33
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    .line 34
    iget-object v3, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 37
    :cond_34
    iget-object v2, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceMorePoints:[Landroid/graphics/PointF;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/PointF;

    iput-object v2, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceMorePoints:[Landroid/graphics/PointF;

    .line 38
    :goto_3b
    iget-object v2, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceMorePoints:[Landroid/graphics/PointF;

    array-length v3, v2

    if-ge v1, v3, :cond_55

    .line 39
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v1

    .line 40
    iget-object v2, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceMorePoints:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceMorePoints:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 42
    :cond_55
    iget v1, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->id:I

    iput v1, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->id:I

    .line 43
    iget v1, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->score:F

    iput v1, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->score:F

    .line 44
    iget v1, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->yaw:F

    iput v1, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->yaw:F

    .line 45
    iget v1, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->pitch:F

    iput v1, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->pitch:F

    .line 46
    iget v1, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->roll:F

    iput v1, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->roll:F

    .line 47
    iget p0, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->eyeDist:F

    iput p0, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->eyeDist:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/stmobile/facebasejni/common/FaceInfo;->clone()Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/stmobile/facebasejni/common/FaceInfo;->score:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
