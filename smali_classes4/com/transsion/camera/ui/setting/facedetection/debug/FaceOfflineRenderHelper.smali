.class public abstract Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace; = null

.field public static sOrientation:I = -0x1

.field public static sPreviewRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static render(Landroid/content/Context;[B)[B
    .registers 15

    .line 24
    const-string v0, "start image process"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 26
    sget-object v0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz v0, :cond_16

    .line 27
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 29
    :goto_17
    sget v2, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sOrientation:I

    .line 30
    new-instance v3, Landroid/graphics/Rect;

    sget-object v4, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 31
    array-length v4, p1

    invoke-static {p1, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 32
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    if-ltz v2, :cond_33

    .line 34
    sget p1, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sOrientation:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v10, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 36
    :cond_33
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 39
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 41
    new-instance p1, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;-><init>(Landroid/content/Context;)V

    .line 42
    sget p0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sOrientation:I

    invoke-virtual {p1, v1, p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceRenderHelper;->draw(Landroid/graphics/Canvas;I[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    if-ltz v2, :cond_72

    .line 44
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    int-to-float p0, v2

    .line 45
    invoke-virtual {v10, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 47
    :cond_72
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object v11, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 48
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 50
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
