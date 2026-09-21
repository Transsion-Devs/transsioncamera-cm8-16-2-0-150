.class public final Lcom/bytedance/ugc/recorder/template/TrackCollectChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ugc/recorder/template/IConvertorChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/recorder/template/TrackCollectChain$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ugc/recorder/template/TrackCollectChain$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final enableLog:Z

.field private final targetSlot:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->Companion:Lcom/bytedance/ugc/recorder/template/TrackCollectChain$Companion;

    .line 21
    const-string v0, "TrackCollectChain"

    sput-object v0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 3

    const-string v0, "targetSlot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->targetSlot:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->enableLog:Z

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .registers 1

    .line 16
    sget-object v0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final checkIsValid(ZLcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 11

    const/4 p0, 0x0

    .line 140
    const-string v0, "newModel.tracks"

    if-eqz p1, :cond_58

    .line 141
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 141
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_25

    :cond_24
    move-object v1, p0

    .line 142
    :goto_25
    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    if-nez v1, :cond_2a

    goto :goto_58

    :cond_2a
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    if-nez p1, :cond_31

    goto :goto_58

    .line 254
    :cond_31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 143
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v3

    if-nez v3, :cond_4c

    goto :goto_35

    .line 144
    :cond_4c
    invoke-static {v3}, Lcom/bytedance/ugc/nlerecorder/NLEExtentionKt;->getVideoSourceType(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->MEDIA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    if-ne v3, v4, :cond_35

    .line 145
    invoke-virtual {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->removeSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    goto :goto_35

    .line 151
    :cond_58
    :goto_58
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_68
    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 151
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v2, v3, :cond_68

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 259
    :cond_81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_86
    if-ge v1, p1, :cond_bd

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 152
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v3

    const-string v4, "track.sortedSlots"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-nez v3, :cond_a2

    goto :goto_86

    :cond_a2
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_b6

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b5

    goto :goto_b6

    :cond_b5
    move-object v3, p0

    :cond_b6
    :goto_b6
    if-nez v3, :cond_b9

    goto :goto_86

    .line 154
    :cond_b9
    invoke-virtual {p2, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->removeTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    goto :goto_86

    :cond_bd
    return-void
.end method

.method private final clearChildren(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 2

    .line 161
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->clearSlot()V

    .line 162
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->clearVideoEffect()V

    .line 163
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->clearFilter()V

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->clearKeyframeSlot()V

    .line 165
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->clearExtra()V

    return-void
.end method

.method private final collectEffectTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;JJJLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 26

    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_57

    .line 262
    :cond_b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 176
    const-string v5, "videoEffect"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v5, p4

    invoke-static {v4, v0, v1, v5, v6}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->hit(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JJ)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 177
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v7

    sub-long v9, v7, v0

    .line 178
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    const-wide/16 v11, 0x0

    move-wide/from16 v13, p6

    .line 180
    invoke-static/range {v9 .. v14}, Lcom/bytedance/ugc/recorder/template/MathUitlsKt;->between(JJJ)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    move-wide/from16 v15, p6

    move-wide v11, v7

    .line 181
    invoke-static/range {v11 .. v16}, Lcom/bytedance/ugc/recorder/template/MathUitlsKt;->between(JJJ)J

    move-result-wide v7

    .line 182
    invoke-virtual {v4, v9, v10}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredStartTime(J)V

    .line 183
    invoke-virtual {v4, v7, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredEndTime(J)V

    .line 184
    invoke-virtual {v4, v9, v10}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 185
    invoke-virtual {v4, v7, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    if-nez v2, :cond_53

    goto :goto_f

    .line 187
    :cond_53
    invoke-virtual {v2, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addVideoEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_f

    :cond_57
    :goto_57
    return-void
.end method

.method private final collectFilterTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;JJJLcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 15

    .line 201
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_51

    .line 264
    :cond_7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    .line 202
    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->hit(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JJ)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 203
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 204
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x0

    .line 206
    invoke-static {v0, v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredStartTime(J)V

    .line 207
    invoke-static {v2, v3, p6, p7}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredEndTime(J)V

    .line 208
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 209
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredEndTime(J)V

    :cond_4a
    if-nez p8, :cond_4d

    goto :goto_b

    .line 211
    :cond_4d
    invoke-virtual {p8, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)V

    goto :goto_b

    :cond_51
    :goto_51
    return-void
.end method

.method private final collectVideoSlots(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)V
    .registers 15

    .line 221
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p0

    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne p0, p1, :cond_76

    .line 223
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_4e

    .line 266
    :cond_f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    .line 224
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide p3

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v0

    sub-long v2, p3, v0

    .line 225
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide p3

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v4, 0x0

    .line 227
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getDuration()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/bytedance/ugc/recorder/template/MathUitlsKt;->between(JJJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    const-wide/16 v6, 0x0

    .line 228
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getDuration()J

    move-result-wide v8

    move-wide v4, p3

    invoke-static/range {v4 .. v9}, Lcom/bytedance/ugc/recorder/template/MathUitlsKt;->between(JJJ)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_13

    .line 233
    :cond_4e
    :goto_4e
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMasks()Lcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;

    move-result-object p0

    if-nez p0, :cond_55

    goto :goto_76

    .line 268
    :cond_55
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_59
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLEMask;

    .line 234
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMask;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;

    move-result-object p1

    if-nez p1, :cond_6c

    goto :goto_59

    .line 235
    :cond_6c
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getMaskType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "geometric_shape"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_59

    :cond_76
    :goto_76
    return-void
.end method


# virtual methods
.method public onNext(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 37

    move-object/from16 v0, p0

    if-eqz p1, :cond_2af

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v1

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v9

    .line 29
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->clearTrack()V

    .line 31
    iget-object v2, v0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->targetSlot:Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v10

    .line 32
    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v2

    .line 33
    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v4

    .line 35
    iget-boolean v6, v0, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->enableLog:Z

    const-string v11, "  endTime =  "

    if-eqz v6, :cond_53

    .line 37
    sget-object v6, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->TAG:Ljava/lang/String;

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target Slot onNext = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    sub-long v6, v4, v2

    .line 45
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getSortedTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object v1

    const-string v8, "preModel.sortedTracks"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_67
    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 45
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v13

    if-lez v13, :cond_67

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 248
    :cond_82
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x0

    move v13, v12

    :goto_88
    if-ge v13, v1, :cond_2a6

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v18, v13, 0x1

    check-cast v14, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 48
    invoke-virtual {v14}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v13

    const-string v15, "track"

    const/16 v16, 0x0

    if-nez v13, :cond_b4

    move-object/from16 p1, v16

    move-object/from16 v16, v8

    move-object/from16 v8, p1

    :goto_a2
    move/from16 p1, v1

    move-wide/from16 v24, v2

    move-wide/from16 v28, v4

    move-object/from16 v17, v10

    move-object/from16 v30, v11

    move-object v3, v14

    move-wide/from16 v31, v6

    move-object v7, v15

    move-wide/from16 v14, v31

    goto/16 :goto_27a

    .line 249
    :cond_b4
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v20, v12

    move-object/from16 v21, v16

    :goto_bc
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_272

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 49
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v13

    move/from16 p1, v1

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v13, ""

    if-eqz v1, :cond_13d

    if-nez v21, :cond_ed

    .line 51
    invoke-virtual {v14}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v1

    .line 52
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->clearChildren(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 53
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_ef

    :cond_ed
    move-object/from16 v1, v21

    :goto_ef
    if-nez v1, :cond_f2

    goto :goto_f5

    .line 55
    :cond_f2
    invoke-virtual {v1, v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 56
    :goto_f5
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v13

    invoke-static {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v13

    if-nez v13, :cond_102

    move-object/from16 v16, v1

    goto :goto_109

    :cond_102
    move-object/from16 v16, v1

    .line 57
    sget-object v1, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    invoke-static {v13, v1}, Lcom/bytedance/ugc/nlerecorder/NLEExtentionKt;->setVideoSourceType(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;Lcom/bytedance/ugc/nlerecorder/VideoSourceType;)V

    .line 59
    :goto_109
    invoke-virtual {v14}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v1

    move-object/from16 v17, v14

    const-wide/16 v13, 0x0

    .line 60
    invoke-virtual {v12, v13, v14}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 61
    invoke-virtual {v12, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    .line 62
    invoke-virtual {v12, v13, v14}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredStartTime(J)V

    .line 63
    invoke-virtual {v12, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredEndTime(J)V

    .line 75
    const-string v12, "offset"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v20, v6

    move-object v7, v15

    move-wide/from16 v14, v20

    move/from16 v20, v1

    move-wide/from16 v24, v2

    move-wide/from16 v28, v4

    move-object/from16 v30, v11

    move-object/from16 v21, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v8

    :goto_139
    move-object/from16 v17, v10

    goto/16 :goto_260

    :cond_13d
    move-object/from16 v17, v14

    .line 77
    const-string v1, "slot"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v2, v3, v4, v5}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->hit(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JJ)Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 78
    sget-object v1, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getClassType()Lcom/bytedance/ies/nle/editor_jni/NLEClassType;

    move-result-object v14

    move-wide/from16 v22, v6

    const-string v6, "----- slot -- start  -- "

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target Slot startTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current startTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v24, v2

    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    .line 84
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v6

    sub-long v6, v6, v24

    .line 85
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v26

    sub-long v26, v26, v24

    move-object v3, v15

    const-wide/16 v14, 0x0

    move-wide/from16 v31, v22

    move-object/from16 v22, v2

    move-object v2, v13

    move-wide/from16 v33, v6

    move-object v7, v3

    move-object v6, v12

    move-object/from16 v3, v17

    move-wide/from16 v16, v31

    move-wide/from16 v12, v33

    .line 87
    invoke-static/range {v12 .. v17}, Lcom/bytedance/ugc/recorder/template/MathUitlsKt;->between(JJJ)J

    move-result-wide v12

    move-wide/from16 v28, v4

    move-wide v4, v12

    move-wide/from16 v12, v26

    .line 88
    invoke-static/range {v12 .. v17}, Lcom/bytedance/ugc/recorder/template/MathUitlsKt;->between(JJJ)J

    move-result-wide v12

    move-wide/from16 v14, v16

    .line 89
    invoke-static/range {v22 .. v22}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object v16

    if-eqz v16, :cond_219

    move-object/from16 v16, v8

    .line 90
    invoke-static/range {v22 .. v22}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object v8

    if-nez v8, :cond_1e1

    :goto_1dc
    move-object/from16 v17, v10

    move-object/from16 v30, v11

    goto :goto_21c

    .line 91
    :cond_1e1
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v22

    cmp-long v17, v22, v24

    if-gez v17, :cond_1fd

    .line 92
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v22

    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v26

    sub-long v26, v24, v26

    move-object/from16 v17, v10

    move-object/from16 v30, v11

    add-long v10, v22, v26

    invoke-virtual {v8, v10, v11}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipStart(J)V

    goto :goto_201

    :cond_1fd
    move-object/from16 v17, v10

    move-object/from16 v30, v11

    .line 94
    :goto_201
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v10

    cmp-long v10, v10, v28

    if-lez v10, :cond_21c

    .line 95
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v22

    sub-long v22, v28, v22

    add-long v10, v10, v22

    invoke-virtual {v8, v10, v11}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipEnd(J)V

    goto :goto_21c

    :cond_219
    move-object/from16 v16, v8

    goto :goto_1dc

    .line 100
    :cond_21c
    :goto_21c
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredStartTime(J)V

    .line 101
    invoke-virtual {v6, v12, v13}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setMeasuredEndTime(J)V

    .line 102
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 103
    invoke-virtual {v6, v12, v13}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    if-nez v21, :cond_23b

    .line 105
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v4

    .line 106
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->clearChildren(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 107
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_23d

    :cond_23b
    move-object/from16 v4, v21

    .line 110
    :goto_23d
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, v6, v14, v15}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->collectVideoSlots(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;J)V

    if-nez v4, :cond_246

    goto :goto_249

    .line 111
    :cond_246
    invoke-virtual {v4, v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 112
    :goto_249
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v4

    goto :goto_260

    :cond_24f
    move-wide/from16 v24, v6

    move-object v7, v15

    move-wide/from16 v14, v24

    move-wide/from16 v24, v2

    move-wide/from16 v28, v4

    move-object/from16 v16, v8

    move-object/from16 v30, v11

    move-object/from16 v3, v17

    goto/16 :goto_139

    :goto_260
    move-wide v1, v14

    move-object v15, v7

    move-wide v6, v1

    move/from16 v1, p1

    move-object v14, v3

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-wide/from16 v2, v24

    move-wide/from16 v4, v28

    move-object/from16 v11, v30

    goto/16 :goto_bc

    :cond_272
    move-object/from16 v16, v8

    move/from16 v12, v20

    move-object/from16 v8, v21

    goto/16 :goto_a2

    .line 118
    :goto_27a
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v10, p1

    move-object v1, v3

    move-wide v6, v14

    move-wide/from16 v2, v24

    move-wide/from16 v4, v28

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->collectFilterTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;JJJLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 120
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->collectEffectTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;JJJLcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    if-nez v8, :cond_28e

    goto :goto_29b

    .line 122
    :cond_28e
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v1

    if-lez v1, :cond_29b

    .line 123
    invoke-virtual {v9, v8}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->addTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    :cond_29b
    :goto_29b
    move v1, v10

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move/from16 v13, v18

    move-object/from16 v11, v30

    goto/16 :goto_88

    .line 127
    :cond_2a6
    const-string v1, "newModel"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v12, v9}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;->checkIsValid(ZLcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-object v9

    :cond_2af
    return-object p1
.end method
