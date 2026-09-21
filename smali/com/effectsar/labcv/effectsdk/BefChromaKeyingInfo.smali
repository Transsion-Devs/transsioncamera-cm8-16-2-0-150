.class public Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private color_b:B

.field private color_g:B

.field private color_r:B

.field private height:I

.field private mask:[B

.field private outputTexture:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor_b()B
    .registers 1

    .line 14
    iget-byte p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->color_b:B

    return p0
.end method

.method public getColor_g()B
    .registers 1

    .line 18
    iget-byte p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->color_g:B

    return p0
.end method

.method public getColor_r()B
    .registers 1

    .line 22
    iget-byte p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->color_r:B

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->height:I

    return p0
.end method

.method public getMask()[B
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->mask:[B

    return-object p0
.end method

.method public getOutputTexture()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->outputTexture:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->mask:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChromaKeyingInfo;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "l: %d w:%d, h:%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
