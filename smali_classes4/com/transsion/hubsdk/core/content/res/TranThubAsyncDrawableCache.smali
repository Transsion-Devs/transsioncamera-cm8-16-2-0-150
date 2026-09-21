.class public Lcom/transsion/hubsdk/core/content/res/TranThubAsyncDrawableCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/res/ITranAsyncDrawableCacheAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCacheBitmap()V
    .registers 1

    .line 18
    invoke-static {}, Lcom/transsion/hubsdk/content/res/AsyncDrawableCache;->clearCacheBitmap()V

    return-void
.end method
