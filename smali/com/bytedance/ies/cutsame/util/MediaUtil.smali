.class public final Lcom/bytedance/ies/cutsame/util/MediaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_INFO_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x10e

.field private static final DEGREE_90:I = 0x5a

.field public static final EXPECT_HEIGHT_VALUE:I = 0x780

.field public static final EXPECT_WIDTH_VALUE:I = 0x780

.field private static final HEIC_HEAD:[B

.field private static final IMAGE_BMP_HEAD:[B

.field private static final IMAGE_GIF87A_HEAD:[B

.field private static final IMAGE_GIF89A_HEAD:[B

.field private static final IMAGE_HEADERS:[[B

.field private static final IMAGE_JPEG_HEAD:[B

.field private static final IMAGE_PNG_HEAD:[B

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

.field private static final REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final RIFF_HEAD:[B

.field private static final TAG:Ljava/lang/String; = "ExifUtils"

.field private static final WEBP_HEAD:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/MediaUtil;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    .line 20
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    .line 21
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->AUDIO_INFO_CACHE:Landroid/util/LruCache;

    const/4 v0, 0x4

    .line 31
    new-array v1, v0, [B

    fill-array-data v1, :array_5c

    sput-object v1, Lcom/bytedance/ies/cutsame/util/MediaUtil;->RIFF_HEAD:[B

    .line 32
    new-array v1, v0, [B

    fill-array-data v1, :array_62

    sput-object v1, Lcom/bytedance/ies/cutsame/util/MediaUtil;->WEBP_HEAD:[B

    .line 33
    new-array v0, v0, [B

    fill-array-data v0, :array_68

    sput-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->HEIC_HEAD:[B

    const/4 v0, 0x2

    .line 35
    new-array v1, v0, [B

    fill-array-data v1, :array_6e

    sput-object v1, Lcom/bytedance/ies/cutsame/util/MediaUtil;->IMAGE_JPEG_HEAD:[B

    const/16 v2, 0x8

    .line 44
    new-array v2, v2, [B

    fill-array-data v2, :array_74

    .line 36
    sput-object v2, Lcom/bytedance/ies/cutsame/util/MediaUtil;->IMAGE_PNG_HEAD:[B

    const/4 v3, 0x6

    .line 47
    new-array v4, v3, [B

    fill-array-data v4, :array_7c

    sput-object v4, Lcom/bytedance/ies/cutsame/util/MediaUtil;->IMAGE_GIF87A_HEAD:[B

    .line 50
    new-array v3, v3, [B

    fill-array-data v3, :array_84

    sput-object v3, Lcom/bytedance/ies/cutsame/util/MediaUtil;->IMAGE_GIF89A_HEAD:[B

    .line 53
    new-array v0, v0, [B

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->IMAGE_BMP_HEAD:[B

    .line 60
    filled-new-array {v1, v2, v4, v3, v0}, [[B

    move-result-object v0

    .line 55
    sput-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->IMAGE_HEADERS:[[B

    return-void

    nop

    :array_5c
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_62
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_68
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_6e
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_74
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7c
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    nop

    :array_84
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    nop

    :array_8c
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAUDIO_INFO_CACHE$p()Landroid/util/LruCache;
    .registers 1

    .line 17
    sget-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->AUDIO_INFO_CACHE:Landroid/util/LruCache;

    return-object v0
.end method


# virtual methods
.method public final getAudioMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;
    .registers 3

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    new-instance p0, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/ies/cutsame/util/MediaUtil$getAudioMetaDataInfo$getAudioInfo$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 268
    sget-object p1, Lcom/bytedance/ies/cutsame/util/MediaUtil;->AUDIO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {p1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    if-nez p1, :cond_1b

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/util/AudioMetaDataInfo;

    return-object p0

    :cond_1b
    return-object p1
.end method

.method public final getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const-string p0, "filepath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    goto :goto_15

    .line 69
    :cond_d
    sget-object p0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_15
    return v0

    .line 73
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getExifInterface(Landroid/content/Context;Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_1e

    goto :goto_24

    .line 76
    :cond_1e
    const-string p2, "Orientation"

    invoke-virtual {p0, p2, p1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    :goto_24
    const/4 p0, 0x3

    if-eq p1, p0, :cond_35

    const/4 p0, 0x6

    if-eq p1, p0, :cond_32

    const/16 p0, 0x8

    if-eq p1, p0, :cond_2f

    return v0

    :cond_2f
    const/16 p0, 0x10e

    return p0

    :cond_32
    const/16 p0, 0x5a

    return p0

    :cond_35
    const/16 p0, 0xb4

    return p0
.end method

.method public final declared-synchronized getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    monitor-enter p0

    :try_start_5
    const-string v2, "path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v2, Lcom/bytedance/ies/cutsame/util/MediaUtil;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    if-nez v2, :cond_159

    .line 139
    invoke-virtual/range {p0 .. p2}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->isImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 140
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 141
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    sget-object v3, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v3, v0, v1, v2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->decodeOptions(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual/range {p0 .. p2}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 145
    new-instance v0, Lcom/bytedance/ies/cutsame/util/Size;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v3, v2}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    .line 147
    new-instance v2, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-object v3, v2

    .line 149
    iget v2, v0, Lcom/bytedance/ies/cutsame/util/Size;->width:I

    .line 150
    iget v0, v0, Lcom/bytedance/ies/cutsame/util/Size;->height:I

    .line 153
    const-string v12, "image"

    const/16 v13, 0x7e0

    const/4 v14, 0x0

    const v5, 0xea60

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v17, v3

    move v3, v0

    move-object/from16 v0, v17

    .line 147
    invoke-direct/range {v0 .. v14}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p2

    :goto_53
    move-object v2, v0

    goto/16 :goto_14a

    :catchall_56
    move-exception v0

    goto/16 :goto_15b

    .line 156
    :cond_59
    invoke-static/range {p2 .. p2}, Lcom/ss/android/vesdk/VEUtils;->getVideoFileInfo(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 157
    iget v2, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->width:I

    if-lez v2, :cond_91

    iget v2, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->height:I

    if-lez v2, :cond_91

    iget v2, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->maxDuration:I

    if-lez v2, :cond_91

    .line 159
    new-instance v0, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    .line 161
    iget v2, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->width:I

    .line 162
    iget v3, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->height:I

    .line 163
    iget v4, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->rotation:I

    .line 164
    iget v5, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->maxDuration:I

    .line 165
    iget v8, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->bitrate:I

    .line 166
    iget v9, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->fps:I

    .line 167
    iget v10, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->codec:I

    .line 168
    iget v11, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->duration:I

    .line 169
    invoke-static {v10}, Lcom/ss/android/vesdk/VEUtils;->getVideoEncodeTypeByID(I)Ljava/lang/String;

    move-result-object v12

    const-string v1, "getVideoEncodeTypeByID(veInfo.codec)"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x60

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p2

    .line 159
    invoke-direct/range {v0 .. v14}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_53

    :cond_91
    move-object/from16 v1, p2

    .line 172
    sget-object v2, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getMediaMetadataRetriever(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v2
    :try_end_99
    .catchall {:try_start_5 .. :try_end_99} :catchall_56

    const/16 v0, 0x12

    .line 174
    :try_start_9b
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_a4

    move v0, v3

    goto :goto_a8

    .line 176
    :cond_a4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_a8
    const/16 v4, 0x13

    .line 177
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b2

    move v4, v3

    goto :goto_b6

    .line 179
    :cond_b2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_b6
    const/16 v5, 0x18

    .line 180
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c0

    move v5, v3

    goto :goto_c4

    .line 182
    :cond_c0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_c4
    const/16 v6, 0x9

    .line 183
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_ce

    move v6, v3

    goto :goto_d2

    .line 185
    :cond_ce
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_d2
    const/16 v7, 0x14

    .line 186
    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_dc

    move v9, v3

    goto :goto_e1

    .line 188
    :cond_dc
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v9, v7

    :goto_e1
    const/16 v7, 0x19

    .line 189
    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_eb

    :goto_e9
    move v10, v3

    goto :goto_f0

    .line 191
    :cond_eb
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_e9

    :goto_f0
    const/16 v3, 0xc

    .line 192
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_f6} :catch_101
    .catchall {:try_start_9b .. :try_end_f6} :catchall_124

    if-nez v3, :cond_fa

    .line 194
    :try_start_f8
    const-string v3, "unknown"
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fa} :catch_101
    .catchall {:try_start_f8 .. :try_end_fa} :catchall_fc

    :cond_fa
    move-object v13, v3

    goto :goto_104

    :catchall_fc
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    goto :goto_150

    :catch_101
    move-object/from16 v16, v2

    goto :goto_128

    .line 196
    :goto_104
    :try_start_104
    new-instance v1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_106} :catch_101
    .catchall {:try_start_104 .. :try_end_106} :catchall_124

    const/16 v14, 0x660

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v3, v0

    move-object/from16 v16, v2

    move-object/from16 v2, p2

    :try_start_112
    invoke-direct/range {v1 .. v15}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_128
    .catchall {:try_start_112 .. :try_end_115} :catchall_121

    .line 216
    :try_start_115
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_119
    .catchall {:try_start_115 .. :try_end_118} :catchall_56

    goto :goto_11d

    :catch_119
    move-exception v0

    .line 218
    :try_start_11a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_56

    :goto_11d
    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_14a

    :catchall_121
    move-exception v0

    :goto_122
    move-object v1, v0

    goto :goto_150

    :catchall_124
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_122

    .line 207
    :catch_128
    :goto_128
    :try_start_128
    new-instance v1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    const/16 v14, 0xfe0

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v15}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_13d
    .catchall {:try_start_128 .. :try_end_13d} :catchall_121

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    .line 216
    :try_start_142
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_145} :catch_146
    .catchall {:try_start_142 .. :try_end_145} :catchall_56

    goto :goto_14a

    :catch_146
    move-exception v0

    .line 218
    :try_start_147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    :goto_14a
    sget-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14f
    .catchall {:try_start_147 .. :try_end_14f} :catchall_56

    goto :goto_159

    .line 216
    :goto_150
    :try_start_150
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_153} :catch_154
    .catchall {:try_start_150 .. :try_end_153} :catchall_56

    goto :goto_158

    :catch_154
    move-exception v0

    .line 218
    :try_start_155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_158
    throw v1
    :try_end_159
    .catchall {:try_start_155 .. :try_end_159} :catchall_56

    .line 225
    :cond_159
    :goto_159
    monitor-exit p0

    return-object v2

    :goto_15b
    :try_start_15b
    monitor-exit p0
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_56

    throw v0
.end method

.method public final getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/Size;
    .registers 5

    const-string v0, "videoPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result p1

    .line 274
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result p2

    .line 275
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_29

    .line 276
    :cond_21
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result p1

    .line 277
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result p2

    .line 279
    :cond_29
    new-instance p0, Lcom/bytedance/ies/cutsame/util/Size;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object p0
.end method

.method public final isImage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 14

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object p0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/16 v0, 0xc

    .line 91
    :try_start_11
    new-array v2, v0, [B

    .line 92
    invoke-virtual {p0, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    .line 93
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "parse(path)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$1;

    invoke-direct {v5, v2}, Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$1;-><init>([B)V

    invoke-virtual {p0, p1, v3, v5}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    goto :goto_37

    .line 101
    :cond_2c
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_bb

    .line 102
    :try_start_31
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_b2

    .line 101
    :try_start_34
    invoke-static {p0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 106
    :goto_37
    sget-object p0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->RIFF_HEAD:[B

    const/4 p1, 0x4

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    const/16 p1, 0x8

    const/4 v3, 0x1

    if-eqz p0, :cond_5c

    .line 107
    sget-object p0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->WEBP_HEAD:[B

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v5

    invoke-static {p0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_5c

    return v3

    .line 112
    :cond_5c
    sget-object p0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->IMAGE_HEADERS:[[B

    array-length v5, p0

    move v6, v1

    :cond_60
    if-ge v6, v5, :cond_76

    aget-object v7, p0, v6

    add-int/lit8 v6, v6, 0x1

    .line 113
    array-length v8, v7

    invoke-static {v1, v8}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v8

    invoke-static {v2, v8}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_60

    return v3

    .line 118
    :cond_76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v5, "getDefault()"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ".HEIC"

    const/4 v5, 0x2

    invoke-static {p0, p2, v1, v5, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b1

    .line 119
    sget-object p0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->HEIC_HEAD:[B

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_a2

    goto :goto_b1

    .line 124
    :cond_a2
    const-string v3, " "

    sget-object v8, Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$headerStr$1;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil$isImage$headerStr$1;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_b0} :catch_bb

    goto :goto_bb

    :cond_b1
    :goto_b1
    return v3

    :catchall_b2
    move-exception v0

    move-object p1, v0

    .line 101
    :try_start_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v0

    move-object p2, v0

    :try_start_b7
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bb} :catch_bb

    :catch_bb
    :goto_bb
    return v1
.end method

.method public final declared-synchronized removeRealVideoCache(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_4

    goto :goto_c

    .line 231
    :cond_4
    :try_start_4
    sget-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 233
    :goto_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method
