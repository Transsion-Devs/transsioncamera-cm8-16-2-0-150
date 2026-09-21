.class public final Lcom/cutsame/solution/source/resource/LVTemplateResource;
.super Lcom/cutsame/solution/source/resource/TemplateResource;
.source "SourceFile"


# instance fields
.field public final e:Lcom/cutsame/solution/source/SourceInfo;

.field public f:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cutsame/solution/source/SourceInfo;Lcom/cutsame/solution/config/EffectFetcherConfig;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cutsame/solution/source/resource/TemplateResource;-><init>(Landroid/content/Context;Lcom/cutsame/solution/source/SourceInfo;Lcom/cutsame/solution/config/EffectFetcherConfig;)V

    .line 2
    iput-object p2, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    .line 8
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->a()V

    return-void
.end method

.method public static final synthetic access$createTemplateSource(Lcom/cutsame/solution/source/resource/LVTemplateResource;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createTemplateSource"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getCutSource()Lcom/ss/android/ugc/cut_ui/CutSource;

    move-result-object v2

    iget-object v3, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v3}, Lcom/cutsame/solution/source/SourceInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v4}, Lcom/cutsame/solution/source/SourceInfo;->getCacheConfig()Lcom/cutsame/solution/source/CacheConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cutsame/solution/source/CacheConfig;->getEnableEffectPathCache()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;-><init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->setTemplateSource$CutSameIF_release(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)V

    .line 3
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getNetworkFetcherAdapter$CutSameIF_release()Lcom/cutsame/solution/core/NetworkFetcherAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->setNetworkFileFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;)V

    .line 5
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/SourceInfo;->isOfflineModel()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 6
    new-instance v0, Lcom/cutsame/solution/source/effect/OfflineEffectFetcher;

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getCutSource()Lcom/ss/android/ugc/cut_ui/CutSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/source/effect/OfflineEffectFetcher;-><init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;)V

    .line 7
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->setEffectResourceFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V

    return-void

    .line 9
    :cond_51
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getEffectFetcher$CutSameIF_release()Lcom/cutsame/solution/source/effect/EffectFetcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->setEffectResourceFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V

    return-void
.end method

.method public final compatibleLVTemplate(Ljava/util/ArrayList;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 12

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "model"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p0

    const-string p2, "model.tracks"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 33
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v1

    sget-object v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v1, v2, :cond_1c

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 65
    :cond_35
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :cond_3b
    if-ge v1, p0, :cond_a3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 66
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    const-string v3, "it.sortedSlots"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 98
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v4

    if-nez v4, :cond_69

    goto :goto_52

    .line 99
    :cond_69
    invoke-static {v4}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v4}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMutable(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "false"

    .line 101
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_52

    .line 104
    :cond_7a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v0

    :cond_7f
    if-ge v6, v4, :cond_95

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    check-cast v8, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 105
    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    goto :goto_96

    :cond_95
    const/4 v7, 0x0

    .line 106
    :goto_96
    check-cast v7, Lcom/ss/android/ugc/cut_ui/MediaItem;

    if-nez v7, :cond_9b

    goto :goto_52

    .line 109
    :cond_9b
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/ss/android/ugc/cut_ui/MediaItem;->setCropScale(F)V

    goto :goto_52

    :cond_a3
    return-void
.end method

.method public final getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource;->f:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "templateSource"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initMaterial(Ljava/util/List;Ljava/util/List;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 11

    const-string v0, "nleModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lv insertItems nleModel: "

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_15

    goto :goto_1c

    .line 3
    :cond_15
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p3, p0, p1}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->insertMediaItems(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Landroid/content/Context;Ljava/util/List;)V

    :goto_1c
    if-nez p2, :cond_1f

    goto :goto_22

    .line 6
    :cond_1f
    invoke-static {p3, p2}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->insertTextItems(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/util/List;)V

    .line 9
    :goto_22
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p0

    const-string p1, "nleModel.tracks"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_103

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p2

    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne p2, v0, :cond_6d

    .line 68
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getKeyframeSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p2

    if-nez p2, :cond_4a

    goto :goto_6d

    .line 124
    :cond_4a
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformX(F)V

    .line 126
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformY(F)V

    goto :goto_4e

    .line 129
    :cond_6d
    :goto_6d
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p2

    const-string v0, "track.slots"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 183
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getKeyframeSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v1

    if-lez v1, :cond_d8

    .line 184
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframesUUIDList()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v1

    const-string v2, "slot.keyframesUUIDList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getKeyframeSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v3

    const-string v4, "track.keyframeSlots"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    goto :goto_cf

    :cond_ce
    const/4 v4, 0x0

    :goto_cf
    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-nez v4, :cond_d4

    goto :goto_9d

    .line 237
    :cond_d4
    invoke-virtual {v0, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->addKeyframe(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_9d

    .line 242
    :cond_d8
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const-string v2, "slot.keyframes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 290
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    goto :goto_e5

    .line 293
    :cond_fe
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->clearKeyframeSlot()V

    goto/16 :goto_2f

    :cond_103
    return-object p3
.end method

.method public prepareSource(Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lv prepareSource"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object v0

    new-instance v1, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;

    invoke-direct {v1, p0, p1}, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;-><init>(Lcom/cutsame/solution/source/resource/LVTemplateResource;Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->addPrepareListener(Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareAsync()V

    return-void
.end method

.method public release()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->releaseObject()V

    return-void
.end method

.method public final setTemplateSource$CutSameIF_release(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource;->f:Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    return-void
.end method
