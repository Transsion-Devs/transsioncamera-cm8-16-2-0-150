.class public Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefPublicDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefRect"
.end annotation


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->left:I

    .line 12
    iput p2, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->top:I

    .line 13
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->right:I

    .line 14
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->bottom:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->bottom:I

    return p0
.end method

.method public getLeft()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->left:I

    return p0
.end method

.method public getRight()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->right:I

    return p0
.end method

.method public getTop()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->top:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefRect{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
