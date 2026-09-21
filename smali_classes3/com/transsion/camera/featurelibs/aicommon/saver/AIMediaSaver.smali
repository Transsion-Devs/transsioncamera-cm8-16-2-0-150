.class public Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

.field private final mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIMediaSaver"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ai/IAIFeature;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->mAIFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

    .line 63
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    return-void
.end method

.method private addExifInfoToJpeg([BLandroid/location/Location;Ljava/lang/String;J)[B
    .registers 9

    .line 124
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif([B)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_35

    const p0, 0x14000

    .line 126
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 128
    const-string v0, "on"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_35

    .line 129
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p3, v0, :cond_2a

    int-to-float v0, v0

    int-to-float v1, p3

    const v2, 0x3db425ed

    :goto_26
    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_30

    :cond_2a
    int-to-float v0, v0

    int-to-float v1, p3

    const v2, 0x3dd6480f

    goto :goto_26

    :goto_30
    const/4 v1, 0x0

    .line 137
    invoke-static {p0, v1, v1, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 141
    :cond_35
    new-instance p3, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {p3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 142
    invoke-virtual {p3, p2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 143
    invoke-virtual {p3, p0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-virtual {p3, p4, p5}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateDateTime(J)V

    .line 146
    invoke-static {p1, p0, p3}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method

.method private saveJpeg(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Landroid/location/Location;[BLcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;)V
    .registers 13

    .line 150
    invoke-static {p3}, Lcom/transsion/camera/utils/ExifUtils;->updateExifForAnalytics([B)V

    .line 151
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveJpeg_SceneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SceneType"

    .line 152
    invoke-static {p3, v2}, Lcom/transsion/camera/utils/ExifUtils;->getExifStringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    const-string v0, "[TranMemoryFlow] available memory when save file"

    invoke-static {v0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v5

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    const/4 v7, 0x0

    invoke-virtual {v0, p3, v7, p2, v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 158
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;

    move-object v2, p0

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;Landroid/content/ContentValues;Ljava/lang/String;[B)V

    invoke-interface {p1, v4, v6, v7, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method


# virtual methods
.method public saveResult(Lcom/transsion/camera/app/common/ai/AIRequest;[BLcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;)V
    .registers 15

    .line 71
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "saveResult"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object v7, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v8, 0x0

    if-nez v7, :cond_17

    .line 75
    const-string v1, "saveResult storageOperator is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_c1

    .line 77
    invoke-interface {p3, v8, v8, v8}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;->onSaved(Landroid/net/Uri;Ljava/lang/String;[B)V

    return-void

    .line 84
    :cond_17
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestLatitude()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestLongitude()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 88
    :try_start_2b
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 89
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 91
    new-instance v6, Landroid/location/Location;

    const-string v0, "gps"

    invoke-direct {v6, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_3a} :catch_4b

    .line 92
    :try_start_3a
    invoke-virtual {v6, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 93
    invoke-virtual {v6, v9, v10}, Landroid/location/Location;->setLongitude(D)V

    .line 94
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getOriginalRequestTime()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Landroid/location/Location;->setTime(J)V
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_47} :catch_49

    :goto_47
    move-object v3, v6

    goto :goto_6d

    :catch_49
    move-exception v0

    goto :goto_4d

    :catch_4b
    move-exception v0

    move-object v6, v8

    .line 96
    :goto_4d
    sget-object v4, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseLocation error, latitudeStr: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", longitudeStr: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_6c
    move-object v3, v8

    .line 100
    :goto_6d
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aiForceSaveRequest()Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->mAIFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ai/IAIFeature;->saveRequest()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 101
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/RequestCacheHelper;->getRequestJpeg(Lcom/transsion/camera/app/common/ai/AIRequest;)[B

    move-result-object v2

    if-nez v2, :cond_89

    .line 103
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "saveResult getRequestJpeg failed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_a6

    .line 106
    :cond_89
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getWatermark()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    sub-long/2addr v5, v9

    move-object v1, p0

    .line 105
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->addExifInfoToJpeg([BLandroid/location/Location;Ljava/lang/String;J)[B

    move-result-object v0

    if-nez v0, :cond_a3

    .line 108
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "addExifInfoToJpeg requestJpeg failed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_a6

    .line 110
    :cond_a3
    invoke-direct {p0, v7, v3, v0, v8}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->saveJpeg(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Landroid/location/Location;[BLcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;)V

    .line 115
    :cond_a6
    :goto_a6
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getWatermark()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->addExifInfoToJpeg([BLandroid/location/Location;Ljava/lang/String;J)[B

    move-result-object v0

    if-nez v0, :cond_be

    .line 117
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "addExifInfoToJpeg responseJpeg failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_c1

    .line 119
    :cond_be
    invoke-direct {p0, v7, v3, v0, p3}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->saveJpeg(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Landroid/location/Location;[BLcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
