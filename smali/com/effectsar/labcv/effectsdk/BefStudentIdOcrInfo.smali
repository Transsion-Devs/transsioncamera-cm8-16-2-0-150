.class public Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private height:I

.field private length:I

.field private result:[B

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->length:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->height:I

    return p0
.end method

.method public getLength()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->length:I

    return p0
.end method

.method public getResult()[B
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->result:[B

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->width:I

    return p0
.end method

.method public getX()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->x:I

    return p0
.end method

.method public getY()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->y:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefStudentIdOcrInfo{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;->result:[B

    .line 28
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
