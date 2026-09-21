.class public Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.03

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private hasBillionPixelSize:Z

.field private m4in1Size:Landroid/util/Size;

.field private mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mMaxSensorSize:Landroid/util/Size;

.field private mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

.field mPostViewSize:Landroid/util/Size;

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field mSupportedHDThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mSupportedPostViewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mSupportedThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailSize:Landroid/util/Size;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PictureSizeParametersConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    const/4 v1, -0x1

    .line 55
    iput v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    .line 73
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    .line 69
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 70
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private checkSupportBillionSize()Z
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    const-string v1, "key_super_definition"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    .line 442
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, "billion"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private filterRemosaicSize(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    if-eqz v0, :cond_1c

    .line 361
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 362
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    :cond_1c
    return-void
.end method

.method private filterSizeForAIRemosaic(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 367
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 369
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 370
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_3c

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_9

    .line 371
    :cond_3c
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 374
    :cond_40
    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_33

    .line 402
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_33

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 404
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    sub-double v0, p2, v0

    .line 405
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_c

    return-object p1

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_34

    .line 389
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_34

    .line 390
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_e
    if-ltz p0, :cond_34

    .line 391
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 392
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    sub-double v1, p2, v1

    .line 393
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_31

    return-object v0

    :cond_31
    add-int/lit8 p0, p0, -0x1

    goto :goto_e

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z
    .registers 3

    .line 224
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 226
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 227
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    mul-int/2addr v0, p0

    const p0, 0x5f5e100

    if-lt v0, p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return p1
.end method

.method private removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 379
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 381
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_29

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_9

    .line 382
    :cond_29
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 385
    :cond_2d
    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setGoldWaterMarkSize(Lcom/transsion/camera/adapter/CameraParameters;Landroid/util/Size;)V
    .registers 15

    .line 130
    sget-object p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGoldWaterMarkSize: size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fbae147ae147ae1L    # 0.105

    mul-double/2addr v0, v2

    double-to-int p0, v0

    .line 132
    rem-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_28

    add-int/lit8 p0, p0, 0x1

    :cond_28
    move v7, p0

    .line 136
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWMSize32Aligned:Z

    if-eqz p0, :cond_39

    .line 137
    rem-int/lit8 p0, v7, 0x20

    if-eqz p0, :cond_39

    rsub-int/lit8 p0, p0, 0x20

    add-int/2addr p0, v7

    goto :goto_3a

    :cond_39
    move p0, v7

    .line 141
    :goto_3a
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_4a

    goto :goto_4f

    :cond_4a
    const-wide v2, 0x3fb6872b020c49baL    # 0.088

    :goto_4f
    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 142
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_57

    add-int/lit8 v0, v0, 0x1

    :cond_57
    move v11, v0

    .line 146
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWMSize32Aligned:Z

    if-eqz v0, :cond_68

    .line 147
    rem-int/lit8 v0, v11, 0x20

    if-eqz v0, :cond_68

    rsub-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v11

    goto :goto_69

    :cond_68
    move v0, v11

    .line 153
    :goto_69
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int v5, v1, p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 154
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int v9, p0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v10

    filled-new-array/range {v4 .. v11}, [I

    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setGoldWaterMarkSize([I)V

    return-void
.end method

.method private setPreviewGoldWaterMarkSize(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 14

    .line 158
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 162
    :cond_7
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewGoldWaterMarkSize: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbae147ae147ae1L    # 0.105

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 164
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x1

    :cond_2f
    move v7, v0

    .line 168
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWMSize32Aligned:Z

    if-eqz v0, :cond_40

    .line 169
    rem-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_40

    rsub-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v7

    goto :goto_41

    :cond_40
    move v0, v7

    .line 173
    :goto_41
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v1, v6, :cond_51

    goto :goto_56

    :cond_51
    const-wide v2, 0x3fb6872b020c49baL    # 0.088

    :goto_56
    mul-double/2addr v4, v2

    double-to-int v1, v4

    .line 174
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5e

    add-int/lit8 v1, v1, 0x1

    :cond_5e
    move v11, v1

    .line 178
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWMSize32Aligned:Z

    if-eqz v1, :cond_6f

    .line 179
    rem-int/lit8 v1, v11, 0x20

    if-eqz v1, :cond_6f

    rsub-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v11

    goto :goto_70

    :cond_6f
    move v1, v11

    .line 185
    :goto_70
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int v5, v2, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 186
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int v9, v0, v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v10

    filled-new-array/range {v4 .. v11}, [I

    move-result-object p0

    .line 184
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewGoldWaterMarkSize([I)V

    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 429
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    if-nez v0, :cond_e

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void

    .line 432
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method private sizeToStr(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3a
    return-object p0
.end method

.method private updateSatPictureSize(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 7

    .line 89
    iget v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 90
    sget-object p1, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSatPictureSize: return, mStreamId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1f
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 94
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPhysicalId4In1Size(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz v1, :cond_e6

    .line 97
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    if-eqz p2, :cond_60

    .line 99
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_50

    const/4 v0, 0x0

    .line 100
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    goto :goto_60

    .line 101
    :cond_50
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_60

    .line 102
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    .line 105
    :cond_60
    :goto_60
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getRatioInStore()Ljava/lang/String;

    move-result-object p2

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSatPictureSize: ratioInStore = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_80

    goto :goto_e6

    .line 111
    :cond_80
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_a0

    :cond_9f
    const/4 v1, 0x0

    .line 117
    :goto_a0
    sget-object p2, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSatPictureSize: satPictureSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_e6

    .line 119
    new-instance p2, Landroid/util/Size;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {p2, v0, v2}, Landroid/util/Size;-><init>(II)V

    .line 120
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setSatPictureSize(Landroid/util/Size;)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->setGoldWaterMarkSize(Lcom/transsion/camera/adapter/CameraParameters;Landroid/util/Size;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->setPreviewGoldWaterMarkSize(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_picture_size_sat"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e6
    :goto_e6
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 343
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 12

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 239
    :cond_6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isRaw10OfflineJNISupport()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 240
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 241
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedRawPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 242
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_73

    .line 243
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v4

    .line 244
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 246
    array-length v6, v5

    if-lez v6, :cond_5e

    .line 247
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v6, v2

    .line 248
    :goto_40
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v6, v7, :cond_70

    .line 249
    aget-object v7, v5, v6

    invoke-interface {v0, v7}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedRawPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 250
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 251
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 255
    :cond_5e
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedRawPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_70
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setRawPictureSize(Ljava/util/List;)V

    .line 262
    :cond_73
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getSuperDefinitionValueInDataStore()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isSupportFullSize()Z

    move-result v3

    .line 264
    sget-object v4, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[configParameters] currentValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isFullSizeSupport:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mSatSupport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-eqz v5, :cond_b0

    .line 267
    iget v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateSatPictureSize(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 271
    :cond_b0
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v5}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 272
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isSupportSuperDefinition()Z

    move-result v6

    if-eqz v6, :cond_111

    .line 273
    const-string v6, "off"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d0

    if-nez v3, :cond_d0

    .line 275
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    if-eqz v3, :cond_e9

    .line 276
    invoke-direct {p0, v3, v5}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    goto :goto_e9

    .line 278
    :cond_d0
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->checkSupportBillionSize()Z

    move-result v3

    if-nez v3, :cond_e6

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isDocForce4_3()Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 280
    :cond_e6
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterRemosaicSize(Ljava/util/List;)V

    .line 285
    :cond_e9
    :goto_e9
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedAIRemosaic()Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 286
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeForAIRemosaic(Ljava/util/List;)V

    .line 289
    :cond_f4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentValue:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->reConfigSupportList(Ljava/util/List;)V

    .line 296
    :cond_111
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[configParameters], newValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ,mPostViewSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ,mThumbnailSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setPostViewSize(Landroid/util/Size;)V

    .line 301
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setThumbnailSize(Landroid/util/Size;)V

    if-eqz v0, :cond_1ef

    .line 303
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1c0

    .line 308
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    const-string v7, "key_camera_zoom"

    invoke-virtual {v5, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v7

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[configParameters], backSATCamera: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", zoomValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", satSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 311
    invoke-static {v4, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1bb

    .line 316
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget v8, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-lt v5, v8, :cond_1bb

    move v2, v6

    :cond_1bb
    if-eqz v7, :cond_1c0

    if-eqz v2, :cond_1c0

    goto :goto_1c4

    .line 320
    :cond_1c0
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-nez v2, :cond_1c7

    .line 321
    :goto_1c4
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->setGoldWaterMarkSize(Lcom/transsion/camera/adapter/CameraParameters;Landroid/util/Size;)V

    .line 323
    :cond_1c7
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-nez v2, :cond_1ce

    .line 324
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->setPreviewGoldWaterMarkSize(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 326
    :cond_1ce
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPictureSize(Landroid/util/Size;)V

    if-eqz v3, :cond_1ef

    .line 328
    invoke-static {v3, v0}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_1da

    move v1, v6

    .line 333
    :cond_1da
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ret:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 337
    :cond_1ef
    const-string p0, "return -1"

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public getMaxSensorSize()Landroid/util/Size;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mMaxSensorSize:Landroid/util/Size;

    return-object p0
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 7

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    .line 192
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    .line 194
    sget-object v1, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraCapabilities, 4in1SizeList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mSatSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isCameraFacingBack()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isSTBlurMode()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 199
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedSTBlurPictureSizes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 200
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedSTBlurPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STBlurPictureSizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedSTBlurPictureSizes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6a
    const/4 v1, 0x0

    .line 204
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mMaxSensorSize:Landroid/util/Size;

    const/4 v3, 0x0

    if-eqz v0, :cond_88

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_88

    .line 208
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    .line 209
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->removeSizeLargerThan(Landroid/util/Size;Ljava/util/List;)V

    goto :goto_8a

    .line 212
    :cond_88
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->m4in1Size:Landroid/util/Size;

    .line 215
    :goto_8a
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPostViewSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedPostViewSizes:Ljava/util/List;

    .line 217
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedThumbnailSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedThumbnailSizes:Ljava/util/List;

    .line 218
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHDThumbnailSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedHDThumbnailSizes:Ljava/util/List;

    .line 219
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->hasBillionPixelSize:Z

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewState(Z)V
    .registers 2

    .line 437
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    return-void
.end method

.method protected updateThumbnailSize(Ljava/lang/String;)V
    .registers 7

    .line 414
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateThumbnailSize+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4a

    .line 416
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedPostViewSizes:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    .line 419
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->hasBillionPixelSize:Z

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getSuperDefinitionValueInDataStore()Ljava/lang/String;

    move-result-object p1

    const-string v3, "off"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result p1

    if-nez p1, :cond_42

    .line 420
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedHDThumbnailSizes:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    goto :goto_4a

    .line 422
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedThumbnailSizes:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    .line 425
    :cond_4a
    :goto_4a
    const-string/jumbo p0, "updateThumbnailSize-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
