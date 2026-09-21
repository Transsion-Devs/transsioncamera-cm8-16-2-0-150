.class Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sort24/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLocaleUtilsBase"
.end annotation


# instance fields
.field protected final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private final mAlphabeticIndexBucketCount:I

.field private final mNumberBucketIndex:I

.field private final mUsePinyinTransliterator:Z


# direct methods
.method public constructor <init>(Lcom/transsion/sort24/LocaleSet;)V
    .registers 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->shouldPreferSimplifiedChinese()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mUsePinyinTransliterator:Z

    .line 103
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 107
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/16 v2, 0x12c

    .line 108
    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->getAllLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 113
    :goto_2a
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-lt v3, v4, :cond_54

    .line 117
    :goto_30
    # getter for: Lcom/transsion/sort24/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;
    invoke-static {}, Lcom/transsion/sort24/ContactLocaleUtils;->access$0()[Ljava/util/Locale;

    move-result-object p1

    array-length p1, p1

    if-lt v2, p1, :cond_48

    .line 120
    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 121
    invoke-virtual {p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 p1, p1, -0x1

    .line 122
    iput p1, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    return-void

    .line 118
    :cond_48
    # getter for: Lcom/transsion/sort24/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;
    invoke-static {}, Lcom/transsion/sort24/ContactLocaleUtils;->access$0()[Ljava/util/Locale;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {v1, p1, v0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->addLabels(Landroid/icu/text/AlphabeticIndex;Ljava/util/Locale;Landroid/util/ArraySet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 114
    :cond_54
    invoke-virtual {p1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->addLabels(Landroid/icu/text/AlphabeticIndex;Ljava/util/Locale;Landroid/util/ArraySet;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a
.end method

.method private static addLabels(Landroid/icu/text/AlphabeticIndex;Ljava/util/Locale;Landroid/util/ArraySet;)V
    .registers 4

    .line 127
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 130
    :cond_7
    filled-new-array {p1}, [Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 131
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBucketCount()I
    .registers 1

    .line 199
    iget p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .registers 6

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-lt v1, v0, :cond_8

    goto :goto_33

    .line 156
    :cond_8
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 159
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 171
    iget p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    return p0

    .line 162
    :cond_15
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    if-nez v3, :cond_50

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_50

    const/16 v3, 0x28

    if-eq v2, v3, :cond_50

    const/16 v3, 0x29

    if-eq v2, v3, :cond_50

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_50

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_50

    const/16 v3, 0x23

    if-eq v2, v3, :cond_50

    .line 181
    :goto_33
    iget-boolean v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mUsePinyinTransliterator:Z

    if-eqz v0, :cond_3f

    .line 182
    invoke-static {}, Lcom/transsion/sort24/HanziToPinyin;->getInstance()Lcom/transsion/sort24/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/sort24/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    :cond_3f
    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result p1

    if-gez p1, :cond_49

    const/4 p0, -0x1

    return p0

    .line 188
    :cond_49
    iget p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-lt p1, p0, :cond_4f

    add-int/lit8 p1, p1, 0x1

    :cond_4f
    return p1

    .line 168
    :cond_50
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_1f

    .line 208
    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_1f

    .line 210
    :cond_9
    iget v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-ne p1, v0, :cond_10

    .line 211
    const-string p0, "#"

    return-object p0

    :cond_10
    if-le p1, v0, :cond_14

    add-int/lit8 p1, p1, -0x1

    .line 215
    :cond_14
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {p0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 209
    :cond_1f
    :goto_1f
    const-string p0, ""

    return-object p0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .registers 5

    .line 219
    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-lt v2, v0, :cond_d

    return-object v1

    .line 222
    :cond_d
    invoke-virtual {p0, v2}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method
