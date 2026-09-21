.class public final Lcom/gallery20/sdk/ai_art/config/AIArtConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final enableConfig:Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;

.field private final limitConfig:Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;

.field private final removedTemplate:Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;

.field private final sp:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$BuAPBoATG5X6k0Cl8OPfElrDZ2A(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->_set_countToday_$lambda$8$lambda$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K9yjcw1rD9HPgxStaz4SMtrY1J8()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->_get_countToday_$lambda$3$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Y9PwH9yODsFKgc6zLGs6c0GI6Ok(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->_get_countToday_$lambda$3$lambda$2(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    const-string v0, "sp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->sp:Landroid/content/SharedPreferences;

    .line 111
    new-instance p1, Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;

    invoke-direct {p1}, Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->limitConfig:Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;

    .line 112
    new-instance p1, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;

    invoke-direct {p1}, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->enableConfig:Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;

    .line 113
    new-instance p1, Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;

    invoke-direct {p1}, Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->removedTemplate:Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;

    return-void
.end method

.method private static final _get_countToday_$lambda$3$lambda$0()Ljava/lang/String;
    .registers 1

    .line 119
    # getter for: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getSDCARD_CONFIG_FILE$p()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->readTextSafe(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final _get_countToday_$lambda$3$lambda$2(Ljava/lang/String;)V
    .registers 4

    const-string v0, "$countString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    # getter for: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getSDCARD_CONFIG_FILE$p()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_12
    # getter for: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getSDCARD_CONFIG_FILE$p()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    return-void
.end method

.method private static final _set_countToday_$lambda$8$lambda$7(I)V
    .registers 4

    .line 145
    # getter for: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getSDCARD_CONFIG_FILE$p()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    :cond_d
    # getter for: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getSDCARD_CONFIG_FILE$p()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->readTextSafe(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toProperties(Ljava/lang/String;)Ljava/util/Properties;
    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->removeOutOfDate(Ljava/util/Properties;)Ljava/util/Properties;
    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$removeOutOfDate(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 147
    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->getDateToday()Ljava/lang/String;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getDateToday()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    # getter for: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getSDCARD_CONFIG_FILE$p()Ljava/io/File;

    move-result-object p0

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;
    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addCount()V
    .registers 4

    .line 165
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->getCountToday()I

    move-result v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCount before: countToday = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIArtConfig"

    invoke-static {v2, v1}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    .line 167
    invoke-virtual {p0, v0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->setCountToday(I)V

    return-void
.end method

.method public final getCountToday()I
    .registers 7

    .line 118
    const-string v0, "ai_art_limit_config"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 119
    invoke-static {}, Lcom/gallery20/base/CommonExtKt;->getSingleIO()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/gallery20/sdk/ai_art/config/AIArtConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->sp:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toProperties(Ljava/lang/String;)Ljava/util/Properties;
    invoke-static {v2}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toProperties(Ljava/lang/String;)Ljava/util/Properties;
    invoke-static {v3}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v5

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->mergeCountConfig(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;
    invoke-static {v4, v5}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$mergeCountConfig(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    .line 122
    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;
    invoke-static {v4}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 124
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->sp:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 44
    const-string v3, "editor"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_49

    :catchall_47
    move-exception p0

    goto :goto_7b

    .line 126
    :cond_49
    :goto_49
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    .line 127
    invoke-static {}, Lcom/gallery20/base/CommonExtKt;->getSingleIO()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig$$ExternalSyntheticLambda1;

    invoke-direct {v0, v5}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 132
    :cond_5f
    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->getDateToday()Ljava/lang/String;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getDateToday()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7a

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7a

    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7a

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_47

    return p0

    :cond_7a
    return v1

    :goto_7b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load config error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AIArtConfig"

    invoke-static {v0, p0}, Lcom/gallery20/base/LogExtKt;->le(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a1
    return v1
.end method

.method public final getEnableConfig()Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->enableConfig:Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;

    return-object p0
.end method

.method public final getLimitConfig()Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->limitConfig:Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;

    return-object p0
.end method

.method public final getReachLimit()Z
    .registers 7

    .line 155
    const-string v0, "persist.gallery.debug_ai_art_limit_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "AIArtConfig"

    if-nez v0, :cond_12

    .line 156
    const-string p0, "reachLimit: debug disable limit"

    invoke-static {v3, p0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 159
    :cond_12
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->getCountToday()I

    move-result v0

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reachLimit: countToday = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", limitConfig.limit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->limitConfig:Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;

    invoke-virtual {v5}, Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;->getLimit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->limitConfig:Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;->getLimit()I

    move-result p0

    if-lt v0, p0, :cond_41

    return v1

    :cond_41
    return v2
.end method

.method public final getRemovedTemplate()Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->removedTemplate:Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;

    return-object p0
.end method

.method public final setCountToday(I)V
    .registers 6

    .line 138
    const-string v0, "ai_art_limit_config"

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 140
    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toProperties(Ljava/lang/String;)Ljava/util/Properties;
    invoke-static {v1}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->removeOutOfDate(Ljava/util/Properties;)Ljava/util/Properties;
    invoke-static {v1}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$removeOutOfDate(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    .line 141
    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->getDateToday()Ljava/lang/String;
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getDateToday()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->sp:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 44
    const-string v2, "editor"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;
    invoke-static {v1}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    invoke-static {}, Lcom/gallery20/base/CommonExtKt;->getSingleIO()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    .line 138
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_49

    goto :goto_54

    :catchall_49
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 150
    :goto_54
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_70

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set config error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AIArtConfig"

    invoke-static {p1, p0}, Lcom/gallery20/base/LogExtKt;->le(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_70
    return-void
.end method
