.class public final Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final isEE1$delegate:Lkotlin/Lazy;

.field private static final isIndiaVersion$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2dKDhL_7VkwiySfYBIRkabqDjyk()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isIndiaVersion_delegate$lambda$7()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$unrfI20yGbSABAVRP7A2M8hw6gY()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isEE1_delegate$lambda$3()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isEE1$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isIndiaVersion$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final cropBitmapToMultipleOf8KeepRatio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 25
    rem-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_16

    rem-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_16

    return-object p0

    .line 26
    :cond_16
    div-int/lit8 v2, v0, 0x8

    mul-int/lit8 v2, v2, 0x8

    .line 27
    div-int/lit8 v3, v1, 0x8

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr v0, v2

    .line 28
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v3

    .line 29
    div-int/lit8 v1, v1, 0x2

    .line 30
    invoke-static {p0, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createBitmap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final isEE1()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isEE1$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final isEE1_delegate$lambda$3()Z
    .registers 7

    .line 42
    const-string v0, "ro.tr_build.sw_market"

    const-string v1, "ro.tran.sw.market"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 42
    invoke-static {v3}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 46
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_40
    const/4 v5, 0x0

    if-ge v4, v2, :cond_5c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    .line 48
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_58

    .line 42
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :cond_58
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 50
    :cond_5c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_60
    if-ge v3, v1, :cond_76

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_60

    .line 42
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    if-ne v4, v6, :cond_60

    move-object v5, v2

    :cond_76
    const-string v0, "ru"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isIndiaVersion()Z
    .registers 1

    .line 43
    sget-object v0, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isIndiaVersion$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final isIndiaVersion_delegate$lambda$7()Z
    .registers 7

    .line 43
    const-string v0, "ro.tr_build.sw_market"

    const-string v1, "ro.tran.sw.market"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 43
    invoke-static {v3}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 52
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_40
    const/4 v5, 0x0

    if-ge v4, v2, :cond_5c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    .line 54
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_58

    .line 43
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :cond_58
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 56
    :cond_5c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_60
    if-ge v3, v1, :cond_76

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_60

    .line 43
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    if-ne v4, v6, :cond_60

    move-object v5, v2

    :cond_76
    const-string v0, "in"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final scaleTo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v0, p1, :cond_14

    return-object p0

    .line 12
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2d

    int-to-float p1, p1

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    mul-float/2addr v0, v1

    goto :goto_3b

    :cond_2d
    int-to-float v0, p1

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    mul-float/2addr p1, v1

    :goto_3b
    float-to-int p1, p1

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 45
    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createScaledBitmap(this, width, height, filter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final scaleToAndCropBitmapToMultipleOf8KeepRatio(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0, p1}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->scaleTo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->cropBitmapToMultipleOf8KeepRatio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1c
    return-object v0
.end method
