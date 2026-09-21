.class public Lcom/transsion/sort24/LocaleSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDefaultLocaleOverrideForTest:Ljava/util/Locale;

.field private final mLocaleList:Landroid/os/LocaleList;


# direct methods
.method private constructor <init>(Landroid/os/LocaleList;Ljava/util/Locale;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    .line 33
    iput-object p2, p0, Lcom/transsion/sort24/LocaleSet;->mDefaultLocaleOverrideForTest:Ljava/util/Locale;

    return-void
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 64
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 68
    :cond_b
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getScriptIfChinese(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    .line 76
    invoke-static {p0}, Lcom/transsion/sort24/LocaleSet;->isLanguageChinese(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/transsion/sort24/LocaleSet;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static isLanguageChinese(Ljava/util/Locale;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 46
    const-string v0, "zh"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method static isLanguageJapanese(Ljava/util/Locale;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 50
    const-string v0, "ja"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method static isLocaleSimplifiedChinese(Ljava/util/Locale;)Z
    .registers 2

    .line 80
    const-string v0, "Hans"

    invoke-static {p0}, Lcom/transsion/sort24/LocaleSet;->getScriptIfChinese(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static isLocaleTraditionalChinese(Ljava/util/Locale;)Z
    .registers 2

    .line 84
    const-string v0, "Hant"

    invoke-static {p0}, Lcom/transsion/sort24/LocaleSet;->getScriptIfChinese(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static newDefault()Lcom/transsion/sort24/LocaleSet;
    .registers 3

    .line 37
    new-instance v0, Lcom/transsion/sort24/LocaleSet;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/sort24/LocaleSet;-><init>(Landroid/os/LocaleList;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static varargs newForTest([Ljava/util/Locale;)Lcom/transsion/sort24/LocaleSet;
    .registers 4

    .line 42
    new-instance v0, Lcom/transsion/sort24/LocaleSet;

    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/transsion/sort24/LocaleSet;-><init>(Landroid/os/LocaleList;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_4
    instance-of v0, p1, Lcom/transsion/sort24/LocaleSet;

    if-eqz v0, :cond_13

    .line 153
    check-cast p1, Lcom/transsion/sort24/LocaleSet;

    .line 154
    iget-object p0, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    iget-object p1, p1, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getAllLocales()Landroid/os/LocaleList;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    return-object p0
.end method

.method public getPrimaryLocale()Ljava/util/Locale;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/sort24/LocaleSet;->mDefaultLocaleOverrideForTest:Ljava/util/Locale;

    if-eqz p0, :cond_5

    return-object p0

    .line 95
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public shouldPreferJapanese()Z
    .registers 6

    .line 110
    invoke-virtual {p0}, Lcom/transsion/sort24/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sort24/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    .line 113
    :goto_e
    iget-object v3, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-lt v2, v3, :cond_17

    return v0

    .line 114
    :cond_17
    iget-object v3, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 115
    invoke-static {v3}, Lcom/transsion/sort24/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_24

    return v1

    .line 118
    :cond_24
    invoke-static {v3}, Lcom/transsion/sort24/LocaleSet;->isLocaleSimplifiedChinese(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public shouldPreferSimplifiedChinese()Z
    .registers 6

    .line 129
    invoke-virtual {p0}, Lcom/transsion/sort24/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sort24/LocaleSet;->isLocaleSimplifiedChinese(Ljava/util/Locale;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    .line 132
    :goto_e
    iget-object v3, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-lt v2, v3, :cond_17

    return v0

    .line 133
    :cond_17
    iget-object v3, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 134
    invoke-static {v3}, Lcom/transsion/sort24/LocaleSet;->isLocaleSimplifiedChinese(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_24

    return v1

    .line 137
    :cond_24
    invoke-static {v3}, Lcom/transsion/sort24/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_2b

    return v0

    .line 140
    :cond_2b
    invoke-static {v3}, Lcom/transsion/sort24/LocaleSet;->isLocaleTraditionalChinese(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_32

    return v0

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/sort24/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
