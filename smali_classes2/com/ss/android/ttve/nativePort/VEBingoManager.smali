.class public Lcom/ss/android/ttve/nativePort/VEBingoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;,
        Lcom/ss/android/ttve/nativePort/VEBingoManager$BingoModelType;,
        Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileTaskListener;,
        Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleFileFrameAvailableListener;,
        Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;,
        Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;,
        Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;
    }
.end annotation


# static fields
.field public static Bingo_TransBlack:I = 0x0

.field public static Bingo_TransDissolve:I = 0x0

.field public static Bingo_TransNull:I = 0x0

.field public static Bingo_TransWhite:I = 0x0

.field public static Bingo_TransZoomIn:I = 0x0

.field public static Bingo_TransZoomOut:I = 0x0

.field private static final CLIP_IMAGE:I = 0x2

.field private static final CLIP_VIDEO:I = 0x1

.field private static final FRAME_MAX_SIDE:I = 0x140

.field private static final MSG_NEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VEBingoManager"

.field private static final VIDEO_THREAD_NUM:I = 0x3


# instance fields
.field private imageHandler:Landroid/os/Handler;

.field private imageHandlerThread:Landroid/os/HandlerThread;

.field private volatile mNative:J

.field private workThreadHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private workThreadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    const/4 v0, 0x0

    .line 48
    sput v0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->Bingo_TransNull:I

    const/4 v0, 0x1

    .line 49
    sput v0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->Bingo_TransDissolve:I

    const/4 v0, 0x2

    .line 50
    sput v0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->Bingo_TransBlack:I

    const/4 v0, 0x3

    .line 51
    sput v0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->Bingo_TransWhite:I

    const/4 v0, 0x4

    .line 52
    sput v0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->Bingo_TransZoomOut:I

    const/4 v0, 0x5

    .line 53
    sput v0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->Bingo_TransZoomIn:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadHandlerMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    return-void
.end method

.method static synthetic access$100(Lcom/ss/android/ttve/nativePort/VEBingoManager;)[Lcom/ss/android/ttve/nativePort/VETransitionResult;
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->getBingoTransitionResults()[Lcom/ss/android/ttve/nativePort/VETransitionResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/android/ttve/nativePort/VEBingoManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/android/ttve/nativePort/VEBingoManager;Landroid/graphics/Bitmap;FLjava/lang/String;)I
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->processBingoImageFrame(Landroid/graphics/Bitmap;FLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ss/android/ttve/nativePort/VEBingoManager;Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I
    .registers 6

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->processBingoVideoFrame(Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private addVideoClips([Ljava/lang/String;I)[I
    .registers 7

    .line 301
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_22

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addVideoClips, invalid mNative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEBingoManager"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 305
    :cond_22
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->addVideoClipsByNative(J[Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method private native addVideoClipsByNative(J[Ljava/lang/String;I)[I
.end method

.method private decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 15

    .line 380
    const-string p0, " to "

    const-string v0, "*"

    const-string v1, "VEBingoManager"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return-object v3

    .line 384
    :cond_e
    :try_start_e
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 385
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 386
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 387
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_181

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v6, :cond_23

    goto/16 :goto_181

    :cond_23
    const/16 v7, 0x8

    const/16 v8, 0x140

    const/high16 v9, 0x43a00000    # 320.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-le v5, v6, :cond_3f

    int-to-float v11, v5

    mul-float/2addr v11, v10

    div-float/2addr v11, v9

    float-to-int v9, v11

    int-to-float v10, v6

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 402
    rem-int/lit8 v11, v10, 0x10

    if-lt v11, v7, :cond_3a

    add-int/lit8 v10, v10, 0x10

    :cond_3a
    sub-int/2addr v10, v11

    goto :goto_50

    :catch_3c
    move-exception p0

    goto/16 :goto_1a2

    :cond_3f
    int-to-float v11, v6

    mul-float/2addr v11, v10

    div-float/2addr v11, v9

    float-to-int v9, v11

    int-to-float v10, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 408
    rem-int/lit8 v11, v10, 0x10
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_48} :catch_3c

    if-lt v11, v7, :cond_4c

    add-int/lit8 v10, v10, 0x10

    :cond_4c
    sub-int/2addr v10, v11

    move v12, v10

    move v10, v8

    move v8, v12

    .line 412
    :goto_50
    const-string v7, "imagePath: "

    if-lez v8, :cond_14e

    if-gtz v10, :cond_58

    goto/16 :goto_14e

    :cond_58
    if-le v9, v4, :cond_5c

    .line 418
    :try_start_5a
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_5c
    const/4 v4, 0x0

    .line 420
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 421
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 422
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7e

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BitmapFactory.decodeFile(inJustDecodeBounds false) failed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 427
    :cond_7e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", origin size: "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scale size: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", inSampleSize: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", final size: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thread: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-static {v1, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-ne v5, v4, :cond_ee

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v8, :cond_ee

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v10, :cond_ed

    goto :goto_ee

    :cond_ed
    return-object v2

    .line 433
    :cond_ee
    :goto_ee
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch bitmap, config from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", size from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {v8, v10, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 435
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v8

    int-to-float v6, v10

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, v3, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 437
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    .line 413
    :cond_14e
    :goto_14e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " invalid scale size, scaleWidth: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scaleHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bitmap origin width: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 388
    :cond_181
    :goto_181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inJustDecodeBounds true, invalid out size, outWidth: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", outHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_1a1} :catch_3c

    return-object v3

    .line 443
    :goto_1a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeBitmap, imagePath: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getBingoTransitionResults()[Lcom/ss/android/ttve/nativePort/VETransitionResult;
    .registers 5

    .line 367
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 370
    :cond_a
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->getBingoTransitionResultsByNative(J)[Lcom/ss/android/ttve/nativePort/VETransitionResult;

    move-result-object p0

    return-object p0
.end method

.method private native getBingoTransitionResultsByNative(J)[Lcom/ss/android/ttve/nativePort/VETransitionResult;
.end method

.method private native init(I)J
.end method

.method private processBingoImageFrame(Landroid/graphics/Bitmap;FLjava/lang/String;)I
    .registers 10

    .line 334
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 340
    :cond_b
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->processBingoImageFrameByNative(JLandroid/graphics/Bitmap;FLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private native processBingoImageFrameByNative(JLandroid/graphics/Bitmap;FLjava/lang/String;)I
.end method

.method private processBingoVideoFrame(Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I
    .registers 14

    .line 319
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 322
    :cond_b
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->processBingoVideoFrameByNative(JLjava/nio/ByteBuffer;IIFLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private native processBingoVideoFrameByNative(JLjava/nio/ByteBuffer;IIFLjava/lang/String;)I
.end method

.method private reset()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    if-eqz v1, :cond_a

    .line 349
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_a

    .line 352
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 353
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 354
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->imageHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2d

    .line 355
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2d
    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->imageHandlerThread:Landroid/os/HandlerThread;

    .line 358
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->imageHandler:Landroid/os/Handler;

    return-void
.end method

.method private saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 455
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_16

    .line 457
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_16
    const/4 p1, 0x0

    .line 461
    :try_start_17
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_37
    .catchall {:try_start_17 .. :try_end_1c} :catchall_35

    .line 462
    :try_start_1c
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p1, 0x64

    invoke-virtual {p2, p0, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 463
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_32
    .catchall {:try_start_1c .. :try_end_26} :catchall_2f

    .line 469
    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 472
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_40

    :catchall_2f
    move-exception p0

    move-object p1, v0

    goto :goto_41

    :catch_32
    move-exception p0

    move-object p1, v0

    goto :goto_38

    :catchall_35
    move-exception p0

    goto :goto_41

    :catch_37
    move-exception p0

    .line 465
    :goto_38
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    if-eqz p1, :cond_40

    .line 469
    :try_start_3d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_2a

    :cond_40
    :goto_40
    return-void

    :goto_41
    if-eqz p1, :cond_4b

    :try_start_43
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p1

    .line 472
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 474
    :cond_4b
    :goto_4b
    throw p0
.end method


# virtual methods
.method public native destroy(J)I
.end method

.method public destroy()V
    .registers 5

    .line 86
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->reset()V

    .line 87
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 88
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->destroy(J)I

    .line 89
    iput-wide v2, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    :cond_12
    return-void
.end method

.method public detectTransition([Ljava/lang/String;IILcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v0, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v5, 0x0

    .line 280
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v4, :cond_467

    .line 101
    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_467

    const/4 v9, 0x1

    if-lt v0, v9, :cond_467

    if-ge v2, v9, :cond_1c

    goto/16 :goto_467

    .line 105
    :cond_1c
    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->reset()V

    const/16 v6, 0x3e8

    .line 107
    div-int/2addr v6, v2

    invoke-direct {v1, v4, v6}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->addVideoClips([Ljava/lang/String;I)[I

    move-result-object v6

    if-eqz v6, :cond_45f

    .line 108
    array-length v10, v6

    array-length v11, v4

    if-eq v10, v11, :cond_2e

    goto/16 :goto_45f

    .line 115
    :cond_2e
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move v11, v5

    .line 116
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v6

    .line 118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v14, v11

    move v15, v14

    move/from16 v16, v15

    .line 120
    :goto_48
    array-length v9, v4

    const-string v7, "VEBingoManager"

    move-object/from16 v18, v13

    if-ge v14, v9, :cond_276

    .line 121
    aget-object v9, v4, v14

    const/16 v19, 0x3

    .line 122
    aget v13, v18, v14

    const/4 v2, 0x2

    if-ne v2, v13, :cond_6b

    .line 124
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v25, v5

    move-object/from16 v22, v6

    move-object/from16 v20, v8

    move-object/from16 v23, v12

    goto/16 :goto_1d4

    .line 126
    :cond_6b
    const-string v2, ", videoPath: "

    move-object/from16 v20, v8

    const/4 v8, 0x1

    if-ne v8, v13, :cond_251

    .line 127
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v13, 0xa

    .line 129
    new-array v13, v13, [I

    .line 130
    invoke-static {v9, v13}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    move/from16 v17, v8

    .line 131
    aget v8, v13, v16

    move-object/from16 v21, v13

    const-string v13, ", size: "

    move-object/from16 v22, v6

    const-string v6, ", duration: "

    const-string v1, "*"

    if-lez v8, :cond_217

    move-object/from16 v23, v12

    aget v12, v21, v17

    if-lez v12, :cond_217

    aget v24, v21, v19

    if-gtz v24, :cond_9c

    goto/16 :goto_217

    :cond_9c
    move/from16 v24, v11

    const/16 v11, 0x8

    const/16 v25, 0x140

    const/high16 v26, 0x43a00000    # 320.0f

    const/high16 v27, 0x3f800000    # 1.0f

    if-le v8, v12, :cond_bb

    int-to-float v8, v8

    mul-float v8, v8, v27

    div-float v8, v8, v26

    int-to-float v12, v12

    div-float/2addr v12, v8

    float-to-int v8, v12

    .line 144
    rem-int/lit8 v12, v8, 0x10

    if-lt v12, v11, :cond_b6

    add-int/lit8 v8, v8, 0x10

    :cond_b6
    sub-int/2addr v8, v12

    move v11, v8

    move/from16 v8, v25

    goto :goto_cc

    :cond_bb
    int-to-float v12, v12

    mul-float v12, v12, v27

    div-float v12, v12, v26

    int-to-float v8, v8

    div-float/2addr v8, v12

    float-to-int v8, v8

    .line 149
    rem-int/lit8 v12, v8, 0x10

    if-lt v12, v11, :cond_c9

    add-int/lit8 v8, v8, 0x10

    :cond_c9
    sub-int/2addr v8, v12

    move/from16 v11, v25

    :goto_cc
    if-lez v8, :cond_1eb

    if-gtz v11, :cond_d2

    goto/16 :goto_1eb

    .line 160
    :cond_d2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/ss/android/ttve/common/TESizei;

    invoke-direct {v13, v8, v11}, Lcom/ss/android/ttve/common/TESizei;-><init>(II)V

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    aget v12, v21, v19

    .line 164
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    if-nez v14, :cond_101

    move-object/from16 v25, v5

    move/from16 v5, v16

    :goto_eb
    if-ge v5, v0, :cond_15d

    mul-int v19, v5, p3

    sub-int v19, v12, v19

    if-gez v19, :cond_f5

    goto/16 :goto_15d

    :cond_f5
    move/from16 v26, v5

    .line 172
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v26, 0x1

    goto :goto_eb

    :cond_101
    move-object/from16 v25, v5

    .line 174
    array-length v5, v4

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v14, v5, :cond_11f

    move/from16 v5, v16

    :goto_10c
    if-ge v5, v0, :cond_15d

    mul-int v4, v5, p3

    if-le v4, v12, :cond_113

    goto :goto_15d

    .line 181
    :cond_113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, p1

    goto :goto_10c

    :cond_11f
    move/from16 v4, v16

    move v5, v4

    :goto_122
    if-ge v4, v0, :cond_138

    move/from16 v19, v4

    mul-int v4, v19, p3

    if-le v4, v12, :cond_12b

    goto :goto_138

    :cond_12b
    if-le v4, v5, :cond_12e

    move v5, v4

    .line 194
    :cond_12e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v19, 0x1

    goto :goto_122

    :cond_138
    :goto_138
    move/from16 v4, v16

    :goto_13a
    if-ge v4, v0, :cond_15d

    mul-int v19, v4, p3

    sub-int v0, v12, v19

    if-ltz v0, :cond_15d

    if-gt v0, v5, :cond_145

    goto :goto_15d

    :cond_145
    move/from16 v19, v0

    .line 203
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    .line 204
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_158
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p2

    goto :goto_13a

    .line 209
    :cond_15d
    :goto_15d
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 210
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move/from16 v19, v0

    move/from16 v5, v16

    .line 211
    :goto_16a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_17f

    .line 212
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_16a

    .line 214
    :cond_17f
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v15, v15, v19

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video clip, index: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", origin size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v21, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x1

    aget v2, v21, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scale size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ptsList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v11, v24

    :goto_1d4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v0, p2

    move/from16 v2, p3

    move-object/from16 v13, v18

    move-object/from16 v8, v20

    move-object/from16 v6, v22

    move-object/from16 v12, v23

    move-object/from16 v5, v25

    const/4 v7, 0x2

    goto/16 :goto_48

    .line 155
    :cond_1eb
    :goto_1eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid scale size, index: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v7, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x13b

    .line 157
    invoke-interface {v3, v1, v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;->onError(ILjava/lang/String;)V

    return-void

    .line 132
    :cond_217
    :goto_217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid video info, index: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v21, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v21, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x1

    aget v1, v21, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v7, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x136

    .line 134
    invoke-interface {v3, v1, v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;->onError(ILjava/lang/String;)V

    return-void

    .line 222
    :cond_251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid clip type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x140

    invoke-interface {v3, v1, v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_276
    move-object/from16 v25, v5

    move-object/from16 v22, v6

    move-object/from16 v20, v8

    move/from16 v24, v11

    move-object/from16 v23, v12

    const/16 v19, 0x3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total video frame num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total image frame num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image clip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v5, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    add-int/2addr v15, v11

    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-direct {v5, v1, v15, v3, v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;-><init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;ILcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;Lcom/ss/android/ttve/nativePort/VEBingoManager$1;)V

    .line 229
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 230
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3e8

    .line 231
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 232
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-lez v0, :cond_31c

    move/from16 v3, v16

    move/from16 v4, v19

    :goto_2cf
    if-ge v3, v4, :cond_31c

    .line 236
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    mul-int v6, v3, v0

    :goto_2d8
    add-int/lit8 v11, v3, 0x1

    mul-int v12, v11, v0

    if-ge v6, v12, :cond_2f0

    .line 237
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_2f0

    move-object/from16 v12, v22

    .line 238
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d8

    :cond_2f0
    move-object/from16 v12, v22

    .line 240
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_317

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_30a

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_317

    .line 244
    :cond_30a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_317
    :goto_317
    move v3, v11

    move-object/from16 v22, v12

    const/4 v4, 0x3

    goto :goto_2cf

    :cond_31c
    move-object/from16 v12, v22

    if-lez v2, :cond_363

    .line 251
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move/from16 v2, v16

    :goto_327
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_363

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_34b

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35c

    .line 257
    :cond_34b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_35c
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x3

    .line 259
    rem-int/2addr v2, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_327

    :cond_363
    const/4 v11, 0x3

    move/from16 v12, v16

    :goto_366
    if-ge v12, v11, :cond_3e6

    .line 264
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_3d9

    .line 265
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d9

    .line 266
    new-instance v13, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HandlerThread_Video_"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 268
    new-instance v0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v4, p1

    move-object v3, v10

    move-object v10, v7

    move-object v7, v5

    move-object/from16 v5, v25

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;-><init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;Landroid/os/Looper;Ljava/util/Map;[Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;)V

    .line 269
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadHandlerMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 271
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is responsible for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3de

    :cond_3d9
    move-object v3, v10

    move-object v10, v7

    move-object v7, v5

    move-object/from16 v5, v25

    :goto_3de
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v25, v5

    move-object v5, v7

    move-object v7, v10

    move-object v10, v3

    goto :goto_366

    :cond_3e6
    move-object v7, v5

    goto :goto_433

    :cond_3e8
    move-object v3, v10

    move-object/from16 v12, v22

    move-object v10, v7

    move-object v7, v5

    move-object/from16 v5, v25

    .line 275
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_433

    .line 277
    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "HandlerThread_Video_Single"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 279
    new-instance v0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v4, p1

    move-object v6, v12

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetVideoFrameToProcessHandler;-><init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;Landroid/os/Looper;Ljava/util/Map;[Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;)V

    .line 280
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadMap:Ljava/util/Map;

    move-object/from16 v3, v20

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/VEBingoManager;->workThreadHandlerMap:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 282
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandlerThread_Single  is responsible for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_433
    :goto_433
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45e

    .line 287
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "HandlerThread_Image"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ss/android/ttve/nativePort/VEBingoManager;->imageHandlerThread:Landroid/os/HandlerThread;

    .line 288
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 289
    new-instance v0, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;

    iget-object v2, v1, Lcom/ss/android/ttve/nativePort/VEBingoManager;->imageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v3, p1

    move-object v5, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/VEBingoManager$GetImageFrameToProcessHandler;-><init>(Lcom/ss/android/ttve/nativePort/VEBingoManager;Landroid/os/Looper;[Ljava/lang/String;Ljava/util/List;Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;)V

    iput-object v0, v1, Lcom/ss/android/ttve/nativePort/VEBingoManager;->imageHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 290
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_45e
    return-void

    :cond_45f
    :goto_45f
    const/16 v0, -0x131

    .line 109
    const-string v1, "addVideoClips fail"

    invoke-interface {v3, v0, v1}, Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_467
    :goto_467
    const/16 v0, -0x64

    .line 102
    const-string v1, "invalid param"

    invoke-interface {v3, v0, v1}, Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public initBingoWithTransition()J
    .registers 5

    .line 74
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->reset()V

    .line 75
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 76
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    return-wide v0

    .line 78
    :cond_e
    sget-object v0, Lcom/ss/android/ttve/nativePort/VEBingoManager$BingoModelType;->BingoModelVideoTrans:Lcom/ss/android/ttve/nativePort/VEBingoManager$BingoModelType;

    iget v0, v0, Lcom/ss/android/ttve/nativePort/VEBingoManager$BingoModelType;->value:I

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    .line 79
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager;->mNative:J

    return-wide v0
.end method
