.class public Lcom/ss/android/vesdk/faceinfo/VESkeleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private ID:I

.field private points:[Landroid/graphics/PointF;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->ID:I

    return p0
.end method

.method public getPoints()[Landroid/graphics/PointF;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->points:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRect()Landroid/graphics/RectF;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setID(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->ID:I

    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->points:[Landroid/graphics/PointF;

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VESkeleton{rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", points="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VESkeleton;->points:[Landroid/graphics/PointF;

    .line 77
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
