.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLowQualityImageStateChangeListener"
.end annotation


# instance fields
.field private final mLowQualityJpegSaveTimeCache:Ljava/util/Map;

.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;


# direct methods
.method public static synthetic $r8$lambda$MqzFEWEaQp0br0iD2qat9lgbvq8(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V
    .registers 2

    const/4 v0, 0x1

    .line 2032
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/taps/IThumbnailController;->updateThumbnailUIEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4cnSJszjmn9R7D5frtK3yh8Qyg(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->lambda$updateThumbnailUIEnable$2(Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$asWf-vech6PiosWKfyFM0B7k1AM(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;)V
    .registers 4

    .line 2066
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2068
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;->setMediaStoreId(J)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$xz_Fvhziw6HU2zuXtbMW8oXnNio(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->lambda$onBackgroundImageFailed$0(Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yLcPxYLU7M9k--YcSZSWWHh1GO0(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V
    .registers 2

    const/4 v0, 0x1

    .line 2059
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/taps/IThumbnailController;->updateThumbnailUIEnable(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 1981
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1982
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->mLowQualityJpegSaveTimeCache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V

    return-void
.end method

.method private checkPostViewProcessing()V
    .registers 4

    .line 2084
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmPostViewBitmapProcessingCount(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 2088
    :cond_9
    :try_start_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmPostViewBitmapProcessingCount(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 2089
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "checkPostViewProcessing: time out"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception p0

    .line 2092
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private doSaveLowQualityJpeg(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V
    .registers 5

    .line 2041
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSaveLowQualityJpeg() called with: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2042
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->updatePostViewPicture(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    .line 2043
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmFailedLowQualityPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 2044
    :try_start_27
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$mapplyLowQualityPictureCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    .line 2045
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_4e

    .line 2046
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetFLUSH_BEFORE_LOW_QUALITY_JPEG_SAVE()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2047
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->checkPostViewProcessing()V

    const/4 v0, 0x0

    .line 2048
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->updateThumbnailUIEnable(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Z)V

    .line 2050
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->getValues()Landroid/content/ContentValues;

    move-result-object p1

    const-string v2, "_display_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$monLowQualityJpegSaved(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLjava/lang/String;)V

    return-void

    :catchall_4e
    move-exception p0

    .line 2045
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method private isLowQuality(Ljava/lang/Object;)Z
    .registers 2

    .line 2037
    instance-of p0, p1, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    if-eqz p0, :cond_e

    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->isLowQuality()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onBackgroundImageFailed$0(Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 2

    .line 2031
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmThumbnailController(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/taps/IThumbnailController;

    return-object p0
.end method

.method private synthetic lambda$updateThumbnailUIEnable$2(Ljava/lang/ref/WeakReference;)Lcom/transsion/camera/app/common/taps/IThumbnailController;
    .registers 2

    .line 2058
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmThumbnailController(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/taps/IThumbnailController;

    return-object p0
.end method

.method private updateLowQualityJpegSaveTimeCost(J)V
    .registers 5

    .line 2074
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->mLowQualityJpegSaveTimeCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1e

    .line 2076
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const/4 p1, 0x2

    const/4 p2, 0x6

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->setTapCapConfig(JII)V

    :cond_1e
    return-void
.end method

.method private updatePostViewPicture(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V
    .registers 5

    .line 2064
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePostViewBitmap: info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2065
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    new-instance v2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    invoke-static {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$mupdatePostViewPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLjava/util/function/Consumer;)V

    return-void
.end method

.method private updateThumbnailUIEnable(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Z)V
    .registers 6

    .line 2054
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmCaptureProgressImpl(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->removeCacheAndGetResult(J)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmProcessingThumbUri(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;->isSameUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 2055
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doThumbnailUIEnable: isBeforeLQSave = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2057
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmThumbnailController(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;)V

    .line 2058
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda1;-><init>()V

    .line 2059
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4f
    return-void
.end method


# virtual methods
.method public onBackgroundImageFailed(J)V
    .registers 6

    .line 2027
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackgroundImageFailed: timestampKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmLowQualityPictureSavingCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2029
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmCaptureProgressImpl(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$CaptureProgressImpl;->removeCacheAndGetResult(J)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2030
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmThumbnailController(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;)V

    .line 2031
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener$$ExternalSyntheticLambda3;-><init>()V

    .line 2032
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4c
    return-void
.end method

.method public varargs onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V
    .registers 6

    .line 2014
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundImageSaveCompleted[LOW]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2015
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmLowQualityPictureSavingCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_38

    .line 2016
    array-length p2, p3

    if-lez p2, :cond_38

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->isLowQuality(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    return-void

    .line 2019
    :cond_38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SaveEnd(LOW)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2020
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->doSaveLowQualityJpeg(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    .line 2021
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->updateLowQualityJpegSaveTimeCost(J)V

    .line 2022
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public varargs onBackgroundImageSaveProgressed(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;[Ljava/lang/Object;)V
    .registers 7

    if-eqz p2, :cond_f

    .line 1992
    array-length v0, p2

    if-lez v0, :cond_f

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->isLowQuality(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1995
    :cond_f
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackgroundImageSaveProgressed[LOW]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveBegin(LOW)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->mLowQualityJpegSaveTimeCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->updatePostViewPicture(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    .line 1999
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmFailedLowQualityPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 2000
    :try_start_5e
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$mapplyLowQualityPictureCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;)V

    .line 2001
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_85

    .line 2002
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetFLUSH_BEFORE_LOW_QUALITY_JPEG_SAVE()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_71

    .line 2003
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->checkPostViewProcessing()V

    .line 2004
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->updateThumbnailUIEnable(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;Z)V

    :cond_71
    if-eqz p2, :cond_81

    .line 2006
    array-length p0, p2

    if-le p0, v1, :cond_81

    aget-object p0, p2, v1

    instance-of p1, p0, Ljava/lang/Runnable;

    if-eqz p1, :cond_81

    .line 2007
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 2009
    :cond_81
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    :catchall_85
    move-exception p0

    .line 2001
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public onBackgroundImageSaveStarted(J)V
    .registers 6

    .line 1986
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackgroundImageSaveStarted[LOW]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1987
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$OnLowQualityImageStateChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmLowQualityPictureSavingCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
