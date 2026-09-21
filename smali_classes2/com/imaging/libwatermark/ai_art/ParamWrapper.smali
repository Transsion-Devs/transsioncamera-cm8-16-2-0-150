.class final Lcom/imaging/libwatermark/ai_art/ParamWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final image:Landroid/graphics/Bitmap;

.field private final isLandscape:Z

.field private final params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

.field private final watermarkHeight:I

.field private final watermarkWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V
    .registers 4

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    .line 29
    iput-object p2, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_1d

    const/4 p2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    iput-boolean p2, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->isLandscape:Z

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->watermarkWidth:I

    const/high16 v0, 0x44870000    # 1080.0f

    if-eqz p2, :cond_31

    const/high16 p2, 0x42be0000    # 95.0f

    :goto_2c
    int-to-float p1, p1

    mul-float/2addr p1, p2

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_34

    :cond_31
    const/high16 p2, 0x42e20000    # 113.0f

    goto :goto_2c

    .line 33
    :goto_34
    iput p1, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->watermarkHeight:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/imaging/libwatermark/ai_art/ParamWrapper;Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;ILjava/lang/Object;)Lcom/imaging/libwatermark/ai_art/ParamWrapper;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->copy(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component2()Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    return-object p0
.end method

.method public final copy(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)Lcom/imaging/libwatermark/ai_art/ParamWrapper;
    .registers 3

    const-string p0, "image"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    invoke-direct {p0, p1, p2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;-><init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    iget-object p1, p1, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getImage()Landroid/graphics/Bitmap;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getParams()Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    return-object p0
.end method

.method public final getWatermarkHeight()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->watermarkHeight:I

    return p0
.end method

.method public final getWatermarkWidth()I
    .registers 1

    .line 32
    iget p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->watermarkWidth:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {p0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isLandscape()Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->isLandscape:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamWrapper(image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->params:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
