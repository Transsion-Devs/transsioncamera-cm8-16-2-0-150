.class public Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;
.super Lcom/ss/android/ugc/cut_ui/core/ITemplateSource$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;,
        Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$ResourceFetcherWrapper;
    }
.end annotation


# static fields
.field private static final PREPARE_MODE_ASYNC:I = 0x0

.field private static final PREPARE_MODE_SYNC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "cut.TemplateSource"


# instance fields
.field private context:Landroid/content/Context;

.field private iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

.field private innerFetcher:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;

.field private innerPrepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

.field private mainHandler:Landroid/os/Handler;

.field private nativeSource:J

.field private newPrepareListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private prepareErrorCode:I

.field private prepareListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;",
            ">;"
        }
    .end annotation
.end field

.field private schemaResourceFetchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;",
            ">;"
        }
    .end annotation
.end field

.field public final source:Lcom/ss/android/ugc/cut_ui/CutSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 177
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;-><init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;Z)V
    .registers 9

    .line 193
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/core/ITemplateSource$Stub;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareErrorCode:I

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    .line 165
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$ResourceFetcherWrapper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$ResourceFetcherWrapper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->innerFetcher:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;

    .line 166
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->innerPrepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->context:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    .line 196
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->initApplicationContext(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$2;->$SwitchMap$com$ss$android$ugc$cut_ui$CutSourceType:[I

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "source is empty"

    if-eq v1, v2, :cond_9d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9d

    const/4 p1, 0x3

    if-eq v1, p1, :cond_88

    const/4 p1, 0x4

    const-string v2, ""

    if-eq v1, p1, :cond_77

    const/4 p1, 0x5

    if-ne v1, p1, :cond_6f

    goto :goto_cb

    .line 228
    :cond_6f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown CutSourceType"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_77
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_82

    goto :goto_cb

    .line 220
    :cond_82
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_88
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_97

    .line 216
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_cb

    .line 213
    :cond_97
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_9d
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_104

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->digestStringSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    :goto_cb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructor : source="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initFolder="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cut.TemplateSource"

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0, p3, p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    .line 234
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->innerFetcher:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;

    invoke-static {p1, p2, p3}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSetResourceFetcher(JLcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;)V

    .line 235
    iget-wide p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->innerPrepareListener:Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    invoke-static {p1, p2, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSetPrepareListener(JLcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V

    return-void

    .line 204
    :cond_104
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/HashMap;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$302(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;I)I
    .registers 2

    .line 42
    iput p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareErrorCode:I

    return p1
.end method

.method static synthetic access$400(JI)V
    .registers 3

    .line 42
    invoke-static {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativePrepare(JI)V

    return-void
.end method

.method static synthetic access$500(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;J)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->reportPrepareFinish(J)V

    return-void
.end method

.method static synthetic access$600(J)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeRelease(J)V

    return-void
.end method

.method private checkScale(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;II)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 9

    .line 446
    const-string v0, "align_video"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8b

    .line 447
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_8b

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result p3

    cmpl-float p3, p3, v0

    if-nez p3, :cond_8b

    .line 448
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_8b

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result p3

    cmpl-float p3, p3, v0

    if-nez p3, :cond_8b

    .line 450
    sget-object p2, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-virtual {p2, p1, p4}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result p2

    .line 452
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result p3

    .line 453
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result p4

    const/16 v1, 0x5a

    if-eq p4, v1, :cond_49

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result p4

    const/16 v1, 0x10e

    if-ne p4, v1, :cond_51

    .line 454
    :cond_49
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result p2

    .line 455
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result p3

    :cond_51
    if-lez p2, :cond_5d

    if-lez p3, :cond_5d

    int-to-float p1, p2

    int-to-float p4, p3

    int-to-float v0, p5

    int-to-float v1, p6

    .line 459
    invoke-direct {p0, p1, p4, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getSaleFactorMax(FFFF)F

    move-result v0

    :cond_5d
    int-to-float p1, p2

    mul-float/2addr p1, v0

    const/high16 p2, 0x40000000    # 2.0f

    div-float p4, p1, p2

    int-to-float p5, p5

    div-float/2addr p5, p2

    sub-float v1, p4, p5

    div-float/2addr v1, p1

    int-to-float p3, p3

    mul-float/2addr p3, v0

    div-float v0, p3, p2

    int-to-float p6, p6

    div-float/2addr p6, p2

    sub-float p2, v0, p6

    div-float/2addr p2, p3

    add-float/2addr p4, p5

    div-float/2addr p4, p1

    add-float/2addr v0, p6

    div-float/2addr v0, p3

    .line 467
    new-instance p1, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    invoke-direct {p0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getValidValue(F)F

    move-result p3

    invoke-direct {p0, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getValidValue(F)F

    move-result p2

    invoke-direct {p0, p4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getValidValue(F)F

    move-result p4

    invoke-direct {p0, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getValidValue(F)F

    move-result p0

    invoke-direct {p1, p3, p2, p4, p0}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    return-object p1

    :cond_8b
    return-object p2
.end method

.method private checkScale(Landroid/content/Context;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 433
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    .line 435
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v2

    .line 436
    invoke-direct {p0, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->crop2ItemCrop(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getAlignMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getWidth()J

    move-result-wide v2

    long-to-int v8, v2

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getHeight()J

    move-result-wide v2

    long-to-int v9, v2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->checkScale(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;II)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object p0

    .line 437
    invoke-direct {v3, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->itemCrop2Crop(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCrop(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)V

    add-int/lit8 v0, v0, 0x1

    move-object p0, v3

    goto :goto_1

    :cond_38
    return-void
.end method

.method private crop2ItemCrop(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 7

    .line 486
    new-instance p0, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    .line 487
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftY()D

    move-result-wide v1

    double-to-float v1, v1

    .line 488
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightY()D

    move-result-wide v3

    double-to-float p1, v3

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    return-object p0
.end method

.method private getSaleFactorMax(FFFF)F
    .registers 5

    div-float/2addr p3, p1

    div-float/2addr p4, p2

    .line 508
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getValidValue(F)F
    .registers 3

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_6

    return p0

    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_d

    return p0

    :cond_d
    return p1
.end method

.method private isNativeNotValid()Z
    .registers 5

    .line 536
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private itemCrop2Crop(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;
    .registers 4

    .line 493
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;-><init>()V

    .line 494
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftX(D)V

    .line 495
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftY(D)V

    .line 496
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightX(D)V

    .line 497
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightY(D)V

    .line 498
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftX(D)V

    .line 499
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftY(D)V

    .line 500
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightX(D)V

    .line 501
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightY(D)V

    return-object p0
.end method

.method private static native nativeClone(J)J
.end method

.method private static native nativeCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method private static native nativeGetTailSegment(J)Ljava/lang/String;
.end method

.method private static native nativeGetTemplateModel(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
.end method

.method private static native nativeGetTextSegments(J)Ljava/lang/String;
.end method

.method private static native nativeGetVideoSegments(J)Ljava/lang/String;
.end method

.method private static native nativePrepare(JI)V
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetPrepareListener(JLcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V
.end method

.method private static native nativeSetResourceFetcher(JLcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;)V
.end method

.method private static native nativeSetTailSegment(JLcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;)I
.end method

.method private static native nativeSetTextSegments(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;)I
.end method

.method private static native nativeSetVideoSegments(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;)I
.end method

.method private reportPrepareFinish(J)V
    .registers 9

    .line 316
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    if-eqz v0, :cond_27

    .line 318
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareErrorCode:I

    .line 319
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    .line 321
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->getDesc()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    .line 322
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    .line 318
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;->report(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 169
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 170
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 172
    :cond_e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addPrepareListener(Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V
    .registers 4

    .line 256
    const-string v0, "cut.TemplateSource"

    const-string v1, "setPrepareListener"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 259
    :cond_e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPrepareListener(Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;)V
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkScale(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/MediaItem;)Lcom/ss/android/ugc/cut_ui/ItemCrop;
    .registers 10

    .line 442
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getAlignMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->checkScale(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;II)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object p0

    return-object p0
.end method

.method protected finalize()V
    .registers 5

    .line 542
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 543
    const-string v0, "cut.TemplateSource"

    const-string v1, "You forget to release TemplateSource !!"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->releaseObject()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_19

    .line 547
    :cond_15
    :goto_15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNativeSource()J
    .registers 4

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNativeSource : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.TemplateSource"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_21

    const-wide/16 v0, 0x0

    return-wide v0

    .line 515
    :cond_21
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    return-wide v0
.end method

.method public getTailSegment()Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;
    .registers 5

    .line 408
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 410
    :cond_8
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {v2, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeGetTailSegment(J)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v1

    .line 415
    :cond_11
    new-instance v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;-><init>()V

    .line 416
    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;->fromJson(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTemplateModel()Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;
    .registers 3

    .line 330
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 332
    :cond_8
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeGetTemplateModel(J)Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;

    move-result-object p0

    return-object p0
.end method

.method public getTextSegments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 380
    :cond_c
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeGetTextSegments(J)Ljava/lang/String;

    move-result-object p0

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-static {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 384
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_20
    return-object v0
.end method

.method public getVideoSegment()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 341
    :cond_c
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeGetVideoSegments(J)Ljava/lang/String;

    move-result-object p0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-static {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 345
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_20
    return-object v0
.end method

.method public prepare()V
    .registers 6

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 311
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativePrepare(JI)V

    .line 312
    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->reportPrepareFinish(J)V

    return-void
.end method

.method public prepareAsync()V
    .registers 5

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.TemplateSource"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    .line 290
    :cond_23
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeClone(J)J

    move-result-wide v0

    .line 291
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$1;-><init>(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public release()V
    .registers 1

    .line 520
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->releaseObject()V

    return-void
.end method

.method public releaseObject()V
    .registers 6

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseObject : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.TemplateSource"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 526
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 527
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 529
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_42

    .line 530
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeRelease(J)V

    .line 531
    iput-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    :cond_42
    return-void
.end method

.method public removePrepareListener(Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V
    .registers 4

    .line 249
    const-string v0, "cut.TemplateSource"

    const-string v1, "removePrepareListener"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 252
    :cond_e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEffectResourceFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V
    .registers 4

    .line 266
    const-string v0, "cut.TemplateSource"

    const-string v1, "setEffectResourceFetcher"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 269
    :cond_e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    sget-object v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->EFFECT:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNetworkFileFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;)V
    .registers 4

    .line 276
    const-string v0, "cut.TemplateSource"

    const-string v1, "setNetworkFileFetcher"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 279
    :cond_e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    sget-object v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->NORMAL:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReporter(Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    return-void
.end method

.method public setTailSegment(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;)I
    .registers 4

    .line 427
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 428
    :cond_9
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSetTailSegment(JLcom/bytedance/ies/cutsameconsumer/templatemodel/TailSegment;)I

    move-result p0

    return p0
.end method

.method public setTextSegments(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;",
            ">;)I"
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 398
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;

    .line 399
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 400
    iget-wide p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {p0, p1, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSetTextSegments(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;)I

    move-result p0

    return p0
.end method

.method public setVideoSegments(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;)I"
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x16

    return p0

    .line 358
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    .line 359
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 360
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsMutable()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    iget-object v3, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoSegments found invalid file id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getMaterialId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cut.TemplateSource"

    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setPath(Ljava/lang/String;)V

    goto :goto_d

    .line 367
    :cond_63
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->checkScale(Landroid/content/Context;Ljava/util/List;)V

    .line 369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    .line 370
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 371
    iget-wide p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-static {p0, p1, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSetVideoSegments(J[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemplateSource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->nativeSource:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
