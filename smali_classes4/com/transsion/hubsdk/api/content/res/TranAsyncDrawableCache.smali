.class public Lcom/transsion/hubsdk/api/content/res/TranAsyncDrawableCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/content/res/TranAospAsyncDrawableCache;

.field private mThubService:Lcom/transsion/hubsdk/core/content/res/TranThubAsyncDrawableCache;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCacheBitmap()V
    .registers 2

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/res/TranAsyncDrawableCache;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/res/ITranAsyncDrawableCacheAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/res/ITranAsyncDrawableCacheAdapter;->clearCacheBitmap()V

    return-void
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/res/ITranAsyncDrawableCacheAdapter;
    .registers 2

    .line 37
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 38
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/res/TranAsyncDrawableCache;->mThubService:Lcom/transsion/hubsdk/core/content/res/TranThubAsyncDrawableCache;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/content/res/TranThubAsyncDrawableCache;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/res/TranThubAsyncDrawableCache;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/res/TranAsyncDrawableCache;->mThubService:Lcom/transsion/hubsdk/core/content/res/TranThubAsyncDrawableCache;

    :cond_11
    return-object p1

    .line 40
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/res/TranAsyncDrawableCache;->mAospService:Lcom/transsion/hubsdk/aosp/content/res/TranAospAsyncDrawableCache;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/res/TranAospAsyncDrawableCache;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/res/TranAospAsyncDrawableCache;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/res/TranAsyncDrawableCache;->mAospService:Lcom/transsion/hubsdk/aosp/content/res/TranAospAsyncDrawableCache;

    :cond_1d
    return-object p1
.end method
