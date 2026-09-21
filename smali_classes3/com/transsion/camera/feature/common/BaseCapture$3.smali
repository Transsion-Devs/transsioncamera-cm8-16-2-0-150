.class Lcom/transsion/camera/feature/common/BaseCapture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;

.field final synthetic val$data:[B

.field final synthetic val$format:I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;[BIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iput-object p2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$data:[B

    iput p3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iput p4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    iput p5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$format:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeJpeg([BIII)[B
    .registers 14

    const/4 p0, 0x0

    const/16 v0, 0x11

    if-eq v0, p4, :cond_1e

    .line 232
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_1e
    mul-int v1, p2, p3

    .line 236
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x8

    .line 238
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeJpeg width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    array-length v0, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_64

    .line 241
    new-array v0, v1, [B

    .line 242
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    goto :goto_65

    :cond_64
    move-object v4, p1

    .line 246
    :goto_65
    :try_start_65
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_85

    .line 247
    :try_start_6a
    new-instance v3, Landroid/graphics/YuvImage;

    const/4 v8, 0x0

    move v6, p2

    move v7, p3

    move v5, p4

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 249
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p3, 0x64

    invoke-virtual {v3, p2, p3, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 251
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_88

    .line 252
    :try_start_81
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    return-object p2

    :catch_85
    move-exception v0

    move-object p1, v0

    goto :goto_94

    :catchall_88
    move-exception v0

    move-object p2, v0

    .line 246
    :try_start_8a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_93

    :catchall_8e
    move-exception v0

    move-object p1, v0

    :try_start_90
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_93
    throw p2
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_94} :catch_85

    .line 253
    :goto_94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method private mirrorJpeg([B)[B
    .registers 4

    .line 259
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2c

    .line 260
    :try_start_5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 261
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 262
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    .line 265
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2c

    return-object p1

    :catchall_22
    move-exception p1

    .line 259
    :try_start_23
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p0

    :try_start_28
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 274
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "savePicture start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$data:[B

    iget v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iget v4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    iget v5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$format:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/common/BaseCapture$3;->encodeJpeg([BIII)[B

    move-result-object v2

    if-nez v2, :cond_2a

    .line 279
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "encode failed!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void

    .line 285
    :cond_2a
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->needMirrorJpeg()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 286
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/common/BaseCapture$3;->mirrorJpeg([B)[B

    move-result-object v2

    if-nez v2, :cond_47

    .line 288
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mirror failed!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void

    .line 294
    :cond_47
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object v3, v3, Lcom/transsion/camera/feature/common/BaseCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 295
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v3

    const-string v4, "key_location"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    const v3, 0x14000

    .line 297
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 298
    new-instance v4, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 299
    invoke-virtual {v4, v8}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 300
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 304
    iget-object v5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object v5, v5, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 307
    const-string v5, "1"

    const/4 v6, 0x5

    goto :goto_78

    .line 311
    :cond_75
    const-string v5, "0"

    const/4 v6, 0x6

    .line 314
    :goto_78
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 315
    sget v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "facing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {v4, v7}, Lcom/transsion/camera/adapter/CameraResults;->setOtherValues(Ljava/util/Map;)V

    .line 318
    invoke-static {v2, v3, v4}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object v6

    .line 319
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WideMode_SceneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-static {v6, v5}, Lcom/transsion/camera/utils/exif/ExifTools;->getExifByteValue([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v2}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmThumbnailOperator(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v2

    if-eqz v2, :cond_d8

    .line 322
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v2}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmThumbnailOperator(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;->updateView([B)V

    .line 326
    :cond_d8
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v2}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmStorageOperator(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v2

    if-nez v2, :cond_ef

    .line 327
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mStorageOperator is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void

    .line 331
    :cond_ef
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object v5, v2, Lcom/transsion/camera/feature/common/BaseCapture;->mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

    invoke-static {v2}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmStorageOperator(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v2

    .line 333
    invoke-interface {v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iget v10, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    .line 332
    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/feature/common/CommonModeHelper;->createContentValues([BLjava/lang/String;Landroid/location/Location;II)Landroid/content/ContentValues;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmStorageOperator(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmMediaSaverListener(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    move-result-object p0

    const/4 v4, 0x0

    invoke-interface {v3, v2, v6, v4, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 339
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePicture end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
