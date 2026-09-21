.class public final Lcom/bytedance/ies/cutsame/util/MediaUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ignoreAngle(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
    .registers 17

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_32

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_18

    goto :goto_32

    .line 339
    :cond_18
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v4

    const/16 v14, 0xff1

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->copy$default(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v0

    return-object v0

    .line 337
    :cond_32
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v4

    const/16 v14, 0xff1

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v15}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->copy$default(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final imagePixelCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 288
    :cond_d
    sget-object v0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 292
    :cond_16
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 293
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 294
    invoke-virtual {v0, p0, p1, v1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->decodeOptions(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 295
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr p0, p1

    return p0
.end method

.method public static final videoFramePixelCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5e

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5e

    .line 303
    :cond_f
    sget-object v1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v1, p0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getMediaMetadataRetriever(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v2

    .line 305
    :try_start_15
    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 306
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_28

    :catchall_23
    move-exception p0

    goto :goto_4d

    .line 308
    :cond_25
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_28
    const/16 p0, 0x12

    .line 311
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x13

    .line 314
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_38

    move p0, v0

    goto :goto_3c

    .line 316
    :cond_38
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_3c
    if-nez p1, :cond_3f

    goto :goto_43

    .line 317
    :cond_3f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_56
    .catchall {:try_start_15 .. :try_end_43} :catchall_23

    :goto_43
    mul-int/2addr p0, v0

    .line 323
    :try_start_44
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    return p0

    :catch_48
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    .line 323
    :goto_4d
    :try_start_4d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_55
    throw p0

    .line 323
    :catch_56
    :try_start_56
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5e
    :goto_5e
    return v0
.end method
