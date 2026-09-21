.class public final Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_LIMIT:I = 0x19

.field private static final DEFAULT_VALUE:Z = true

.field private static final SDCARD_CONFIG_FILE:Ljava/io/File;

.field private static final SP_KEY:Ljava/lang/String; = "ai_art_limit_config"

.field private static final TAG:Ljava/lang/String; = "AIArtConfig"

.field private static final dateFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final modrianSupportDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DCIM/Camera/."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ai_art"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;

    .line 76
    const-string v0, "TECNO CN6"

    const-string v1, "TECNO CN6c"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->modrianSupportDevices:Ljava/util/List;

    .line 172
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public static final synthetic access$getDateToday()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->getDateToday()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getModrianSupprot()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->getModrianSupprot()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSDCARD_CONFIG_FILE$p()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->SDCARD_CONFIG_FILE:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$mergeCountConfig(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->mergeCountConfig(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeOutOfDate(Ljava/util/Properties;)Ljava/util/Properties;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->removeOutOfDate(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toStringList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getDateToday()Ljava/lang/String;
    .registers 2

    .line 175
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getModrianSupprot()Z
    .registers 4

    .line 80
    const-string v0, "ro.tr_gallery.ai_art_mondrian.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    return v2

    .line 81
    :cond_b
    sget-object v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->modrianSupportDevices:Ljava/util/List;

    const-string v3, "ro.product.model"

    invoke-static {v3}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    :cond_1a
    return v1
.end method

.method private static final mergeCountConfig(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;
    .registers 7

    .line 178
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "stringPropertyNames(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    invoke-virtual {p1, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2c

    :cond_2b
    move-object v2, v3

    :goto_2c
    if-eqz v2, :cond_d

    .line 181
    invoke-virtual {p0, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    :cond_3e
    if-nez v3, :cond_48

    .line 183
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_d

    .line 185
    :cond_48
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_d

    :cond_5c
    return-object p0
.end method

.method private static final removeOutOfDate(Ljava/util/Properties;)Ljava/util/Properties;
    .registers 7

    .line 192
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "stringPropertyNames(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    :try_start_19
    sget-object v2, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v2

    .line 195
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v3

    .line 196
    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v2, v3}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 197
    invoke-virtual {p0, v1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_37

    goto :goto_d

    .line 200
    :catch_37
    invoke-virtual {p0, v1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_3b
    return-object p0
.end method

.method private static final toProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 3

    .line 215
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 217
    :cond_8
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    return-object v0
.end method

.method private static final toPropertiesString(Ljava/util/Properties;)Ljava/lang/String;
    .registers 6

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    const-string v2, "stringPropertyNames(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "append(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    .line 211
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final toStringList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1b

    .line 71
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "optString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    return-object v0
.end method
