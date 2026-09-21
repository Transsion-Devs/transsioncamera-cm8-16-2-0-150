.class public final Lcom/bytedance/ies/nle/mediapublic/util/MediaUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ignoreAngle(Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;)Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_17

    :cond_15
    move-object v0, p0

    goto :goto_30

    .line 608
    :cond_17
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getHeight()I

    move-result v5

    const/16 v13, 0x3f1

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v14}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->copy$default(Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;Ljava/lang/String;IIIIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    move-result-object p0

    return-object p0

    .line 606
    :goto_30
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getWidth()I

    move-result v3

    const/16 v11, 0x3f1

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v12}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->copy$default(Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;Ljava/lang/String;IIIIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final imagePixelCount(Ljava/lang/String;)I
    .registers 3

    .line 566
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 569
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 574
    :cond_14
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 575
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 576
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 577
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr p0, v0

    return p0
.end method

.method public static final videoFramePixelCount(Ljava/lang/String;)I
    .registers 4

    .line 581
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 585
    :cond_8
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 587
    :try_start_d
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x12

    .line 588
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_3a
    .catchall {:try_start_d .. :try_end_16} :catchall_35

    if-nez p0, :cond_1c

    .line 595
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return v1

    :cond_1c
    const/16 v2, 0x13

    .line 589
    :try_start_1e
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_3a
    .catchall {:try_start_1e .. :try_end_22} :catchall_35

    if-nez v2, :cond_28

    .line 595
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return v1

    .line 590
    :cond_28
    :try_start_28
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 591
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_3a
    .catchall {:try_start_28 .. :try_end_30} :catchall_35

    mul-int/2addr p0, v1

    .line 595
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return p0

    :catchall_35
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0

    :catch_3a
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return v1
.end method
