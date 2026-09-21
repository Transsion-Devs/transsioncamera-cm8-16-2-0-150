.class public final Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

.field private static caches:Lbytekn/foundation/collections/SharedMutableMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->INSTANCE:Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;

    .line 15
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->caches:Lbytekn/foundation/collections/SharedMutableMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCache(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/ICache;
    .registers 3

    const-string p0, "dirPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    return-object v0

    .line 21
    :cond_f
    sget-object p0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->caches:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p0, p1}, Lbytekn/foundation/collections/SharedMutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    return-object v0

    .line 23
    :cond_18
    sget-object p0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->caches:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p0, p1}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/cache/ICache;

    return-object p0
.end method

.method public final setCache(Ljava/lang/String;Lcom/ss/ugc/effectplatform/cache/ICache;)V
    .registers 3

    const-string p0, "dirPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p0, Lcom/ss/ugc/effectplatform/cache/EffectCacheManager;->caches:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
