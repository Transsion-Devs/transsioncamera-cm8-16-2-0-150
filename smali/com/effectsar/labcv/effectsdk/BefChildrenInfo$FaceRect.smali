.class public Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceRect"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->left:I

    .line 40
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->right:I

    .line 41
    iput p2, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->top:I

    .line 42
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->bottom:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .registers 1

    .line 74
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->bottom:I

    return p0
.end method

.method public getLeft()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->left:I

    return p0
.end method

.method public getRight()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->right:I

    return p0
.end method

.method public getTop()I
    .registers 1

    .line 66
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->top:I

    return p0
.end method

.method public setBottom(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->bottom:I

    return-void
.end method

.method public setLeft(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->left:I

    return-void
.end method

.method public setRight(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->right:I

    return-void
.end method

.method public setTop(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->top:I

    return-void
.end method

.method public toRect()Landroid/graphics/Rect;
    .registers 5

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->left:I

    iget v2, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->top:I

    iget v3, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->right:I

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceRect{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
