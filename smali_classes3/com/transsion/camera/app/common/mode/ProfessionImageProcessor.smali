.class public Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "SourceFile"


# instance fields
.field private mIsoDoubled:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->mIsoDoubled:Z

    return-void
.end method

.method private updateExif([B)[B
    .registers 4

    .line 48
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/Exif;->getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 50
    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    const/4 v1, -0x1

    if-eqz p0, :cond_16

    .line 53
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAsInt(I)I

    move-result v1

    .line 55
    :cond_16
    new-instance p0, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    mul-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateIsoSpeedRatings(S)V

    .line 57
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->mIsoDoubled:Z

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->updateExif([B)[B

    move-result-object v0

    goto :goto_11

    .line 39
    :cond_d
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v0

    .line 41
    :goto_11
    new-instance v1, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V
    .registers 12

    .line 25
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->mIsoDoubled:Z

    if-eqz v0, :cond_8

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->updateExif([B)[B

    move-result-object p1

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 30
    invoke-super/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method protected updateParameters(Lcom/transsion/camera/app/common/mode/ProcesserParameters;)V
    .registers 2

    .line 62
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ProcesserParameters;->isIsoDoubled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->mIsoDoubled:Z

    return-void
.end method
