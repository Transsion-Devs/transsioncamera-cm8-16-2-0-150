.class public final Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$Companion;

.field private static final EXTERNAL_IMAGE_URI_PREFIX:Ljava/lang/String; = "content://media/external/images"

.field private static final TAG:Ljava/lang/String; = "TransMediaHelper"


# instance fields
.field private volatile isCanceled:Z

.field private mVideoOptimizeTask:Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->Companion:Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isCanceled$p(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->isCanceled:Z

    return p0
.end method

.method public static final synthetic access$resizeMediaDatas(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 9

    .line 20
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$setMVideoOptimizeTask$p(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->mVideoOptimizeTask:Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;

    return-void
.end method

.method private final getEndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    if-nez p1, :cond_3

    return-object p2

    .line 269
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_a

    return-object p2

    :cond_a
    const/4 p0, 0x0

    .line 273
    const-string v0, "separator"

    const/4 v1, 0x0

    if-nez p1, :cond_11

    goto :goto_1b

    :cond_11
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {p1, v2, v1, v3, p0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    :goto_1b
    if-eqz v1, :cond_51

    .line 275
    :try_start_1d
    const-string v1, "."

    if-nez p1, :cond_22

    goto :goto_3b

    :cond_22
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3b
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 276
    const-string p1, ".jpeg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 277
    const-string p0, ".jpg"
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_49} :catch_4a

    return-object p0

    :catch_4a
    move-exception v0

    move-object p0, v0

    goto :goto_4e

    :cond_4d
    return-object p0

    .line 283
    :goto_4e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_51
    return-object p2
.end method

.method private final getMaxFps()I
    .registers 1

    .line 215
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->getConfig()Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getFeatureConfig()Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->getImportFps()I

    move-result p0

    return p0
.end method

.method private final getMaxResolution()I
    .registers 1

    .line 211
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->getConfig()Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getFeatureConfig()Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->getImportResolutionRatio()I

    move-result p0

    return p0
.end method

.method private final getOutputPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 223
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "separator"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_c5

    .line 227
    sget-object p2, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {p2, v1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 229
    const-string v3, "image"

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v2, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 231
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 232
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "parse(inputPath)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$getOutputPath$neme$1$1;

    invoke-direct {v3, v0}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$getOutputPath$neme$1$1;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {p2, p1, v2, v3}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    .line 236
    iget-object p1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string p2, ".png"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->getEndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/Md5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a2

    .line 240
    :cond_4f
    invoke-virtual {p2, p1, v1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getMediaMetadataRetriever(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object p1

    const/16 p2, 0xc

    .line 243
    :try_start_55
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_66
    .catchall {:try_start_55 .. :try_end_59} :catchall_63

    .line 248
    :goto_59
    :try_start_59
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_6c

    :catch_5d
    move-exception v0

    move-object p1, v0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6c

    :catchall_63
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :catch_66
    move-exception v0

    move-object p2, v0

    .line 245
    :try_start_68
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_63

    goto :goto_59

    .line 253
    :goto_6c
    const-string p1, ".mp4"

    invoke-direct {p0, v4, p1}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->getEndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/Md5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a2

    .line 248
    :goto_7b
    :try_start_7b
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_84

    :catch_7f
    move-exception v0

    move-object p1, v0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_84
    throw p0

    .line 257
    :cond_85
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/util/Md5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    if-eqz v1, :cond_bd

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 260
    :goto_a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PathHelper;

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->getWorkspacePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :cond_bd
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_c5
    const-string p0, ""

    return-object p0
.end method

.method private final needResize(Landroid/content/Context;Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;)Z
    .registers 9

    .line 191
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->getMaxResolution()I

    move-result v0

    .line 192
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_53

    if-eq v1, v3, :cond_f

    return v2

    .line 195
    :cond_f
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/ies/cutsame/util/MediaUtilKt;->videoFramePixelCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 196
    sget-object v4, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p1

    .line 197
    const-string v4, "h265"

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getCodecInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    return v3

    .line 198
    :cond_2e
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getFps()I

    move-result p1

    const/16 v4, 0x3c

    if-lt p1, v4, :cond_3b

    const/high16 v4, 0x870000

    if-lt v1, v4, :cond_3b

    return v3

    :cond_3b
    if-le v1, v0, :cond_3e

    return v3

    .line 202
    :cond_3e
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "avi"

    invoke-static {p2, v0, v3}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4b

    return v3

    .line 203
    :cond_4b
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->getMaxFps()I

    move-result p0

    if-le p1, p0, :cond_52

    return v3

    :cond_52
    return v2

    .line 193
    :cond_53
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/ies/cutsame/util/MediaUtilKt;->imagePixelCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-le p0, v0, :cond_5e

    return v3

    :cond_5e
    return v2
.end method

.method private final resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;I[B",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    .line 75
    invoke-virtual {v4}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p1

    .line 76
    invoke-direct {p0, v8, v11}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->getOutputPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    iget-boolean v1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->isCanceled:Z

    if-eqz v1, :cond_16

    return-void

    .line 80
    :cond_16
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;

    invoke-virtual {v1, v12}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->queryFile(Ljava/lang/String;)Z

    move-result v1

    .line 81
    const-string v2, "resizeMediaDatas existCache? "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransMediaHelper"

    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_58

    .line 83
    invoke-virtual {v4, v12}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->updatePath(Ljava/lang/String;)V

    if-nez p6, :cond_33

    goto :goto_36

    .line 84
    :cond_33
    invoke-interface/range {p6 .. p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_36
    add-int/lit8 v3, p3, 0x1

    .line 86
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_50

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v1, v8

    move-object/from16 v8, p8

    .line 87
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 98
    :cond_50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v7, p7

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_58
    move-object/from16 v7, p7

    .line 103
    sget-object v13, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

    .line 109
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PathHelper;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->getWorkspacePath()Ljava/lang/String;

    move-result-object v14

    .line 112
    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;

    move-object v2, p0

    move-object/from16 v8, p1

    move/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p6

    move-object/from16 v1, p8

    move-object v10, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$resizeMediaDatas$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Lkotlin/jvm/functions/Function1;Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;Lkotlin/jvm/functions/Function0;ILjava/util/List;Landroid/content/Context;[BLkotlin/jvm/functions/Function1;)V

    const/16 v9, 0x780

    const/16 v10, 0x780

    move-object v8, v12

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move-object v7, v11

    move-object v5, v13

    move-object v11, v14

    move-object/from16 v13, p4

    move-object v14, v0

    .line 103
    invoke-virtual/range {v5 .. v14}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeMediaSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;[BLcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;)V

    return-void
.end method

.method static synthetic resizeMediaDatas$default(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 12

    and-int/lit8 p10, p9, 0x10

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p5, v0

    :cond_6
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_b

    move-object p6, v0

    .line 64
    :cond_b
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->resizeMediaDatas(Landroid/content/Context;Ljava/util/List;I[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic startResize$default(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 11

    and-int/lit8 p9, p8, 0x8

    const/4 v0, 0x0

    if-eqz p9, :cond_6

    move-object p4, v0

    :cond_6
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_b

    move-object p5, v0

    .line 41
    :cond_b
    invoke-virtual/range {p0 .. p7}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->startResize(Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final cancelTrans()V
    .registers 2

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->isCanceled:Z

    .line 183
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->mVideoOptimizeTask:Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;

    if-nez p0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->cancel()V

    return-void
.end method

.method public final getNeedToTransMediaDataList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    check-cast p2, Ljava/lang/Iterable;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    .line 37
    invoke-direct {p0, p1, v2}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->needResize(Landroid/content/Context;Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2c
    return-object v0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->isCanceled:Z

    return-void
.end method

.method public final startResize(Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;[B",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "licenseBuffer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isSuccess"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelCallback"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v1, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$startResize$1;-><init>(Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object p3, v1

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    move/from16 p4, p0

    move-object/from16 p5, p1

    move-object p0, v0

    move-object p1, v11

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
