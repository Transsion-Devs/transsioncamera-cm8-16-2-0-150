.class public final Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    # getter for: Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->instance:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
    invoke-static {}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->access$getInstance$cp()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    move-result-object p0

    if-nez p0, :cond_26

    const-class p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    .line 33
    monitor-enter p0

    .line 34
    :try_start_e
    # getter for: Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->instance:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
    invoke-static {}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->access$getInstance$cp()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    move-result-object v0

    if-nez v0, :cond_20

    .line 35
    new-instance v0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->access$setInstance$cp(Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;)V

    goto :goto_20

    :catchall_1e
    move-exception p1

    goto :goto_24

    .line 37
    :cond_20
    :goto_20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_1e

    .line 33
    monitor-exit p0

    goto :goto_26

    :goto_24
    monitor-exit p0

    throw p1

    .line 39
    :cond_26
    :goto_26
    # getter for: Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->instance:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
    invoke-static {}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->access$getInstance$cp()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
