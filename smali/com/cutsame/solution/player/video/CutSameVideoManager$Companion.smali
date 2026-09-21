.class public final Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/player/video/CutSameVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addEndVideoToNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Landroid/content/Context;Lcom/cutsame/solution/player/video/MediaSource;)I
    .registers 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "nleModel"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "media:"

    .line 1
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CutSameVideoManager"

    invoke-static {v4, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;->removeEndVideoFromNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Z

    .line 7
    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->getMediaSrcPath()Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v5, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v5, v0, v2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 15
    :cond_48
    invoke-static {v0, v2}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->fileInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v0

    if-eqz v0, :cond_1a3

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getDuration()I

    move-result v5

    if-nez v5, :cond_56

    goto/16 :goto_1a3

    .line 22
    :cond_56
    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->getStartTimeMs()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_72

    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->getStartTimeMs()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getDuration()I

    move-result v9

    int-to-long v9, v9

    cmp-long v5, v5, v9

    if-gez v5, :cond_72

    .line 23
    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->getStartTimeMs()J

    move-result-wide v5

    goto :goto_73

    :cond_72
    move-wide v5, v7

    .line 29
    :goto_73
    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->getDurationMs()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-lez v7, :cond_8e

    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->getDurationMs()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getDuration()I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_8e

    .line 30
    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->getDurationMs()J

    move-result-wide v7

    goto :goto_94

    .line 32
    :cond_8e
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getDuration()I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v7, v5

    .line 35
    :goto_94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setEndVideo start:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " duration:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " vInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {v3}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->trackMaxLayer(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 38
    new-instance v11, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-direct {v11}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>()V

    .line 39
    invoke-virtual {v11, v9}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setLayer(I)V

    .line 40
    new-instance v9, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    invoke-direct {v9}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;-><init>()V

    .line 42
    invoke-static {v2}, Lcom/ss/android/vesdk/VEUtils;->getAudioFileInfoForAllTracks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const-string v13, "getAudioFileInfoForAllTracks(realPath)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v10

    .line 43
    new-instance v13, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    invoke-direct {v13}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;-><init>()V

    .line 45
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v14

    const/16 v15, 0x10e

    const/16 v10, 0x5a

    if-eq v14, v10, :cond_f4

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v14

    if-ne v14, v15, :cond_ef

    goto :goto_f4

    :cond_ef
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v14

    goto :goto_f8

    :cond_f4
    :goto_f4
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v14

    .line 47
    :goto_f8
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v15

    if-eq v15, v10, :cond_10c

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v10

    const/16 v15, 0x10e

    if-ne v10, v15, :cond_107

    goto :goto_10c

    :cond_107
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v10

    goto :goto_110

    :cond_10c
    :goto_10c
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v10

    .line 50
    :goto_110
    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->isVideo()Z

    move-result v15

    if-eqz v15, :cond_119

    sget-object v15, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    goto :goto_11b

    :cond_119
    sget-object v15, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    .line 51
    :goto_11b
    invoke-virtual {v13, v15}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 53
    invoke-virtual {v1}, Lcom/cutsame/solution/player/video/MediaSource;->isVideo()Z

    move-result v15

    if-eqz v15, :cond_130

    .line 54
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v15, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    goto :goto_136

    .line 57
    :cond_130
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    .line 58
    :goto_136
    invoke-virtual {v13, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setDuration(J)V

    int-to-long v0, v10

    .line 64
    invoke-virtual {v13, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setHeight(J)V

    int-to-long v0, v14

    .line 65
    invoke-virtual {v13, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setWidth(J)V

    .line 67
    invoke-virtual {v13, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v13, v12}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;->setHasAudio(Z)V

    .line 69
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    invoke-virtual {v9, v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setAVFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipStart(J)V

    add-long/2addr v5, v7

    .line 91
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipEnd(J)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {v9, v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setKeepTone(Z)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Lcom/cutsame/solution/player/video/MediaSource;->getVolume()F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setVolume(F)V

    .line 95
    invoke-virtual {v11, v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->setMainSegment(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)V

    .line 123
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getDuration()J

    move-result-wide v0

    .line 124
    invoke-virtual {v11, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 125
    invoke-virtual {v11}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    .line 128
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 130
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v0

    invoke-virtual {v11}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_video_slot_id"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->timeSort()V

    .line 134
    invoke-virtual {v11}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setEndVideo slot: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1a3
    :goto_1a3
    const-string v1, "setEndVideo fail since by video info is invalid! "

    .line 135
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0
.end method

.method public final addTransitionToNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/cutsame/solution/player/video/MediaSource;Z)I
    .registers 14

    const-string p0, "nleModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "media"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, -0x3

    const-string v2, "CutSameVideoManager"

    if-ge p1, v0, :cond_2a

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "slotSize must >= 2, current slotSize is "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "current track slot size = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    const-string v0, "nleTrack.sortedSlots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_af

    move v4, v3

    :goto_53
    add-int/lit8 v5, v0, -0x1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "end_video_slot_id"

    invoke-virtual {p0, v8}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    goto :goto_aa

    .line 20
    :cond_6e
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v7

    if-nez v7, :cond_79

    goto :goto_8e

    .line 21
    :cond_79
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it.avFile.resourceFile"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_8e

    const/4 v4, 0x1

    move-object p1, v6

    :cond_8e
    :goto_8e
    if-eqz v4, :cond_aa

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found target slot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] to add transition"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :cond_aa
    :goto_aa
    if-gez v5, :cond_ad

    goto :goto_b0

    :cond_ad
    move v0, v5

    goto :goto_53

    :cond_af
    move v4, v3

    :goto_b0
    if-nez v4, :cond_b8

    const-string p0, "could not find target slot to add transition"

    .line 34
    invoke-static {v2, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 39
    :cond_b8
    invoke-virtual {p2}, Lcom/cutsame/solution/player/video/MediaSource;->getMediaSrcPath()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_d2

    const-string p0, " is not exist"

    .line 41
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 45
    :cond_d2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Lcom/cutsame/solution/player/video/MediaSource;->getDurationMs()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    .line 46
    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 47
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v8

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransitionTimeRange ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getEndTransition()Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    move-result-object p2

    const-string v1, ", duration: "

    if-nez p2, :cond_112

    const/4 p2, 0x0

    goto :goto_139

    :cond_112
    const-string v6, "updateTransition slot: "

    .line 52
    invoke-static {v6}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->setTransitionDuration(J)V

    .line 54
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->getEffectSDKTransition()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->setOverlap(Z)V

    :goto_139
    if-nez p2, :cond_175

    .line 56
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;

    invoke-direct {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;-><init>()V

    .line 57
    invoke-virtual {p2, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->setTransitionDuration(J)V

    .line 58
    new-instance v6, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    invoke-direct {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>()V

    const-string v7, "addTransition slot: "

    .line 59
    invoke-static {v7}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->TRANSITION:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v6, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 62
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    invoke-virtual {p2, v6}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->setEffectSDKTransition(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    .line 69
    invoke-virtual {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;->setOverlap(Z)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->setEndTransition(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTransition;)V

    .line 73
    :cond_175
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->timeSort()V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->delete()V

    return v3
.end method

.method public final removeEndVideoFromNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Z
    .registers 6

    const-string p0, "nleModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object p0

    const-string v0, "end_video_slot_id"

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_5b

    .line 4
    :cond_19
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const-string v2, "nleModel.mainTrack.sortedSlots"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-nez v2, :cond_48

    goto :goto_50

    .line 5
    :cond_48
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->removeSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    const/4 v0, 0x1

    .line 8
    :goto_50
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack()Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->delete()V

    .line 10
    :cond_5b
    :goto_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeEndVideo track: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", hasChange: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CutSameVideoManager"

    invoke-static {p1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
