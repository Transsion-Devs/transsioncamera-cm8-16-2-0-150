.class public Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputParam"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field image_height:I

.field image_stride:I

.field image_width:I

.field keypoint_num:I

.field orientation:I

.field pixel_format:I

.field point_valid:[I

.field points2d:[F

.field target_num:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb4

    .line 83
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->points2d:[F

    const/16 v0, 0x5a

    .line 84
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->point_valid:[I

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getImage_height()I
    .registers 1

    .line 112
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_height:I

    return p0
.end method

.method public getImage_stride()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_stride:I

    return p0
.end method

.method public getImage_width()I
    .registers 1

    .line 104
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_width:I

    return p0
.end method

.method public getKeypoint_num()I
    .registers 1

    .line 152
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->keypoint_num:I

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->orientation:I

    return p0
.end method

.method public getPixel_format()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->pixel_format:I

    return p0
.end method

.method public getPoint_valid()[I
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->point_valid:[I

    return-object p0
.end method

.method public getPoints2d()[F
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->points2d:[F

    return-object p0
.end method

.method public getTarget_num()I
    .registers 1

    .line 160
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->target_num:I

    return p0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setImage_height(I)V
    .registers 2

    .line 116
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_height:I

    return-void
.end method

.method public setImage_stride(I)V
    .registers 2

    .line 124
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_stride:I

    return-void
.end method

.method public setImage_width(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_width:I

    return-void
.end method

.method public setKeypoint_num(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->keypoint_num:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 132
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->orientation:I

    return-void
.end method

.method public setPixel_format(I)V
    .registers 2

    .line 100
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->pixel_format:I

    return-void
.end method

.method public setPoint_valid([I)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->point_valid:[I

    return-void
.end method

.method public setPoints2d([F)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->points2d:[F

    return-void
.end method

.method public setTarget_num(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->target_num:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputParam{buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pixel_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->pixel_format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image_stride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->image_stride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", points2d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->points2d:[F

    .line 176
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", point_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->point_valid:[I

    .line 177
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keypoint_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->keypoint_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", target_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Skeleton3dDetect$InputParam;->target_num:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
