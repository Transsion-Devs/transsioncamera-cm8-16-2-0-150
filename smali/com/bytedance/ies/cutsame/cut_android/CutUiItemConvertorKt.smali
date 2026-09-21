.class public final Lcom/bytedance/ies/cutsame/cut_android/CutUiItemConvertorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final mediaItemToVideoSegment(Ljava/util/List;Ljava/util/List;Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;"
        }
    .end annotation

    const-string v0, "oriVideoSegs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    check-cast p1, Ljava/lang/Iterable;

    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_15e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2d
    if-ge v2, v1, :cond_47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    invoke-virtual {v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getMaterialId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    check-cast v3, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    if-nez v3, :cond_4d

    goto :goto_1c

    .line 83
    :cond_4d
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setPath(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSourceStartTime()J

    move-result-wide v1

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setSourceStartTime(J)V

    .line 85
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsMutable(Z)V

    .line 86
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsReverse(Z)V

    .line 87
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setIsSubVideo(Z)V

    .line 88
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCartoonType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCartoonType(J)V

    .line 89
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getGamePlayAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setGameplayAlgorithm(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getAlignMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setAlignMode(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetStartTime()J

    move-result-wide v1

    mul-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setTargetStartTime(J)V

    .line 92
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getAlignMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "align_video"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 93
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getWidth()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setWidth(J)V

    .line 94
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getHeight()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setHeight(J)V

    goto :goto_c5

    .line 96
    :cond_af
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getCanvasConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->getWidth()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setWidth(J)V

    .line 97
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;->getCanvasConfig()Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/CanvasConfig;->getHeight()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setHeight(J)V

    .line 99
    :goto_c5
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCropScale()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setCropScale(D)V

    .line 100
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setType(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getOriDuration()J

    move-result-wide v1

    mul-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->setDuration(J)V

    .line 103
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftX(D)V

    .line 104
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperLeftY(D)V

    .line 106
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightX(D)V

    .line 107
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftY()F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setUpperRightY(D)V

    .line 109
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getUpperLeftX()F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftX(D)V

    .line 110
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerLeftY(D)V

    .line 112
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightX()F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightX(D)V

    .line 113
    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/ItemCrop;->getLowerRightY()F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->setLowerRightY(D)V

    goto/16 :goto_1c

    :cond_15e
    return-object v0
.end method

.method public static final textItemToTextSegment(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;",
            ">;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    check-cast p0, Ljava/lang/Iterable;

    .line 122
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/cut_ui/TextItem;

    .line 67
    new-instance v2, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;

    invoke-direct {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;-><init>()V

    .line 68
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/TextItem;->getMaterialId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->setMaterialId(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/TextItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->setText(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/TextItem;->getTargetStartTime()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->setTargetStartTime(J)V

    .line 71
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/TextItem;->getDuration()J

    move-result-wide v3

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->setDuration(J)V

    .line 72
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/TextItem;->getMutable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->setIsMutable(Z)V

    .line 73
    invoke-virtual {v1}, Lcom/ss/android/ugc/cut_ui/TextItem;->getRotation()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->setRotation(D)V

    .line 74
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_56
    return-object v0
.end method

.method public static final textSegmentToTextItem(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;"
        }
    .end annotation

    const-string v0, "textSegmentList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    check-cast p0, Ljava/lang/Iterable;

    .line 118
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;

    .line 15
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getMaterialId()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    move-wide v7, v4

    .line 17
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getIsMutable()Z

    move-result v5

    move-wide v9, v7

    .line 18
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getRotation()D

    move-result-wide v7

    .line 19
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getTargetStartTime()J

    move-result-wide v11

    div-long v9, v11, v9

    .line 20
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->getText()Ljava/lang/String;

    move-result-object v11

    move-wide v3, v2

    .line 14
    new-instance v2, Lcom/ss/android/ugc/cut_ui/TextItem;

    .line 15
    const-string v1, "materialId"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v1, "text"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct/range {v2 .. v11}, Lcom/ss/android/ugc/cut_ui/TextItem;-><init>(JZLjava/lang/String;DJLjava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_50
    return-object v0
.end method

.method public static final videoSegmentToMediaItem(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "videoSegmentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 120
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    .line 31
    new-instance v3, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 32
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getMaterialId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.materialId"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getTargetStartTime()J

    move-result-wide v5

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    move-wide v8, v7

    .line 34
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsMutable()Z

    move-result v7

    move-wide v9, v8

    .line 35
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getAlignMode()Ljava/lang/String;

    move-result-object v8

    const-string v11, "it.alignMode"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v10, v9

    .line 36
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsSubVideo()Z

    move-result v9

    move-wide v11, v10

    .line 37
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getIsReverse()Z

    move-result v10

    .line 38
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCartoonType()J

    move-result-wide v13

    long-to-int v13, v13

    move-wide v14, v11

    .line 39
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getGameplayAlgorithm()Ljava/lang/String;

    move-result-object v12

    const-string v11, "it.gameplayAlgorithm"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p0, v2

    move-object v11, v3

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getWidth()J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v16, v2

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getHeight()J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v17, v2

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getWidth()J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v18, v2

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getHeight()J

    move-result-wide v2

    long-to-int v2, v2

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getDuration()J

    move-result-wide v19

    div-long v19, v19, v14

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getDuration()J

    move-result-wide v21

    div-long v21, v21, v14

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v0

    const-string v0, "it.path"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getSourceStartTime()J

    move-result-wide v23

    div-long v23, v23, v14

    move v0, v2

    move-object/from16 v25, v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCropScale()D

    move-result-wide v2

    double-to-float v2, v2

    .line 49
    new-instance v3, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v26

    move-object/from16 v27, v4

    move-wide/from16 v28, v5

    invoke-virtual/range {v26 .. v26}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftX()D

    move-result-wide v4

    double-to-float v4, v4

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftY()D

    move-result-wide v5

    double-to-float v5, v5

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v6

    move/from16 v26, v7

    invoke-virtual {v6}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightX()D

    move-result-wide v6

    double-to-float v6, v6

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getCrop()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;

    move-result-object v7

    move-object/from16 v30, v8

    invoke-virtual {v7}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightY()D

    move-result-wide v7

    double-to-float v7, v7

    .line 49
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getTargetEndTime()J

    move-result-wide v5

    div-long/2addr v5, v14

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getRelationVideoGroup()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it.relationVideoGroup"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v32, 0x280000

    const/16 v33, 0x0

    move-object/from16 v31, v7

    move/from16 v7, v26

    move-object/from16 v26, v4

    move-object/from16 v4, v27

    const/16 v27, 0x0

    move-object/from16 v8, v30

    const/16 v30, 0x0

    move-wide/from16 v14, v28

    move-wide/from16 v28, v5

    move-wide v5, v14

    move/from16 v14, v17

    move/from16 v15, v18

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v22, v23

    move-object/from16 v21, v25

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object v3, v11

    move v11, v13

    move/from16 v13, v16

    move/from16 v16, v0

    .line 31
    invoke-direct/range {v3 .. v33}, Lcom/ss/android/ugc/cut_ui/MediaItem;-><init>(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v34

    goto/16 :goto_12

    :cond_11a
    return-object v1
.end method
