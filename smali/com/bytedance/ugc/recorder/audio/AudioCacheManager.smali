.class public final Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;

.field private static instance:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;


# instance fields
.field private final mAudioCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->Companion:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->mAudioCache:Landroid/util/LruCache;

    .line 44
    const-string v0, "audio_cache_"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
    .registers 1

    .line 8
    sget-object v0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->instance:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;)V
    .registers 1

    .line 8
    sput-object p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->instance:Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    return-void
.end method


# virtual methods
.method public final getAudioCacheById(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->mAudioCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    .line 16
    :cond_12
    :goto_12
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_24

    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final putAudioCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->mAudioCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 25
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setSharedPreferences(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method
