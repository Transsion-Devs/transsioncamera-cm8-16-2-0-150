.class public final Lcom/bytedance/ies/cutsame/cut_android/OptExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/OptExtra;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/OptExtra;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/OptExtra;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/OptExtra;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/OptExtra;

    .line 11
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->init()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAlgorithmsKey(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_19

    const/4 p0, 0x2

    if-eq p1, p0, :cond_16

    const/4 p0, 0x4

    if-eq p1, p0, :cond_13

    const/16 p0, 0x8

    if-eq p1, p0, :cond_10

    .line 65
    const-string p0, ""

    return-object p0

    .line 64
    :cond_10
    const-string p0, "jzcartoon"

    return-object p0

    .line 63
    :cond_13
    const-string p0, "tccartoon"

    return-object p0

    .line 62
    :cond_16
    const-string p0, "hkcartoon"

    return-object p0

    .line 61
    :cond_19
    const-string p0, "Comic-cut"

    return-object p0
.end method


# virtual methods
.method public final getFromOptExtra(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;"
        }
    .end annotation

    const-string p0, "extra"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1b

    goto/16 :goto_102

    .line 17
    :cond_1b
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->getFragments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_23

    goto/16 :goto_102

    :cond_23
    check-cast v0, Ljava/lang/Iterable;

    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;

    .line 18
    new-instance v2, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    invoke-direct {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;-><init>()V

    .line 19
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getMaterialId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setMaterialId(Ljava/lang/String;)V

    .line 20
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setPath(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 21
    invoke-virtual {v2, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setSourceStartTime(J)V

    .line 22
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getDuration()J

    move-result-wide v4

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setDuration(J)V

    const/4 v4, 0x1

    .line 24
    invoke-virtual {v2, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsMutable(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->getAlignMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setAlignMode(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getVideoWidth()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setWidth(J)V

    .line 27
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getVideoHeight()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setHeight(J)V

    const/4 v5, 0x0

    .line 29
    invoke-virtual {v2, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsReverse(Z)V

    .line 30
    invoke-virtual {v2, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsSubVideo(Z)V

    .line 31
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsCartoon(Z)V

    .line 33
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon()Z

    move-result v5

    if-eqz v5, :cond_88

    const-wide/16 v5, 0x1

    goto :goto_8d

    :cond_88
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getCartoonType()I

    move-result v5

    int-to-long v5, v5

    .line 32
    :goto_8d
    invoke-virtual {v2, v5, v6}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCartoonType(J)V

    .line 36
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getGamePlayAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_9f

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getGamePlayAlgorithm()Ljava/lang/String;

    move-result-object v1

    goto :goto_b6

    .line 37
    :cond_9f
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->isCartoon()Z

    move-result v5

    if-eqz v5, :cond_ac

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/OptExtra;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/OptExtra;

    invoke-direct {v1, v4}, Lcom/bytedance/ies/cutsame/cut_android/OptExtra;->getAlgorithmsKey(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b6

    .line 38
    :cond_ac
    sget-object v4, Lcom/bytedance/ies/cutsame/cut_android/OptExtra;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/OptExtra;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;->getCartoonType()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/bytedance/ies/cutsame/cut_android/OptExtra;->getAlgorithmsKey(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_b6
    invoke-virtual {v2, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setGameplayAlgorithm(Ljava/lang/String;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 40
    invoke-virtual {v2, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCropScale(D)V

    .line 41
    invoke-virtual {v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setType(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftX(D)V

    .line 44
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftY(D)V

    .line 46
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightX(D)V

    .line 47
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightY(D)V

    .line 49
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftX(D)V

    .line 50
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftY(D)V

    .line 52
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightX(D)V

    .line 53
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightY(D)V

    .line 54
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_102
    :goto_102
    return-object p1
.end method
