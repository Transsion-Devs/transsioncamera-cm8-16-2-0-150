.class public final Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;


# instance fields
.field private final frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;


# direct methods
.method public constructor <init>(Lcom/volcengine/ck/highlight/api/IFrameExtractor;)V
    .registers 3

    const-string v0, "frameExtractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    return-void
.end method

.method private final extractorWithCategoryAndScore(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;I)",
            "Lcom/volcengine/ck/highlight/data/HLExtractorResult;"
        }
    .end annotation

    .line 84
    check-cast p2, Ljava/lang/Iterable;

    .line 197
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/volcengine/ck/highlight/data/HLResult;

    .line 86
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireCategoryList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/volcengine/ck/highlight/data/HLResult;->getC3()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->filterCategory(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 88
    invoke-virtual {v3}, Lcom/volcengine/ck/highlight/data/HLResult;->getScore()Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->filterScore(Lcom/volcengine/ck/highlight/data/HLScore;)Z

    move-result v5

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-nez v2, :cond_2f

    goto :goto_4c

    .line 94
    :cond_2f
    invoke-virtual {v3}, Lcom/volcengine/ck/highlight/data/HLResult;->getScore()Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    if-nez v4, :cond_39

    move v4, v5

    goto :goto_3d

    :cond_39
    invoke-virtual {v4}, Lcom/volcengine/ck/highlight/data/HLScore;->getQualityScore()F

    move-result v4

    .line 95
    :goto_3d
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLResult;->getScore()Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object v6

    if-nez v6, :cond_44

    goto :goto_48

    :cond_44
    invoke-virtual {v6}, Lcom/volcengine/ck/highlight/data/HLScore;->getQualityScore()F

    move-result v5

    :goto_48
    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    :goto_4c
    move-object v2, v3

    goto :goto_8

    .line 104
    :cond_4e
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result v0

    const/4 v3, 0x0

    if-nez v2, :cond_56

    goto :goto_92

    .line 106
    :cond_56
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result v1

    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLResult;->getPtsMs()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v1, v4, v5, p3}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->isCenterFrame(IJI)Z

    move-result v1

    .line 107
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLResult;->getPtsMs()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, v4, v5, v6, p3}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->isEndFrame(IJI)Z

    move-result p0

    if-eqz v1, :cond_85

    .line 109
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 110
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLResult;->getPtsMs()I

    move-result p1

    sub-int v3, p1, p0

    .line 111
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLResult;->getPtsMs()I

    move-result p1

    add-int p3, p1, p0

    goto :goto_8f

    :cond_85
    if-eqz p0, :cond_8e

    .line 113
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result p0

    sub-int v3, p3, p0

    goto :goto_8f

    :cond_8e
    move p3, v0

    .line 105
    :goto_8f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v0, p3

    :goto_92
    const-string p0, "HLMMatch"

    if-nez v1, :cond_9b

    .line 117
    const-string p1, "extractorWithCategoryAndScore-> no matched HLResult"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_9b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    move v1, p3

    :cond_a2
    :goto_a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/volcengine/ck/highlight/data/HLResult;

    .line 123
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLResult;->getPtsMs()I

    move-result v4

    if-gt v3, v4, :cond_a2

    if-gt v4, v0, :cond_a2

    .line 124
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLResult;->getScore()Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object v2

    if-nez v2, :cond_be

    move v2, p2

    goto :goto_c2

    :cond_be
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLScore;->getQualityScore()F

    move-result v2

    :goto_c2
    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p3, v2

    goto :goto_a2

    :cond_c7
    cmpg-float p1, p3, p2

    if-nez p1, :cond_cc

    goto :goto_ce

    :cond_cc
    div-float p2, v1, p3

    .line 133
    :goto_ce
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractorWithCategoryAndScore-> maxValue:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " windowSize:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    const/4 p1, 0x3

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;-><init>(IIIF)V

    return-object p0
.end method

.method private final extractorWithScore(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;I)",
            "Lcom/volcengine/ck/highlight/data/HLExtractorResult;"
        }
    .end annotation

    .line 38
    check-cast p2, Ljava/lang/Iterable;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 195
    check-cast v1, Lcom/volcengine/ck/highlight/data/HLResult;

    .line 38
    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/data/HLResult;->getScore()Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object v1

    if-nez v1, :cond_25

    const/4 v1, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/data/HLScore;->getQualityScore()F

    move-result v1

    :goto_29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 41
    :cond_31
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result p2

    iget-object v1, p0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    invoke-interface {v1}, Lcom/volcengine/ck/highlight/api/IFrameExtractor;->frameGap()I

    move-result v1

    div-int/2addr p2, v1

    add-int/lit8 v1, p2, 0x1

    .line 43
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result v2

    iget-object v3, p0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    invoke-interface {v3}, Lcom/volcengine/ck/highlight/api/IFrameExtractor;->frameGap()I

    move-result v3

    mul-int/2addr v3, p2

    sub-int/2addr v2, v3

    .line 45
    sget-object p2, Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;

    invoke-virtual {p2, v0, v1}, Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;->findMax(Ljava/util/List;I)Lcom/volcengine/ck/highlight/utils/SlideWindowResult;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getMaxValue()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractorWithScore-> maxValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getMaxValue()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " windowSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " averageScore:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HLMMatch"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getStartIndex()I

    move-result v1

    if-nez v1, :cond_95

    .line 57
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getEndIndex()I

    move-result p1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/IFrameExtractor;->frameGap()I

    move-result p0

    mul-int/2addr p1, p0

    add-int p3, p1, v2

    const/4 p0, 0x0

    goto :goto_d2

    .line 60
    :cond_95
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getEndIndex()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_b6

    .line 61
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    invoke-interface {v1}, Lcom/volcengine/ck/highlight/api/IFrameExtractor;->frameGap()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    if-le v0, p3, :cond_b6

    .line 63
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireTime()I

    move-result p0

    sub-int p0, p3, p0

    goto :goto_d2

    .line 67
    :cond_b6
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getStartIndex()I

    move-result p1

    iget-object p3, p0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    invoke-interface {p3}, Lcom/volcengine/ck/highlight/api/IFrameExtractor;->frameGap()I

    move-result p3

    mul-int/2addr p1, p3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 68
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->getEndIndex()I

    move-result p2

    iget-object p0, p0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/IFrameExtractor;->frameGap()I

    move-result p0

    mul-int/2addr p2, p0

    add-int p3, p2, v2

    move p0, p1

    .line 71
    :goto_d2
    new-instance p1, Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p3, p2, v3}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;-><init>(IIIF)V

    return-object p1
.end method

.method private final filterCategory(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;)Z"
        }
    .end annotation

    .line 143
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/volcengine/ck/highlight/data/HLCategory;

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/data/HLCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/data/HLCategory;->getProb()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method private final filterScore(Lcom/volcengine/ck/highlight/data/HLScore;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private final hasMatchedCategory(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;)Z"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->getRequireCategoryList()Ljava/util/List;

    move-result-object p0

    .line 176
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    return v0

    .line 180
    :cond_c
    check-cast p2, Ljava/lang/Iterable;

    .line 201
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/volcengine/ck/highlight/data/HLResult;

    .line 181
    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/data/HLResult;->getC3()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 202
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/volcengine/ck/highlight/data/HLCategory;

    .line 182
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    add-int/lit8 p2, p2, 0x1

    :cond_41
    const/4 v2, 0x2

    if-lt p2, v2, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_46
    return v0
.end method

.method private final isCenterFrame(IJI)Z
    .registers 5

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    long-to-float p1, p2

    sub-float p2, p1, p0

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_14

    add-float/2addr p1, p0

    int-to-float p0, p4

    cmpg-float p0, p1, p0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private final isEndFrame(IJI)Z
    .registers 5

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    long-to-float p1, p2

    add-float/2addr p1, p0

    int-to-float p0, p4

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_15

    int-to-long p0, p4

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private final isFirstFrame(IJI)Z
    .registers 6

    int-to-float p0, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    long-to-float v0, p2

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_14

    int-to-long p0, p1

    add-long/2addr p2, p0

    int-to-long p0, p4

    cmp-long p0, p2, p0

    if-gtz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public extract(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;I)",
            "Lcom/volcengine/ck/highlight/data/HLExtractorResult;"
        }
    .end annotation

    const-string v0, "requirement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->hasMatchedCategory(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->extractorWithCategoryAndScore(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object p0

    return-object p0

    .line 30
    :cond_15
    invoke-direct {p0, p1, p2, p3}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;->extractorWithScore(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object p0

    return-object p0
.end method
