.class Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BorderKey"
.end annotation


# instance fields
.field public config:Landroid/graphics/Bitmap$Config;

.field public length:I

.field public vertical:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;
    .registers 2

    .line 270
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 272
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->clone()Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 261
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 262
    :cond_6
    check-cast p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;

    .line 263
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->vertical:Z

    iget-boolean v2, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->vertical:Z

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_1c

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->length:I

    iget p1, p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->length:I

    if-ne p0, p1, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->length:I

    xor-int/2addr v0, v1

    .line 256
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture$BorderKey;->vertical:Z

    if-eqz p0, :cond_e

    return v0

    :cond_e
    neg-int p0, v0

    return p0
.end method
