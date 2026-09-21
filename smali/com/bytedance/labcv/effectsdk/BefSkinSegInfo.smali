.class public Lcom/bytedance/labcv/effectsdk/BefSkinSegInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private height:I

.field private mask:[B

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSkinSegInfo;->height:I

    return p0
.end method

.method public getMask()[B
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefSkinSegInfo;->mask:[B

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 16
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSkinSegInfo;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/bytedance/labcv/effectsdk/BefSkinSegInfo;->mask:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefSkinSegInfo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSkinSegInfo;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "l: %d w:%d, h:%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
