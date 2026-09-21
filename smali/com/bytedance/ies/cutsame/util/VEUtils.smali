.class public final Lcom/bytedance/ies/cutsame/util/VEUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/VEUtils;

.field private static final TAG:Ljava/lang/String; = "VEUtils"

.field private static final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final waveManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$M_YwLeILAkcC5n-wfCLWvXFJalE(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/VEUtils;->getVideoFrames$lambda-3(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_5sm3RoIoax4gMFGCMjhHPne9WU(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/VEUtils;->getVideoFrames$lambda-2(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bLfwQxy2aIB8_ZJ1cfnuuse9Mx8(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/VEUtils;->getVideoFrames$lambda-4(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/VEUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/VEUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/VEUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/VEUtils;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/VEUtils;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    sget-object v0, Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;->INSTANCE:Lcom/bytedance/ies/cutsame/util/VEUtils$waveManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/util/VEUtils;->waveManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decodeBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    .line 289
    const-string p0, "decodeBitmap isUri "

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEUtils"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object p0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {p0, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isUri(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 291
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_27

    return-object p1

    .line 294
    :cond_27
    invoke-static {p0, p1, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 296
    :cond_2c
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final getVideoFrames$lambda-2(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z
    .registers 6

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final getVideoFrames$lambda-3(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z
    .registers 6

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final getVideoFrames$lambda-4(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z
    .registers 6

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getWaveManager()Lcom/ss/android/vesdk/VERTAudioWaveformMgr;
    .registers 2

    .line 51
    sget-object p0, Lcom/bytedance/ies/cutsame/util/VEUtils;->waveManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-waveManager>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;

    return-object p0
.end method

.method private final isCanImport(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 87
    invoke-static {p1, p0, v0}, Lcom/ss/android/vesdk/VEUtils;->isCanTransCode(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_9

    return v0

    :cond_9
    return p0
.end method

.method public static synthetic isCanImport$default(Lcom/bytedance/ies/cutsame/util/VEUtils;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 39
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/VEUtils;->isCanImport(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateAveCurveSpeed(Ljava/lang/String;)F
    .registers 11

    .line 235
    const-string p0, "calculateAveCurveSpeed: "

    const-string v0, "VEUtils"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 237
    const-string p0, "curveParamJson is empty"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x3e680000    # -19.0f

    return p0

    .line 241
    :cond_15
    :try_start_15
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    const-string p1, "speed_points"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 244
    new-array v1, p1, [F

    .line 245
    new-array v2, p1, [F

    if-lez p1, :cond_48

    const/4 v3, 0x0

    :goto_2b
    add-int/lit8 v4, v3, 0x1

    .line 247
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 248
    const-string v6, "x"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 249
    const-string v7, "y"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v5, v7

    .line 250
    aput v6, v1, v3

    .line 251
    aput v5, v2, v3

    if-lt v4, p1, :cond_46

    goto :goto_48

    :cond_46
    move v3, v4

    goto :goto_2b

    .line 254
    :cond_48
    :goto_48
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VECurveSpeedUtils;->transferTrimPointXtoSeqPointX([F[F)[F

    move-result-object p0

    .line 255
    new-instance p1, Lcom/ss/android/vesdk/VECurveSpeedUtils;

    invoke-direct {p1, p0, v2}, Lcom/ss/android/vesdk/VECurveSpeedUtils;-><init>([F[F)V

    .line 256
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECurveSpeedUtils;->getAveCurveSpeed()D

    move-result-wide p0

    .line 257
    const-string v1, "curve speed"

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_63} :catch_64

    return p0

    :catch_64
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getAudioFileInfo(Ljava/lang/String;[I)I
    .registers 3

    const-string p0, "audioFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEUtils;->getAudioFileInfo(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public final getFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string p0, "inFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menu"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outFiles"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {p1, p2, p3}, Lcom/ss/android/vesdk/VEUtils;->getFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public final getFileBestStreamAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "inFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outFileName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEUtils;->getFileBestStreamAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVideoEncodeTypeByID(I)Ljava/lang/String;
    .registers 2

    .line 103
    invoke-static {p1}, Lcom/ss/android/vesdk/VEUtils;->getVideoEncodeTypeByID(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getVideoEncodeTypeByID(codecId)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getVideoFileInfo(Ljava/lang/String;[I)I
    .registers 3

    const-string p0, "strInVideo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEUtils;->getVideoFileInfo(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public final getVideoFrames(Ljava/lang/String;[IIIZLkotlin/jvm/functions/Function4;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[IIIZ",
            "Lkotlin/jvm/functions/Function4;",
            ")I"
        }
    .end annotation

    const-string p0, "strMediaFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ptsMs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "frameAvailable"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p6

    .line 127
    new-instance p6, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0}, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function4;)V

    invoke-static/range {p1 .. p6}, Lcom/ss/android/vesdk/VEUtils;->getVideoFrames2(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I

    move-result p0

    return p0
.end method

.method public final getVideoFrames(Ljava/lang/String;[IIIZZIZLkotlin/jvm/functions/Function4;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[IIIZZIZ",
            "Lkotlin/jvm/functions/Function4;",
            ")I"
        }
    .end annotation

    const-string p0, "strMediaFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ptsMs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "frameAvailable"

    invoke-static {p9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p9

    .line 167
    new-instance p9, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda1;

    invoke-direct {p9, p0}, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function4;)V

    .line 158
    invoke-static/range {p1 .. p9}, Lcom/ss/android/vesdk/VEUtils;->getVideoFrames(Ljava/lang/String;[IIIZZIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I

    move-result p0

    return p0
.end method

.method public final getVideoFrames(Ljava/lang/String;[ILkotlin/jvm/functions/Function4;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Lkotlin/jvm/functions/Function4;",
            ")I"
        }
    .end annotation

    const-string p0, "strMediaFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ptsMs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "frameAvailable"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v5, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda2;

    invoke-direct {v5, p3}, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function4;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/VEUtils;->getVideoFrames(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I

    move-result p0

    return p0
.end method

.method public final getWaveArray(Ljava/lang/String;I)[F
    .registers 4

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget p0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->MultiChannelMean:I

    sget v0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->SampleMax:I

    or-int/2addr p0, v0

    .line 189
    invoke-static {p1, p0, p2}, Lcom/ss/android/vesdk/VEUtils;->getMusicWaveData(Ljava/lang/String;II)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    goto :goto_16

    .line 193
    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEMusicWaveBean;->getWaveBean()[F

    move-result-object p0

    :goto_16
    if-nez p0, :cond_1b

    const/4 p0, 0x0

    .line 194
    new-array p0, p0, [F

    :cond_1b
    return-object p0
.end method

.method public final getWaveData([SI)[F
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/util/VEUtils;->getWaveManager()Lcom/ss/android/vesdk/VERTAudioWaveformMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->process([SII)I

    move-result p1

    .line 63
    new-array p2, p1, [F

    .line 64
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/util/VEUtils;->getWaveManager()Lcom/ss/android/vesdk/VERTAudioWaveformMgr;

    move-result-object p0

    invoke-virtual {p0, p2, v1, p1}, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->getRemainedPoints([FII)I

    return-object p2
.end method

.method public final isCanImport(Ljava/lang/String;Z)Z
    .registers 7

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 43
    :cond_d
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    .line 44
    :cond_16
    sget-object v2, Lcom/bytedance/ies/cutsame/util/VEUtils;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_3b

    if-nez p2, :cond_28

    .line 45
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/util/VEUtils;->isCanImport(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_32

    :cond_28
    if-eqz p2, :cond_33

    sget-object p0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->isImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    :cond_32
    const/4 v1, 0x1

    .line 46
    :cond_33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 44
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSupportGLES3(Landroid/content/Context;)Z
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-string p0, "activity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/app/ActivityManager;

    if-eqz p1, :cond_12

    check-cast p0, Landroid/app/ActivityManager;

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_19

    :goto_17
    move p0, v0

    goto :goto_2a

    .line 79
    :cond_19
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    if-nez p0, :cond_21

    const/4 p0, -0x1

    goto :goto_26

    :cond_21
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x30000

    sub-int/2addr p0, v1

    :goto_26
    if-ltz p0, :cond_29

    goto :goto_17

    :cond_29
    move p0, p1

    :goto_2a
    if-eqz p0, :cond_33

    .line 81
    invoke-static {}, Lcom/ss/android/vesdk/VEUtils;->isSupportGLES3()Z

    move-result v1

    if-eqz v1, :cond_33

    move p1, v0

    .line 82
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportGLES3 context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", final: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEUtils"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public final muxVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const-string p0, "videoPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "audioPath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "savePath"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p1, p2, p3}, Lcom/ss/android/vesdk/VEUtils;->mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final startGetWaveData()V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/util/VEUtils;->getWaveManager()Lcom/ss/android/vesdk/VERTAudioWaveformMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;->reset()I

    return-void
.end method

.method public final transCodeAudio(Ljava/lang/String;Ljava/lang/String;III)I
    .registers 6

    const-string p0, "inMediaFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outMediaFile"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ss/android/vesdk/VEUtils;->transCodeAudio(Ljava/lang/String;Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public final transGif2Png(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 266
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_71

    .line 267
    :cond_9
    const-string v1, "transGif2Png "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEUtils"

    invoke-static {v2, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_71

    .line 268
    sget-object v1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isGif(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_71

    .line 272
    :cond_25
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 275
    invoke-direct {p0, v0, p1, v3}, Lcom/bytedance/ies/cutsame/util/VEUtils;->decodeBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_52

    goto :goto_69

    .line 276
    :cond_52
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 277
    :try_start_57
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_6a

    const/4 p0, 0x0

    .line 276
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 279
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_69

    return-object v2

    :cond_69
    :goto_69
    return-object p1

    :catchall_6a
    move-exception p0

    .line 276
    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_71
    :goto_71
    return-object p1
.end method
