.class public Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IFilterProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;,
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;,
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_POST_VIEW:Z = false

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

.field protected static mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;


# instance fields
.field private mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

.field protected mContext:Landroid/content/Context;

.field protected volatile mCurrentFilterId:I

.field private final mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field protected volatile mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

.field private mFilterSupportIds:[I

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSurfaceDestroyed:Z

.field protected mSurfaceHeight:I

.field protected mSurfaceTextureMatrix:[F

.field protected mSurfaceWidth:I

.field private mThumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$D-3-dn5yhaPNfBJJPJ_EONBp_zk(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceDestroyed(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceDestroyed(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceDestroyed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLoadFilterIds(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;[I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->handleLoadFilterIds([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initArcFilterEngine()V

    return-void
.end method

.method static bridge synthetic -$$Nest$muninitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->uninitArcFilterEngine()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseFilterProcessor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    const/16 p1, 0x10

    .line 34
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    .line 35
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 41
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    .line 176
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private handleLoadFilterIds([I)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 355
    aget v1, p1, v0

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_a

    goto :goto_36

    .line 358
    :cond_a
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v1, :cond_36

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v1, :cond_36

    if-eqz p1, :cond_36

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-eq v1, v2, :cond_36

    .line 360
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "prepareEngineEx in"

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/arcsoft/filter/ArcFilterEngine;->prepareEngine(I)I

    .line 362
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    aget p1, p1, v0

    invoke-virtual {v3, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->prepareEngine(I)I

    .line 363
    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 364
    const-string p0, "prepareEngineEx out"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method

.method private initArcFilterEngine()V
    .registers 6

    .line 221
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-nez v0, :cond_b

    .line 222
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initEngine()V

    .line 224
    :cond_b
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initArcFilterEngine(): init begin "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-virtual {v1}, Lcom/arcsoft/filter/ArcFilterEngine;->Init()I

    move-result v1

    .line 226
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-virtual {v2}, Lcom/arcsoft/filter/ArcFilterEngine;->Init()I

    move-result v2

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initArcFilterEngine(): init end oesEngine = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initArcFilterEngine(): init end 2DEngine = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " the SDK version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-virtual {v2}, Lcom/arcsoft/filter/ArcFilterEngine;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    if-eqz v0, :cond_5f

    .line 231
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->handleLoadFilterIds([I)V

    :cond_5f
    return-void
.end method

.method private initEngine()V
    .registers 2

    .line 236
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initEngine(): init begin "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-nez p0, :cond_12

    .line 238
    new-instance p0, Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;-><init>()V

    sput-object p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    .line 240
    :cond_12
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-nez p0, :cond_1d

    .line 241
    new-instance p0, Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-direct {p0}, Lcom/arcsoft/filter/ArcFilterEngine;-><init>()V

    sput-object p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    :cond_1d
    return-void
.end method

.method private isValidFilter(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_17

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 153
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 177
    const-string v0, "key_filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 178
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->filterSelected(Ljava/lang/String;)Z

    :cond_b
    return-void
.end method

.method private loadFilterIdResources()V
    .registers 7

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    if-nez v0, :cond_5

    return-void

    .line 345
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v2, v3, :cond_20

    .line 347
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADING:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 348
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[II)V

    .line 350
    :cond_20
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFilterIdResources spend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms,mFilterIdsLoadedState = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", this:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private uninitArcFilterEngine()V
    .registers 3

    .line 246
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "uninitArcFilterEngine"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterOesEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_f

    .line 248
    invoke-virtual {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->UnInit()I

    .line 250
    :cond_f
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilter2DEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_16

    .line 251
    invoke-virtual {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->UnInit()I

    .line 253
    :cond_16
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    return-void
.end method


# virtual methods
.method protected drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method protected drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method protected drawPreview(Landroid/graphics/SurfaceTexture;III)V
    .registers 5

    return-void
.end method

.method public filterSelected(Ljava/lang/String;)Z
    .registers 4

    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->isValidFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 162
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    .line 163
    invoke-static {p1, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getCaptureFilterIdByPreviewId(Ljava/lang/String;Z)I

    move-result p1

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFunVideoFilterValue(Ljava/lang/String;)V

    .line 165
    iget p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz p1, :cond_24

    .line 166
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->loadFilterIdResources()V

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public getStoreScope(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .registers 7

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 63
    iput-object p3, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p5}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getSupportFilterIds(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 66
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_19

    .line 68
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 71
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p0, p5}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->getStoreScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "key_filter"

    invoke-virtual {p1, p4, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->filterSelected(Ljava/lang/String;)Z

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p4, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 2

    return-void
.end method

.method protected loadGLResourceFilterPreviewCallback(I)V
    .registers 2

    return-void
.end method

.method protected loadGLResourcesFilterPreviewCallback([II)V
    .registers 3

    return-void
.end method

.method protected onArcRecording(I[F)V
    .registers 3

    return-void
.end method

.method public onFirstSteadyFrame(Z)V
    .registers 2

    return-void
.end method

.method public onPostViewData(IIIZ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterClick()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_7

    .line 109
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modePause()V

    :cond_7
    return-void
.end method

.method protected pauseFilterPreviewCallBack()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_7

    .line 102
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    :cond_7
    return-void
.end method

.method protected resumeFilterPreviewCallBack()V
    .registers 1

    return-void
.end method

.method public setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
    .registers 2

    return-void
.end method

.method public setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V
    .registers 2

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_7

    .line 93
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    :cond_7
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_filter"

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .registers 2

    return-void
.end method

.method public updateFilterSupportIds(Ljava/lang/String;)V
    .registers 2

    .line 84
    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getSupportFilterIds(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_d

    .line 86
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeReload()V

    :cond_d
    return-void
.end method
