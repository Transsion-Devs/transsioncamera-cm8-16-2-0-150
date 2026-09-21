.class public final Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$Companion;,
        Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;,
        Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;,
        Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$Companion;

.field private static final PREPARE_MODE_ASYNC:I = 0x0

.field private static final PREPARE_MODE_SYNC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NLETemplateSource"


# instance fields
.field private context:Landroid/content/Context;

.field private iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

.field private final innerFetcher$delegate:Lkotlin/Lazy;

.field private final innerNLEPrepareListener$delegate:Lkotlin/Lazy;

.field private nativeSource:J

.field private prepareErrorCode:I

.field private prepareFinishListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaResourceFetchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/ss/android/ugc/cut_ui/CutSource;


# direct methods
.method public static synthetic $r8$lambda$PnxYCn43REIhkYwqC1EdIctoNMA(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;J)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareAsync$lambda-0(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->Companion:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$Companion;

    .line 30
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->init()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    .line 38
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerFetcher$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerFetcher$2;-><init>(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->innerFetcher$delegate:Lkotlin/Lazy;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerNLEPrepareListener$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerNLEPrepareListener$2;-><init>(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->innerNLEPrepareListener$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;Z)V
    .registers 16

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cutSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    .line 55
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->initApplicationContext(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 62
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object v1

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/16 v3, 0x2f

    const-string v4, ""

    if-eq v1, v2, :cond_74

    const/4 v2, 0x2

    if-eq v1, v2, :cond_74

    const/4 v2, 0x3

    if-eq v1, v2, :cond_53

    const/4 p1, 0x4

    if-eq v1, p1, :cond_50

    const/4 p1, 0x5

    if-ne v1, p1, :cond_48

    goto :goto_50

    .line 79
    :cond_48
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown CutSourceType"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    :goto_50
    move-object v8, v0

    move-object v6, v4

    goto :goto_98

    .line 72
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    .line 74
    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    .line 72
    invoke-virtual {v1, p1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v8, v6

    goto :goto_98

    .line 65
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    .line 67
    sget-object v5, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->TEMPLATE_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    .line 65
    invoke-virtual {v2, p1, v5}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->digestStringSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    move-object v8, v0

    .line 83
    :goto_98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "constructor : source="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", initFolder="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    const-string p2, "NLETemplateSource"

    invoke-static {p2, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->getDesc()Ljava/lang/String;

    move-result-object v7

    if-nez p3, :cond_c9

    move-object v9, v4

    :goto_c6
    move-object v5, p0

    move v10, p4

    goto :goto_cb

    :cond_c9
    move-object v9, p3

    goto :goto_c6

    .line 86
    :goto_cb
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeCreate_nle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    iput-wide p0, v5, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    .line 93
    invoke-direct {v5}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->getInnerFetcher()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;

    move-result-object p2

    invoke-direct {v5, p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSetResourceFetcher_nle(JLcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;)V

    .line 94
    iget-wide p0, v5, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    invoke-direct {v5}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->getInnerNLEPrepareListener()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;

    move-result-object p2

    invoke-direct {v5, p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSetPrepareListener_nle(JLcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V

    return-void

    .line 60
    :cond_e2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source is empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_6

    .line 49
    const-string p3, ""

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    const/4 p4, 0x1

    .line 46
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;-><init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$getPrepareFinishListener$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareFinishListener:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getPrepareListeners$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getSchemaResourceFetchers$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Ljava/util/HashMap;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setPrepareErrorCode$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareErrorCode:I

    return-void
.end method

.method private final getInnerFetcher()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->innerFetcher$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;

    return-object p0
.end method

.method private final getInnerNLEPrepareListener()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->innerNLEPrepareListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;

    return-object p0
.end method

.method private final isNativeNotValid()Z
    .registers 5

    .line 206
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private final native nativeClone_nle(J)J
.end method

.method private final native nativeCreate_nle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method private final native nativePrepare_nle(JI)V
.end method

.method private final native nativeRelease_nle(J)V
.end method

.method private final native nativeSetPrepareListener_nle(JLcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V
.end method

.method private final native nativeSetResourceFetcher_nle(JLcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;)V
.end method

.method private static final prepareAsync$lambda-0(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;J)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0, p1, p2, v2}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativePrepare_nle(JI)V

    .line 164
    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->reportPrepareFinish(J)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeRelease_nle(J)V

    return-void

    :catchall_14
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeRelease_nle(J)V

    throw v0
.end method

.method private final reportPrepareFinish(J)V
    .registers 9

    .line 238
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    if-nez v0, :cond_5

    return-void

    .line 241
    :cond_5
    iget v1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareErrorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 243
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSource;->getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 244
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->source:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    .line 239
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;->report(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addNLEPrepareListener(Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    const-string v0, "NLETemplateSource"

    const-string v1, "addNLEPrepareListener"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 192
    :cond_13
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addPrePareFinishListener$CutSame_release(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 203
    :cond_c
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareFinishListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method protected final finalize()V
    .registers 5

    .line 209
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 210
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 211
    const-string v0, "NLETemplateSource"

    const-string v1, "You forget to release TemplateSource !!"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->releaseObject()V

    .line 214
    :cond_14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 209
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final prepare()V
    .registers 6

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 173
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->isNativeNotValid()Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 174
    :cond_b
    iget-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativePrepare_nle(JI)V

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->reportPrepareFinish(J)V

    return-void
.end method

.method public final prepareAsync()V
    .registers 5

    .line 156
    const-string v0, "NLETemplateSource"

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 159
    :cond_e
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeClone_nle(J)J

    move-result-wide v0

    .line 160
    new-instance v2, Ljava/lang/Thread;

    .line 168
    new-instance v3, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$$ExternalSyntheticLambda0;-><init>(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;J)V

    .line 160
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final releaseObject()V
    .registers 6

    .line 219
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "releaseObject : "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NLETemplateSource"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 221
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 274
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;

    .line 222
    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->removePrepareListener(Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V

    goto :goto_1c

    .line 225
    :cond_31
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 227
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_43

    .line 228
    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeRelease_nle(J)V

    .line 229
    iput-wide v2, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->nativeSource:J

    :cond_43
    return-void
.end method

.method public final removePrepareListener(Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const-string v0, "NLETemplateSource"

    const-string v1, "removePrepareListener"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 198
    :cond_13
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setEffectResourceFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V
    .registers 3

    const-string v0, "effectResourceFetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 180
    :cond_c
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    sget-object v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->EFFECT:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setNetworkFileFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;)V
    .registers 4

    const-string v0, "networkFileFetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const-string v0, "NLETemplateSource"

    const-string v1, "setNetworkFileFetcher"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->isNativeNotValid()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 186
    :cond_13
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;

    sget-object v0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;->NORMAL:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setReporter(Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->iCutReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    return-void
.end method
