.class public Lcom/transsion/sort24/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sort/IContactLocale;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;,
        Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;
    }
.end annotation


# static fields
.field public static final LOCALE_ARABIC:Ljava/util/Locale;

.field public static final LOCALE_GREEK:Ljava/util/Locale;

.field public static final LOCALE_HEBREW:Ljava/util/Locale;

.field public static final LOCALE_SERBIAN:Ljava/util/Locale;

.field public static final LOCALE_THAI:Ljava/util/Locale;

.field public static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static final sDefaultLabelLocales:[Ljava/util/Locale;

.field private static sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;


# instance fields
.field private final mLocales:Lcom/transsion/sort24/LocaleSet;

.field private final mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 48
    new-instance v4, Ljava/util/Locale;

    const-string v0, "ar"

    invoke-direct {v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    .line 49
    new-instance v6, Ljava/util/Locale;

    const-string v0, "el"

    invoke-direct {v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    .line 50
    new-instance v5, Ljava/util/Locale;

    const-string v0, "he"

    invoke-direct {v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    .line 52
    new-instance v8, Ljava/util/Locale;

    const-string v0, "sr"

    invoke-direct {v8, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    .line 53
    new-instance v7, Ljava/util/Locale;

    const-string v0, "uk"

    invoke-direct {v7, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    .line 54
    new-instance v3, Ljava/util/Locale;

    const-string v0, "th"

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/transsion/sort24/ContactLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    .line 71
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 72
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 73
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 79
    filled-new-array/range {v0 .. v8}, [Ljava/util/Locale;

    move-result-object v0

    .line 70
    sput-object v0, Lcom/transsion/sort24/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/sort24/LocaleSet;)V
    .registers 3

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_c

    .line 333
    invoke-static {}, Lcom/transsion/sort24/LocaleSet;->newDefault()Lcom/transsion/sort24/LocaleSet;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    goto :goto_e

    .line 335
    :cond_c
    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    .line 337
    :goto_e
    iget-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->shouldPreferJapanese()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 338
    new-instance p1, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;

    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-direct {p1, v0}, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    goto :goto_29

    .line 340
    :cond_20
    new-instance p1, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-direct {p1, v0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 342
    :goto_29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AddressBook Labels ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-virtual {v0}, Lcom/transsion/sort24/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils;->getLabels()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    const-string p1, "ContactLocale"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$0()[Ljava/util/Locale;
    .registers 1

    .line 70
    sget-object v0, Lcom/transsion/sort24/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/sort24/ContactLocaleUtils;
    .registers 3

    const-class v0, Lcom/transsion/sort24/ContactLocaleUtils;

    monitor-enter v0

    .line 351
    :try_start_3
    sget-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;

    if-nez v1, :cond_15

    .line 352
    new-instance v1, Lcom/transsion/sort24/ContactLocaleUtils;

    invoke-static {}, Lcom/transsion/sort24/LocaleSet;->newDefault()Lcom/transsion/sort24/LocaleSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/sort24/ContactLocaleUtils;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    sput-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_19

    .line 354
    :cond_15
    :goto_15
    sget-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_13

    monitor-exit v0

    return-object v1

    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw v1
.end method

.method public static declared-synchronized setLocales(Lcom/transsion/sort24/LocaleSet;)V
    .registers 3

    const-class v0, Lcom/transsion/sort24/ContactLocaleUtils;

    monitor-enter v0

    .line 362
    :try_start_3
    sget-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p0}, Lcom/transsion/sort24/ContactLocaleUtils;->isLocale(Lcom/transsion/sort24/LocaleSet;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_19

    .line 363
    :cond_10
    :goto_10
    new-instance v1, Lcom/transsion/sort24/ContactLocaleUtils;

    invoke-direct {v1, p0}, Lcom/transsion/sort24/ContactLocaleUtils;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    sput-object v1, Lcom/transsion/sort24/ContactLocaleUtils;->sSingleton:Lcom/transsion/sort24/ContactLocaleUtils;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_e

    .line 365
    :cond_17
    monitor-exit v0

    return-void

    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_e

    throw p0
.end method


# virtual methods
.method public getBucketIndex(Ljava/lang/String;)I
    .registers 2

    .line 372
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .registers 2

    .line 384
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 388
    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .registers 1

    .line 392
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mUtils:Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getLabels()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isLocale(Lcom/transsion/sort24/LocaleSet;)Z
    .registers 2

    .line 347
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils;->mLocales:Lcom/transsion/sort24/LocaleSet;

    invoke-virtual {p0, p1}, Lcom/transsion/sort24/LocaleSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
