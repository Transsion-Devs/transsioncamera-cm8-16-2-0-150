.class public final Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;
.super Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion;
    }
.end annotation


# static fields
.field private static final ALLOW_LIST_RULE:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

.field public static final Companion:Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion;

.field private static country:Lbytekn/foundation/concurrent/SharedReference;

.field private static draftDIRAllowList:Lbytekn/foundation/concurrent/SharedReference;

.field private static final effectIdSp:Lbytekn/foundation/concurrent/SharedReference;


# instance fields
.field private final effectConfiguration:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private final jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion;

    .line 156
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->effectIdSp:Lbytekn/foundation/concurrent/SharedReference;

    .line 157
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->country:Lbytekn/foundation/concurrent/SharedReference;

    .line 158
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->draftDIRAllowList:Lbytekn/foundation/concurrent/SharedReference;

    .line 159
    new-instance v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache$Companion$ALLOW_LIST_RULE$1;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->ALLOW_LIST_RULE:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 12

    const-string v0, "effectConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectMaxCacheSize()J

    move-result-wide v5

    sget-object v7, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->ALLOW_LIST_RULE:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 28
    invoke-direct/range {v1 .. v9}, Lcom/ss/ugc/effectplatform/cache/DiskLruCacheImpl;-><init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, v1, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->effectConfiguration:Lcom/ss/ugc/effectplatform/EffectConfig;

    .line 34
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-static {p1}, Lcom/ss/ugc/effectplatform/util/GetSettingDirKt;->getSettingDir(Lcom/ss/ugc/effectplatform/EffectConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "effectid_map"

    if-eqz p0, :cond_28

    goto :goto_44

    .line 37
    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/ss/ugc/effectplatform/util/GetSettingDirKt;->getSettingDir(Lcom/ss/ugc/effectplatform/EffectConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v2}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_44
    sget-object p0, Lcom/ss/ugc/effectplatform/settings/SettingsFactory;->INSTANCE:Lcom/ss/ugc/effectplatform/settings/SettingsFactory;

    .line 40
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppContext()Ljava/lang/Object;

    move-result-object v2

    .line 39
    invoke-virtual {p0, v0, v2}, Lcom/ss/ugc/effectplatform/settings/SettingsFactory;->createSettings(Ljava/lang/String;Ljava/lang/Object;)Lcom/ss/ugc/effectplatform/settings/Setttings;

    move-result-object p0

    .line 41
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->effectIdSp:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0, p0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 42
    sget-object p0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->country:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 43
    sget-object p0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->draftDIRAllowList:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getDraftList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object p0

    iput-object p0, v1, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->jsonConverter:Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    return-void
.end method

.method public static final synthetic access$getCountry$cp()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 28
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->country:Lbytekn/foundation/concurrent/SharedReference;

    return-object v0
.end method

.method public static final synthetic access$getDraftDIRAllowList$cp()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 28
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->draftDIRAllowList:Lbytekn/foundation/concurrent/SharedReference;

    return-object v0
.end method

.method public static final synthetic access$getEffectIdSp$cp()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 28
    sget-object v0, Lcom/ss/ugc/effectplatform/cache/EffectDiskLruCache;->effectIdSp:Lbytekn/foundation/concurrent/SharedReference;

    return-object v0
.end method
