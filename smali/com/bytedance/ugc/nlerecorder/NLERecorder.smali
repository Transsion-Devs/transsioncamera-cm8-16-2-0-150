.class public final Lcom/bytedance/ugc/nlerecorder/NLERecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/nlerecorder/NLERecorder$Companion;,
        Lcom/bytedance/ugc/nlerecorder/NLERecorder$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ugc/nlerecorder/NLERecorder$Companion;

.field public static final DEFAULT_WIDTH:I = 0x2d0

.field public static final TAG:Ljava/lang/String; = "NLERecorder"


# instance fields
.field private canvasRatio:F

.field private canvasWidth:I

.field private curAudioTrackIndex:I

.field private curSmallWindowVideoTrackIndex:Ljava/lang/Integer;

.field private currentMainTrackIndex:I

.field private dataSource:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field private final exceptTrack:Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;

.field private indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

.field private lastStageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field private final random$delegate:Lkotlin/Lazy;

.field private final veRecorder:Lcom/ss/android/vesdk/VERecorder;


# direct methods
.method public static synthetic $r8$lambda$3w7dxglduc4JoTAM_DGEp_oD1BE(Lkotlin/jvm/functions/Function0;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->checkStopPrePlay$lambda-3(Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->Companion:Lcom/bytedance/ugc/nlerecorder/NLERecorder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VERecorder;)V
    .registers 3

    const-string v0, "veRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    const/high16 p1, 0x3f100000    # 0.5625f

    .line 36
    iput p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->canvasRatio:F

    const/16 p1, 0x2d0

    .line 37
    iput p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->canvasWidth:I

    .line 38
    new-instance p1, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-direct {p1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    .line 336
    sget-object p1, Lcom/bytedance/ugc/nlerecorder/NLERecorder$random$2;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/NLERecorder$random$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->random$delegate:Lkotlin/Lazy;

    .line 1414
    new-instance p1, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;

    invoke-direct {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;-><init>()V

    .line 1415
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;->add(Lcom/bytedance/ies/nle/editor_jni/NLETrackType;)Z

    .line 1416
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;->add(Lcom/bytedance/ies/nle/editor_jni/NLETrackType;)Z

    .line 1417
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1414
    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->exceptTrack:Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;

    return-void
.end method

.method public static final synthetic access$addOrUpdateSmallWindowTrack(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSmallWindowTrack(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method

.method public static final synthetic access$getLastStageModel$p(Lcom/bytedance/ugc/nlerecorder/NLERecorder;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->lastStageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-object p0
.end method

.method public static final synthetic access$incrementRecorder(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Ljava/util/List;)I
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->incrementRecorder(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$rebuild(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->rebuild(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method

.method public static final synthetic access$setLastStageModel$p(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->lastStageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-void
.end method

.method private final addCameraSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 12

    .line 847
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p3

    .line 848
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v0

    .line 849
    new-instance v1, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 850
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v2

    .line 851
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v3

    if-nez v3, :cond_25

    move v4, p3

    goto :goto_2d

    .line 852
    :cond_25
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v4

    :goto_2d
    if-nez v3, :cond_31

    move v3, v0

    goto :goto_39

    .line 853
    :cond_31
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v3

    .line 854
    :goto_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCameraSlot end = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeClipEnd = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_5a

    move v5, v0

    goto :goto_5e

    .line 855
    :cond_5a
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getLayer()I

    move-result v5

    .line 857
    :goto_5e
    invoke-virtual {v1, p3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    sub-int/2addr v3, v4

    .line 858
    invoke-virtual {v1, v3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 859
    invoke-virtual {v1, v6, v7}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 860
    invoke-virtual {v1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 861
    invoke-virtual {v1, v3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 862
    invoke-virtual {v1, v5}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    if-eqz v2, :cond_78

    .line 864
    sget-object p3, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->HOST:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    goto :goto_7a

    .line 866
    :cond_78
    sget-object p3, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 863
    :goto_7a
    invoke-virtual {v1, p3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 870
    iget-object p3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez p3, :cond_82

    goto :goto_89

    .line 873
    :cond_82
    invoke-virtual {v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object v1

    .line 870
    invoke-virtual {p3, v0, v0, v1}, Lcom/ss/android/vesdk/VERecorder;->updateTrack(IILcom/ss/android/ttve/model/VETrackParams;)I

    :goto_89
    if-eqz v2, :cond_8d

    .line 878
    iput v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    .line 880
    :cond_8d
    iget-object p3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "newTrack.uuid"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v1, v0}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackIndex(Ljava/lang/String;I)V

    .line 881
    iget-object p3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "newSlot.uuid"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v1, v0}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackIndexForSlot(Ljava/lang/String;I)V

    if-eqz v2, :cond_ae

    .line 883
    invoke-direct {p0, p2, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->setCanvas(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 885
    :cond_ae
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->updateVideoTrans(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 886
    invoke-static {p0, p1, v0, p2, p3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotFilter$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IILjava/lang/Object;)V

    .line 887
    invoke-static {p0, p1, v0, p2, p3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotMask$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IILjava/lang/Object;)V

    .line 888
    invoke-direct {p0, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotCrop(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method static synthetic addCameraSlot$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 842
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addCameraSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void
.end method

.method private final addOrUpdateEffectSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 4

    .line 460
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 461
    :cond_b
    new-instance p2, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-direct {p2}, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;-><init>()V

    .line 462
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;->getStickerResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    .line 463
    invoke-direct {p0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->getRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p2, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->reqId:I

    .line 464
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffectSticker;->getStickerTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 465
    iput-boolean p1, p2, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->needReload:Z

    .line 467
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VERecorder;->switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    return-void
.end method

.method private final addOrUpdateSlotChroma(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 12

    .line 773
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getChromaChannels()Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;

    move-result-object p2

    if-nez p2, :cond_8

    goto/16 :goto_b1

    .line 1576
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;

    .line 774
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_c

    .line 775
    :cond_23
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getEffectSDKChroma()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_c

    .line 776
    :cond_2e
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    .line 777
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"color\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getColor()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->ARGB2RGBA(J)Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",\"intensity\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getIntensity()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",\"shadow\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getShadow()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    iput-object v2, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 781
    iput-object v1, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 782
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformZ()I

    move-result v0

    iput v0, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    const/4 v0, 0x1

    .line 783
    iput v0, v6, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 785
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newSlot.uuid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackIndexBySlot(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 786
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v7

    .line 787
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v8

    .line 788
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez v0, :cond_a6

    const/4 v0, 0x0

    :goto_a4
    move-object v3, v0

    goto :goto_ab

    :cond_a6
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v0

    goto :goto_a4

    :goto_ab
    const/4 v4, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    goto/16 :goto_c

    :cond_b1
    :goto_b1
    return-void
.end method

.method private final addOrUpdateSlotCrop(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 18

    move-object/from16 v0, p0

    .line 957
    iget-object v1, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "newSlot.uuid"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackIndexBySlot(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 959
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v8

    .line 960
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v9

    .line 961
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v1

    if-nez v1, :cond_34

    goto/16 :goto_c3

    :cond_34
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCrop()Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    move-result-object v1

    if-nez v1, :cond_3c

    goto/16 :goto_c3

    .line 962
    :cond_3c
    new-instance v7, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;

    invoke-direct {v7}, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;-><init>()V

    .line 965
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getXLeft()F

    move-result v2

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getYUpper()F

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getXRightUpper()F

    move-result v5

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getYRightUpper()F

    move-result v10

    .line 966
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getXLeftLower()F

    move-result v11

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getYLeftLower()F

    move-result v12

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getXRight()F

    move-result v13

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;->getYLower()F

    move-result v1

    const/16 v14, 0x8

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v2, v14, v15

    const/4 v2, 0x1

    aput v4, v14, v2

    const/4 v2, 0x2

    aput v5, v14, v2

    const/4 v2, 0x3

    aput v10, v14, v2

    const/4 v2, 0x4

    aput v11, v14, v2

    const/4 v2, 0x5

    aput v12, v14, v2

    const/4 v2, 0x6

    aput v13, v14, v2

    const/4 v2, 0x7

    aput v1, v14, v2

    .line 963
    iput-object v14, v7, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    .line 970
    iget-object v1, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "crop"

    invoke-virtual {v1, v2, v6, v10}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackFilterIndex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_92

    const/4 v1, 0x0

    goto :goto_a8

    .line 971
    :cond_92
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 972
    iget-object v4, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v4

    invoke-interface {v4, v2, v7}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 973
    iget-object v4, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v4

    invoke-interface {v4, v2, v8, v9}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    :goto_a8
    if-nez v1, :cond_c3

    .line 975
    iget-object v1, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v1

    if-lez v1, :cond_c3

    .line 980
    iget-object v0, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v6, v1, v10}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackFilterIndex(Ljava/lang/String;IILjava/lang/String;)V

    :cond_c3
    :goto_c3
    return-void
.end method

.method private final addOrUpdateSlotEffect(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;I)V
    .registers 15

    .line 1330
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_a0

    .line 1331
    :cond_c
    new-instance v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1332
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;->getEffectSDKEffect()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1333
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;->getApplyTargetType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_24

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    iput v2, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->amazingEngineType:I

    .line 1334
    iput v1, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1335
    const-string v0, "{\"intensity\": 1.0 }"

    iput-object v0, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 1336
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformZ()I

    move-result v0

    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 1339
    iget-object v5, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v6

    const-string v0, "videoEffect.uuid"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move v7, p2

    invoke-static/range {v5 .. v10}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;->getTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_4a

    const/4 p2, 0x0

    goto :goto_70

    :cond_4a
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1340
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 1341
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v2

    .line 1343
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v3

    .line 1344
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v5

    .line 1341
    invoke-interface {v2, v1, v3, v5}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    :goto_70
    if-nez p2, :cond_a0

    .line 1347
    iget-object p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    .line 1349
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v6

    const/4 v2, 0x0

    move v3, v7

    .line 1347
    invoke-interface/range {v1 .. v6}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v8

    if-lez v8, :cond_a0

    .line 1352
    iget-object v5, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper$DefaultImpls;->setTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)V

    :cond_a0
    :goto_a0
    return-void
.end method

.method private final addOrUpdateSlotFilter(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V
    .registers 19

    move-object/from16 v0, p0

    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v7

    .line 736
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v8

    .line 737
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object v1

    if-nez v1, :cond_1a

    goto/16 :goto_c5

    .line 1574
    :cond_1a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    .line 738
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v2

    if-nez v2, :cond_35

    goto :goto_1e

    .line 740
    :cond_35
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_3e

    goto :goto_46

    :cond_3e
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_45

    goto :goto_46

    :cond_45
    move-object v4, v3

    .line 741
    :goto_46
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getLayer()I

    move-result v3

    iput v3, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    .line 743
    iput-object v4, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    const/4 v3, 0x0

    .line 744
    iput v3, v6, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"intensity\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getIntensity()F

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 748
    iget-object v9, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v10

    const-string v2, "newSlot.uuid"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    move/from16 v11, p2

    invoke-static/range {v9 .. v14}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;->getTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_8a

    const/4 v3, 0x0

    goto :goto_a0

    :cond_8a
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 749
    iget-object v5, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v5

    invoke-interface {v5, v4, v6}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 750
    iget-object v5, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v5

    invoke-interface {v5, v4, v7, v8}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    :goto_a0
    if-nez v3, :cond_1e

    .line 752
    iget-object v3, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v5, p2

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v12

    if-lez v12, :cond_1e

    .line 758
    iget-object v9, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    .line 759
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    move/from16 v11, p2

    .line 758
    invoke-static/range {v9 .. v15}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper$DefaultImpls;->setTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1e

    :cond_c5
    :goto_c5
    return-void
.end method

.method static synthetic addOrUpdateSlotFilter$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 734
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotFilter(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    return-void
.end method

.method private final addOrUpdateSlotForVideo(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 8

    .line 646
    invoke-direct {p0, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->findCameraSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    .line 649
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addCameraSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void

    .line 651
    :cond_b
    new-instance p1, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 653
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    const-string v1, "newTrack.sortedSlots"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1568
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-eqz v2, :cond_1d

    .line 655
    invoke-direct {p0, v2, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->buildVideoParams(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/ss/android/ttve/model/VETrackParams$Builder;)V

    goto :goto_1d

    .line 658
    :cond_2f
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 659
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/ss/android/vesdk/VERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I

    move-result p1

    .line 660
    iput p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    .line 661
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "newTrack.uuid"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackIndex(Ljava/lang/String;I)V

    .line 664
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 666
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "newSlot.uuid"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackIndexForSlot(Ljava/lang/String;I)V

    .line 667
    const-string v2, "newSlot"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->setCanvas(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 668
    invoke-direct {p0, v1, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->updateVideoTrans(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 669
    invoke-direct {p0, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotCrop(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 670
    invoke-direct {p0, v1, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotFilter(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    .line 671
    invoke-direct {p0, v1, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotMask(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    .line 672
    invoke-direct {p0, v1, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotChroma(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto :goto_55

    :cond_87
    return-void
.end method

.method private final addOrUpdateSlotMask(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V
    .registers 20

    move-object/from16 v0, p0

    .line 805
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v7

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v8

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMasks()Lcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;

    move-result-object v1

    if-nez v1, :cond_1a

    goto/16 :goto_b8

    .line 1578
    :cond_1a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLEMask;

    .line 808
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMask;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;

    move-result-object v3

    if-nez v3, :cond_37

    move-object/from16 v9, p1

    goto :goto_1e

    .line 809
    :cond_37
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getEffectSDKMask()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_40

    goto :goto_48

    :cond_40
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_47

    goto :goto_48

    :cond_47
    move-object v5, v4

    .line 810
    :goto_48
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 811
    iput-object v5, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    move-object/from16 v9, p1

    .line 812
    invoke-virtual {v3, v9}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->toEffectJson(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 813
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getLayer()I

    move-result v3

    iput v3, v6, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    const/4 v3, 0x0

    .line 814
    iput v3, v6, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 818
    iget-object v10, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v11

    const-string v3, "it.uuid"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;->getTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_78

    const/4 v4, 0x0

    goto :goto_8e

    :cond_78
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 819
    iget-object v10, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v10}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v10

    invoke-interface {v10, v5, v6}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 820
    iget-object v10, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v10}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v10

    invoke-interface {v10, v5, v7, v8}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    :goto_8e
    if-nez v4, :cond_1e

    .line 822
    iget-object v4, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v4

    move-object v5, v3

    move-object v3, v4

    const/4 v4, 0x0

    move-object v10, v5

    move/from16 v5, p2

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v13

    if-lez v13, :cond_1e

    .line 827
    iget-object v3, v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/4 v14, 0x0

    move/from16 v12, p2

    move-object v10, v3

    invoke-static/range {v10 .. v16}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper$DefaultImpls;->setTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1e

    :cond_b8
    :goto_b8
    return-void
.end method

.method static synthetic addOrUpdateSlotMask$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 804
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotMask(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    return-void
.end method

.method private final addOrUpdateSlotSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 17

    .line 1163
    const-string v0, "fontPath"

    const-string v1, "addOrUpdateSlotSticker"

    invoke-static {v1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;

    move-result-object v1

    .line 1168
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    move-object v2, v3

    goto :goto_24

    .line 1169
    :cond_1c
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentImageSticker;->getImageFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v2

    .line 1172
    :goto_24
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_3b

    .line 1173
    :cond_2f
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentInfoSticker;->getEffectSDKFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    if-nez v2, :cond_37

    move-object v2, v3

    goto :goto_3b

    :cond_37
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v2

    .line 1176
    :goto_3b
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_48

    move-object v0, v3

    goto :goto_7d

    .line 1177
    :cond_48
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->toEffectJson()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_50

    goto/16 :goto_1e8

    .line 1179
    :cond_50
    :try_start_50
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1180
    sget-object v4, Lcom/bytedance/ies/nlemediajava/utils/NLEFileUtil;->INSTANCE:Lcom/bytedance/ies/nlemediajava/utils/NLEFileUtil;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6e

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/bytedance/ies/nlemediajava/utils/NLEFileUtil;->getAbsoluteFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_66

    goto :goto_69

    .line 1181
    :cond_66
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1183
    :goto_69
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    .line 1180
    :cond_6e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_76} :catch_76

    :catch_76
    :goto_76
    const/4 v0, 0x1

    .line 1186
    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "lv_new_text"

    aput-object v4, v0, v5

    .line 1189
    :goto_7d
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;

    move-result-object v4

    if-nez v4, :cond_88

    goto :goto_8c

    .line 1190
    :cond_88
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEmojiSticker;->getutf8Code()Ljava/lang/String;

    move-result-object v2

    :goto_8c
    if-eqz v2, :cond_1e8

    .line 1193
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_96

    goto/16 :goto_1e8

    .line 1196
    :cond_96
    iget v8, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    .line 1197
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v4

    .line 1198
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v12

    .line 1200
    new-instance v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;

    invoke-direct {v13}, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;-><init>()V

    .line 1201
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v6

    invoke-static {v6}, Lcom/bytedance/ugc/nlerecorder/utils/CoordinateUtilsKt;->toVeX(F)F

    move-result v6

    iput v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetX:F

    .line 1202
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result v6

    invoke-static {v6}, Lcom/bytedance/ugc/nlerecorder/utils/CoordinateUtilsKt;->toVeY(F)F

    move-result v6

    iput v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetY:F

    .line 1203
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result v6

    neg-float v6, v6

    iput v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    .line 1204
    iput v4, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->startTime:I

    .line 1205
    iput v12, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->endTime:I

    .line 1206
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v6

    if-nez p2, :cond_d5

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_d9

    :cond_d5
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v7

    :goto_d9
    div-float/2addr v6, v7

    iput v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    .line 1207
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAlpha()F

    move-result v6

    iput v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    .line 1208
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getLayer()I

    move-result v6

    iput v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->layer:I

    .line 1209
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMirror_X()Z

    move-result v6

    iput-boolean v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    .line 1210
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMirror_Y()Z

    move-result v6

    iput-boolean v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    .line 1211
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v6

    if-nez v6, :cond_fc

    move-object v6, v3

    goto :goto_100

    :cond_fc
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getInAnim()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v6

    :goto_100
    if-nez v6, :cond_110

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v6

    if-nez v6, :cond_10a

    move-object v6, v3

    goto :goto_10e

    :cond_10a
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getOutAnim()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v6

    :goto_10e
    if-eqz v6, :cond_17c

    .line 1212
    :cond_110
    new-instance v6, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    invoke-direct {v6}, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;-><init>()V

    .line 1213
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v7

    const-string v9, ""

    if-nez v7, :cond_11f

    :goto_11d
    move-object v7, v9

    goto :goto_12d

    :cond_11f
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getInAnim()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v7

    if-nez v7, :cond_126

    goto :goto_11d

    :cond_126
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12d

    goto :goto_11d

    :cond_12d
    :goto_12d
    iput-object v7, v6, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->inPath:Ljava/lang/String;

    .line 1214
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v7

    if-nez v7, :cond_137

    move v7, v5

    goto :goto_13f

    :cond_137
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getInDuration()I

    move-result v7

    invoke-static {v7}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(I)I

    move-result v7

    :goto_13f
    iput v7, v6, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->inDuration:I

    .line 1215
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v7

    if-nez v7, :cond_148

    goto :goto_157

    :cond_148
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getOutAnim()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v7

    if-nez v7, :cond_14f

    goto :goto_157

    :cond_14f
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_156

    goto :goto_157

    :cond_156
    move-object v9, v7

    :goto_157
    iput-object v9, v6, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->outPath:Ljava/lang/String;

    .line 1216
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v7

    if-nez v7, :cond_161

    move v7, v5

    goto :goto_169

    :cond_161
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getOutDuration()I

    move-result v7

    invoke-static {v7}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(I)I

    move-result v7

    :goto_169
    iput v7, v6, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->outDuration:I

    .line 1217
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v1

    if-nez v1, :cond_172

    goto :goto_176

    :cond_172
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;->getLoop()Z

    move-result v5

    :goto_176
    iput-boolean v5, v6, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;->loop:Z

    .line 1218
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1212
    iput-object v6, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    .line 1220
    :cond_17c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v2, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    .line 1221
    iput-object v0, v13, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    .line 1224
    iget-object v6, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v7

    const-string v0, "slot.uuid"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;->getTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_198

    goto :goto_1b4

    :cond_198
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1225
    const-string v3, "addOrUpdateSlotSticker  updateTrackFilterParam"

    invoke-static {v3}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1227
    iget-object v3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v3

    invoke-interface {v3, v2, v13}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 1228
    iget-object v3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v3

    invoke-interface {v3, v2, v4, v12}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    move-object v3, v1

    :goto_1b4
    if-nez v3, :cond_1e8

    .line 1230
    const-string v1, "addOrUpdateSlotSticker  addTrackFilter"

    invoke-static {v1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v6

    const/4 v7, 0x0

    move v10, v4

    move v11, v12

    move-object v9, v13

    invoke-interface/range {v6 .. v11}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v9

    .line 1236
    const-string v1, "addOrUpdateSlotSticker  filterIndex = "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    if-lez v9, :cond_1e8

    .line 1238
    iget-object v6, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper$DefaultImpls;->setTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)V

    :cond_1e8
    :goto_1e8
    return-void
.end method

.method private final addOrUpdateSlotSubVideo(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 9

    .line 484
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_21

    .line 485
    :cond_b
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v1

    .line 486
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v2

    .line 487
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v3

    if-nez v3, :cond_22

    :goto_21
    return-void

    .line 489
    :cond_22
    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/NLEExtentionKt;->getVideoSourceType(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    if-ne v3, v4, :cond_2e

    .line 491
    invoke-direct {p0, p2, p3, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addCameraSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void

    .line 494
    :cond_2e
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object p1

    const-string v3, "cover"

    invoke-virtual {p1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_48

    .line 496
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_49

    :cond_48
    move-object p1, v3

    .line 500
    :cond_49
    new-instance v3, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 502
    invoke-virtual {v3, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 503
    invoke-virtual {v3, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 504
    invoke-virtual {v3, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 505
    invoke-virtual {v3, v1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 506
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 507
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 508
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getLayer()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 509
    sget-object p1, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    invoke-virtual {v3, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 510
    invoke-virtual {v3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 511
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez v0, :cond_88

    const/4 p1, 0x0

    goto :goto_91

    :cond_88
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/vesdk/VERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 514
    :goto_91
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 515
    const-string v0, "subvideo add result = "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newTrack.uuid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackIndex(Ljava/lang/String;I)V

    .line 517
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newSlot.uuid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackIndexForSlot(Ljava/lang/String;I)V

    .line 518
    invoke-direct {p0, p2, p3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->updateVideoTrans(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 519
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;

    move-result-object v0

    if-nez v0, :cond_c8

    goto :goto_e1

    .line 1550
    :cond_c8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;

    .line 520
    const-string v2, "videoEffect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotEffect(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;I)V

    goto :goto_cc

    .line 522
    :cond_e1
    :goto_e1
    invoke-direct {p0, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotCrop(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 523
    invoke-direct {p0, p2, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotFilter(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    .line 524
    invoke-direct {p0, p2, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotMask(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;I)V

    .line 525
    invoke-direct {p0, p2, p3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotChroma(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method private final addOrUpdateSmallWindowTrack(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 10

    .line 1421
    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/NLEExtentionKt;->getVideoPath(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 1422
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_8e

    :cond_e
    const-wide/16 v1, 0x0

    if-nez p1, :cond_13

    goto :goto_20

    .line 1425
    :cond_13
    const-string v3, "offset"

    invoke-virtual {p1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_20
    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v1

    int-to-long v2, v1

    const/4 v4, 0x0

    if-nez p1, :cond_2a

    move v5, v4

    goto :goto_34

    .line 1427
    :cond_2a
    iget-object v5, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->exceptTrack:Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;

    invoke-virtual {p1, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMaxTargetEnd(Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v5

    :goto_34
    add-int/2addr v5, v1

    if-nez p1, :cond_39

    move p1, v4

    goto :goto_43

    .line 1429
    :cond_39
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->exceptTrack:Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;

    invoke-virtual {p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMaxTargetEnd(Lcom/bytedance/ies/nle/editor_jni/VecNLETrackType;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p1

    .line 1430
    :goto_43
    new-instance v1, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    long-to-int v2, v2

    .line 1431
    invoke-virtual {v1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v1

    .line 1432
    invoke-virtual {v1, v5}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v1

    .line 1433
    invoke-virtual {v1, v4}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v1

    .line 1434
    invoke-virtual {v1, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 1435
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/16 v0, 0x10

    .line 1436
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setExtFlag(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1437
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 1438
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 1439
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curSmallWindowVideoTrackIndex:Ljava/lang/Integer;

    if-nez v0, :cond_73

    const/4 v0, 0x0

    goto :goto_80

    :cond_73
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1440
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1, v4, v0, p1}, Lcom/ss/android/vesdk/VERecorder;->updateTrack(IILcom/ss/android/ttve/model/VETrackParams;)I

    .line 1445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_80
    if-nez v0, :cond_8c

    .line 1447
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v0, v4, p1}, Lcom/ss/android/vesdk/VERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1439
    :cond_8c
    iput-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curSmallWindowVideoTrackIndex:Ljava/lang/Integer;

    :cond_8e
    :goto_8e
    return-void
.end method

.method private final addOrUpdateTrackEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZ)V
    .registers 13

    .line 1366
    const-string v0, "addOrUpdateTrackEffect"

    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_b4

    .line 1369
    :cond_11
    new-instance v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;-><init>()V

    .line 1370
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;->getEffectSDKEffect()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->path:Ljava/lang/String;

    .line 1371
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentEffect;->getApplyTargetType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->amazingEngineType:I

    .line 1372
    iput v1, v4, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 1373
    const-string v0, "{\"intensity\": 1.0 }"

    iput-object v0, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->param:Ljava/lang/String;

    .line 1374
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformZ()I

    move-result v0

    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->order:I

    if-eqz p3, :cond_3f

    .line 1376
    iput v2, v4, Lcom/ss/android/vesdk/filterparam/VEAmazingFilterParam;->amazingEngineType:I

    const/4 p3, -0x1

    goto :goto_40

    :cond_3f
    move p3, p2

    .line 1380
    :goto_40
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v7, "effectSlot.uuid"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "video_effect"

    invoke-virtual {v0, v1, p3, v8}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackFilterIndex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_55

    const/4 p3, 0x0

    goto :goto_7b

    :cond_55
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1381
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 1382
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    .line 1384
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v2

    .line 1385
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v3

    .line 1382
    invoke-interface {v1, v0, v2, v3}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    :goto_7b
    if-nez p3, :cond_b4

    .line 1388
    iget-object p3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p3}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    .line 1390
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v6

    const/4 v2, 0x0

    move v3, p2

    .line 1388
    invoke-interface/range {v1 .. v6}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p2

    .line 1392
    const-string p3, "addOrUpdateTrackEffect filterIndex = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    if-lez p2, :cond_b4

    .line 1395
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, p2, v8}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackFilterIndex(Ljava/lang/String;IILjava/lang/String;)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method static synthetic addOrUpdateTrackEffect$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 1365
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateTrackEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZ)V

    return-void
.end method

.method private final addorUpdateAudioSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 9

    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 394
    :cond_4
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    .line 395
    :goto_8
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object p1

    if-nez p1, :cond_10

    goto/16 :goto_d5

    .line 396
    :cond_10
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object p3

    .line 397
    const-string p4, "addorUpdateAudioSlot bgAudioPath = "

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 399
    const-string p4, "bgAudioPath"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-lez p4, :cond_c7

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_c7

    .line 400
    new-instance p4, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {p4}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 401
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v2

    invoke-virtual {p4, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p4

    .line 402
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 403
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 405
    sget-object p2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p1, p3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 407
    invoke-virtual {p1, p2, p3}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 409
    iget p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    if-ne p2, v1, :cond_92

    .line 410
    iget-object p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/vesdk/VERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    goto :goto_97

    .line 412
    :cond_92
    iget-object p3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p3, v0, p2, p1}, Lcom/ss/android/vesdk/VERecorder;->updateTrack(IILcom/ss/android/ttve/model/VETrackParams;)I

    .line 414
    :goto_97
    iget p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    if-lez p1, :cond_a9

    .line 415
    const-string p2, " curAudioTrackIndex = "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_b8

    .line 417
    :cond_a9
    const-string p2, "curAudioTrackIndex  audio track failed! "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NLERecorder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_b8
    new-instance p1, Lcom/ss/android/vesdk/VEVolumeParam;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VEVolumeParam;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 421
    iput p2, p1, Lcom/ss/android/vesdk/VEVolumeParam;->bgmPlayVolume:F

    .line 422
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V

    return-void

    .line 424
    :cond_c7
    iget p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    if-eq p1, v1, :cond_d5

    .line 425
    iget-object p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez p2, :cond_d0

    goto :goto_d3

    :cond_d0
    invoke-virtual {p2, v0, p1}, Lcom/ss/android/vesdk/VERecorder;->removeTrack(II)I

    .line 426
    :goto_d3
    iput v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    :cond_d5
    :goto_d5
    return-void
.end method

.method private final addorUpdateSlotTextTemplate(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 13

    .line 1246
    iget v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    const/4 p1, 0x0

    if-nez p2, :cond_7

    move-object v0, p1

    goto :goto_b

    .line 1247
    :cond_7
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;

    move-result-object v0

    if-nez v0, :cond_13

    goto/16 :goto_cc

    .line 1248
    :cond_13
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v6

    .line 1249
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v7

    .line 1251
    new-instance v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;

    invoke-direct {v8}, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;-><init>()V

    .line 1252
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ugc/nlerecorder/utils/CoordinateUtilsKt;->toVeX(F)F

    move-result v1

    iput v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetX:F

    .line 1253
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result v1

    invoke-static {v1}, Lcom/bytedance/ugc/nlerecorder/utils/CoordinateUtilsKt;->toVeY(F)F

    move-result v1

    iput v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetY:F

    .line 1254
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result v1

    iput v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    .line 1255
    iput v6, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->startTime:I

    .line 1256
    iput v7, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->endTime:I

    .line 1257
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v1

    iput v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    .line 1258
    iget v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    iput v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    .line 1259
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getLayer()I

    move-result v1

    iput v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->layer:I

    .line 1260
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMirror_X()Z

    move-result v1

    iput-boolean v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    .line 1261
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMirror_Y()Z

    move-result v1

    iput-boolean v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    .line 1262
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->getEffectSDKFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    .line 1264
    const-string v1, "lv_info_sticker_template"

    .line 1265
    invoke-direct {p0, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->getTextTemplateDependResParamJson(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 1263
    iput-object v1, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    .line 1267
    invoke-direct {p0, p2, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->getTextTemplateParamJson(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->templateParam:Ljava/lang/String;

    .line 1270
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v9, "newSlot.uuid"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;->getTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_93

    goto :goto_aa

    :cond_93
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1271
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    invoke-interface {v1, p1, v8}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 1272
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    invoke-interface {v1, p1, v6, v7}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    move-object p1, v0

    :goto_aa
    if-nez p1, :cond_cc

    .line 1274
    iget-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v6

    move v5, v7

    move-object v3, v8

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v3

    if-lez v3, :cond_cc

    .line 1279
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper$DefaultImpls;->setTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method private final buildVideoParams(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/ss/android/ttve/model/VETrackParams$Builder;)V
    .registers 7

    .line 685
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_11

    .line 686
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    .line 688
    :cond_12
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v0

    .line 689
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p1

    .line 690
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v1

    const-string v2, "cover"

    invoke-virtual {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3c

    .line 692
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_3c
    move-object v1, v2

    .line 697
    :cond_3d
    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 698
    invoke-virtual {p2, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 699
    invoke-virtual {p2, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 700
    invoke-virtual {p2, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 701
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 702
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    const/4 p0, 0x0

    .line 703
    invoke-virtual {p2, p0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    .line 704
    sget-object p0, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->HOST:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    invoke-virtual {p2, p0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    return-void
.end method

.method private final checkStopPrePlay(ZLkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_16

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->clear()V

    .line 104
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    new-instance p1, Lcom/bytedance/ugc/nlerecorder/NLERecorder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;)I

    move-result p0

    if-eqz p0, :cond_15

    .line 107
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_15
    return-void

    .line 110
    :cond_16
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final checkStopPrePlay$lambda-3(Lkotlin/jvm/functions/Function0;I)V
    .registers 2

    const-string p1, "$action"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final deleteTrackEffect(ILcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;)V
    .registers 9

    .line 1409
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string p2, "it.oriNode.uuid"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;->getTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1410
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/effect/IEffect;->removeTrackFilter(I)I

    return-void
.end method

.method private final diffModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;"
        }
    .end annotation

    .line 116
    const-string p0, "currentStageModel.tracks"

    if-nez p2, :cond_54

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1456
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1457
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 118
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v1

    if-lez v1, :cond_19

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1459
    :cond_34
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_39
    if-ge v0, p1, :cond_53

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 119
    new-instance v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    sget-object v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    const-string v4, "it"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;-><init>(Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;Lcom/bytedance/ies/nle/editor_jni/NLENode;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    .line 120
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_53
    return-object p2

    .line 126
    :cond_54
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_65

    .line 127
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 131
    :cond_65
    sget-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;

    .line 133
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p0

    const-string p2, "lastStageModel.tracks"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1, p0}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->diffNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 131
    invoke-virtual {v0, p0}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->sortTrackChangeInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 1461
    new-instance p1, Lcom/bytedance/ugc/nlerecorder/NLERecorder$diffModel$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$diffModel$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final findCameraSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;
    .registers 4

    .line 720
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p0

    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne p0, v0, :cond_35

    .line 721
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p0

    const-string p1, "videoTrack.sortedSlots"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1572
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 722
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_15

    .line 723
    :cond_2c
    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/NLEExtentionKt;->getVideoSourceType(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    if-ne v0, v1, :cond_15

    return-object p1

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getRandom()Ljava/util/Random;
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->random$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method

.method private final getTextTemplateDependResParamJson(Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)Ljava/lang/String;
    .registers 6

    .line 1287
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 1288
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->getFonts()Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;

    move-result-object p1

    const-string v0, "segment.fonts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1630
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    .line 1289
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1290
    const-string v2, "resource_id"

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1291
    const-string v2, "path"

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1293
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_12

    .line 1295
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"depend_resource_list\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getTextTemplateParamJson(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;)Ljava/lang/String;
    .registers 8

    .line 1302
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 1303
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->getTextClips()Lcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;

    move-result-object p2

    const-string v0, "segment.textClips"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1633
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_24

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_24
    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;

    .line 1304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1305
    const-string v3, "index"

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;->getIndex()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1306
    const-string v3, "value"

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1309
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v0, v2

    goto :goto_13

    .line 1312
    :cond_42
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 1313
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToSeconds(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1314
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1315
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1316
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1317
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1314
    const-string v1, "position"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1318
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1320
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1321
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1319
    const-string v1, "scale"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1323
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToSeconds(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "start_time"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1324
    const-string p1, "text_list"

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1326
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "textTemplateInitInfoParam.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final increaseComposeSlotAdd(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    const/4 v3, 0x0

    if-nez p1, :cond_11

    goto/16 :goto_90

    :cond_11
    check-cast p1, Ljava/lang/Iterable;

    .line 1616
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1127
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;

    move-result-object v4

    if-nez v4, :cond_2e

    goto :goto_17

    .line 1129
    :cond_2e
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v5

    .line 1130
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->getEffectNodeKeyValuePairs()Lcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;

    move-result-object v6

    const-string v7, "effectNodeKeyValuePairs"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1617
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;

    .line 1131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;->getFirst()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;->getSecond()F

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    .line 1133
    :cond_72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->getEffectTags()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v4

    const-string v5, "effectTags"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 1134
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_17

    .line 38
    :cond_8a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1138
    :cond_90
    :goto_90
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ec

    if-eqz p4, :cond_c2

    .line 1140
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    .line 38
    new-array p1, v3, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_bc

    check-cast p1, [Ljava/lang/String;

    .line 1142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 38
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b6

    check-cast v3, [Ljava/lang/String;

    .line 1140
    invoke-virtual {p0, p1, p4, v3}, Lcom/ss/android/vesdk/VERecorder;->setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I

    goto :goto_ec

    .line 38
    :cond_b6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_bc
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1146
    :cond_c2
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    .line 38
    new-array p1, v3, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e6

    check-cast p1, [Ljava/lang/String;

    .line 1148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 38
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e0

    check-cast v3, [Ljava/lang/String;

    .line 1146
    invoke-virtual {p0, p1, p4, v3}, Lcom/ss/android/vesdk/VERecorder;->appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I

    goto :goto_ec

    .line 38
    :cond_e0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_e6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ec
    :goto_ec
    if-nez p2, :cond_ef

    goto :goto_f2

    .line 1154
    :cond_ef
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_f2
    if-nez p3, :cond_f5

    return-void

    .line 1155
    :cond_f5
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic increaseComposeSlotAdd$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    .line 1118
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseComposeSlotAdd(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private final increaseComposeSlotDelete(Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_6e

    .line 1101
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 1608
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1102
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;

    move-result-object v1

    if-nez v1, :cond_20

    goto :goto_9

    .line 1609
    :cond_20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    const/4 v5, 0x0

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1104
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->getNodePaths()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v3

    const-string v6, "nodePaths"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 1104
    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_24

    .line 38
    :cond_48
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1106
    :cond_4e
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1107
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    .line 38
    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_68

    check-cast v2, [Ljava/lang/String;

    .line 1109
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1107
    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VERecorder;->removeComposerNodes([Ljava/lang/String;I)I

    goto :goto_9

    .line 38
    :cond_68
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    :goto_6e
    return-void
.end method

.method private final increaseFilterTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 6

    .line 439
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    const-string v0, "track.slots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 440
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterName;->getBEAUTFY_FILTER()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 443
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    .line 444
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_3a

    goto :goto_42

    :cond_3a
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_41

    goto :goto_42

    :cond_41
    move-object v3, v2

    .line 445
    :goto_42
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getIntensity()F

    move-result v0

    .line 443
    invoke-virtual {v1, v3, v0}, Lcom/ss/android/vesdk/VERecorder;->setFilterNew(Ljava/lang/String;F)I

    goto :goto_d

    :cond_4a
    return-void
.end method

.method private final increaseSlotFilterChange(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 10

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_12

    .line 995
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->updateRecSlotFilter$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void

    :cond_12
    move-object v0, p0

    .line 998
    sget-object p0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object p2

    const-string v1, "newSlot.filters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object p1

    const-string v1, "oriSlot.filters"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->diffNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1001
    check-cast p0, Ljava/lang/Iterable;

    .line 1580
    new-instance p1, Lcom/bytedance/ugc/nlerecorder/NLERecorder$increaseSlotFilterChange$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$increaseSlotFilterChange$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 1004
    check-cast p0, Ljava/lang/Iterable;

    .line 1581
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 1004
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v2, v3, :cond_41

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1584
    :cond_5a
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1585
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_6b
    if-ge v4, v2, :cond_81

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1586
    check-cast v5, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 1005
    invoke-virtual {v5}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 1588
    :cond_81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8a
    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 1008
    invoke-virtual {v5}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v5

    sget-object v6, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v5, v6, :cond_8a

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 1591
    :cond_a3
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1592
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_b1
    if-ge v5, v4, :cond_c7

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 1593
    check-cast v6, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 1009
    invoke-virtual {v6}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 1595
    :cond_c7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d0
    :goto_d0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 1013
    invoke-virtual {v5}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v5

    sget-object v6, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v5, v6, :cond_d0

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .line 1598
    :cond_e9
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1599
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_f6
    if-ge v3, v1, :cond_119

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 1600
    check-cast v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 1014
    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v4}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 1017
    :cond_119
    invoke-direct {v0, v2, p0, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->updateRecSlotFilter(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final increaseTrackUpdate(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 3

    .line 257
    invoke-direct {p0, p2, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseUpdateBeautyTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 258
    invoke-direct {p0, p2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseFilterTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-void
.end method

.method private final increaseUpdateBeautyTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 16

    .line 262
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v0, v1, :cond_268

    .line 263
    sget-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    const-string v1, "newTrack.slots"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p2

    const-string v1, "oriTrack.slots"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->diffNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 265
    check-cast p1, Ljava/lang/Iterable;

    .line 1494
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 265
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v2, v3, :cond_2b

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1497
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 267
    invoke-virtual {v3}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v3, v4, :cond_4d

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 1500
    :cond_66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6f
    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 269
    invoke-virtual {v3}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v3, v4, :cond_6f

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 271
    :cond_88
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1504
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v12, 0x0

    move v5, v12

    :goto_a8
    if-ge v5, v4, :cond_be

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 1505
    check-cast v6, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 277
    invoke-virtual {v6}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 279
    :cond_be
    invoke-direct {p0, v2, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseComposeSlotDelete(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 280
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "NLERecorder removedNodePaths size = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1507
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1508
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v12

    :goto_e0
    if-ge v0, p1, :cond_f6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 1509
    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 285
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    :cond_f6
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    .line 287
    invoke-static/range {v5 .. v11}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseComposeSlotAdd$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/Object;)V

    .line 288
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "NLERecorder addSlots size = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 292
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_117

    goto/16 :goto_268

    .line 1511
    :cond_117
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1512
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v12

    :goto_125
    if-ge p2, p1, :cond_148

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    .line 1513
    check-cast v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 297
    invoke-virtual {v0}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v2

    .line 298
    invoke-virtual {v0}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v0

    .line 299
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_125

    .line 301
    :cond_148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "NLERecorder updateSlotsPair size = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 303
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a6

    .line 305
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;

    move-result-object p0

    if-nez p0, :cond_178

    goto/16 :goto_268

    .line 306
    :cond_178
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->getEffectNodeKeyValuePairs()Lcom/bytedance/ies/nle/editor_jni/VecNLEStringFloatPairSPtr;

    move-result-object p1

    if-nez p1, :cond_180

    goto/16 :goto_268

    .line 1515
    :cond_180
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_184
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_268

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;

    .line 307
    iget-object v0, v5, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;->getFirst()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStringFloatPair;->getSecond()F

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/ss/android/vesdk/VERecorder;->updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I

    goto :goto_184

    .line 315
    :cond_1a6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v12

    :goto_1b0
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    if-ge v0, p2, :cond_227

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lkotlin/Pair;

    .line 317
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;

    move-result-object v3

    .line 318
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;

    move-result-object v2

    .line 320
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->getNodePaths()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v3

    const-string v4, "oriSegment.nodePaths"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-array v4, v12, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_221

    .line 320
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->getNodePaths()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v3

    const-string v4, "newSegment.nodePaths"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-array v4, v12, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21b

    .line 321
    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->getEffectTags()Lcom/bytedance/ies/nle/editor_jni/VecString;

    move-result-object v2

    const-string v3, "newSegment.effectTags"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-array v3, v12, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_215

    .line 322
    invoke-static {v8, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1b0

    .line 38
    :cond_215
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_21b
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_221
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_227
    iget-object v2, v5, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    .line 38
    new-array p0, v12, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_262

    move-object v3, p0

    check-cast v3, [Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 38
    new-array p0, v12, [Ljava/lang/String;

    invoke-interface {v7, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_25c

    move-object v5, p0

    check-cast v5, [Ljava/lang/String;

    .line 328
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 38
    new-array p0, v12, [Ljava/lang/String;

    invoke-interface {v8, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_256

    move-object v7, p0

    check-cast v7, [Ljava/lang/String;

    .line 324
    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/vesdk/VERecorder;->replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I

    return-void

    .line 38
    :cond_256
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_25c
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_262
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_268
    :goto_268
    return-void
.end method

.method private final incrementRecorder(Ljava/util/List;)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;)I"
        }
    .end annotation

    .line 171
    move-object/from16 v6, p1

    check-cast v6, Ljava/lang/Iterable;

    .line 1464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 172
    invoke-virtual {v4}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v4

    sget-object v5, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v4, v5, :cond_d

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1467
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    move v3, v7

    :goto_2c
    if-ge v3, v2, :cond_37

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    goto :goto_2c

    .line 1469
    :cond_37
    new-instance v1, Lcom/bytedance/ugc/nlerecorder/NLERecorder$incrementRecorder$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$incrementRecorder$$inlined$sortedBy$1;-><init>()V

    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1470
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 181
    invoke-virtual {v3}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v3, v4, :cond_4b

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 1473
    :cond_64
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v7

    :goto_69
    const-string v10, "oriTrack"

    const-string v11, "newTrack"

    const/4 v12, 0x1

    const-string v13, "it"

    if-ge v1, v9, :cond_175

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v14, v1, 0x1

    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 183
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v1

    .line 184
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_e8

    .line 188
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 189
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotForVideo(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 190
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    if-nez v1, :cond_a7

    goto/16 :goto_172

    .line 1474
    :cond_a7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ab
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_172

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 191
    const-string v2, "slot"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateTrackEffect$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZILjava/lang/Object;)V

    goto :goto_ab

    .line 194
    :cond_c6
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    if-nez v2, :cond_ce

    goto/16 :goto_172

    .line 1476
    :cond_ce
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 195
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v3, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotSubVideo(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto :goto_d2

    .line 202
    :cond_e8
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v3, v4, :cond_112

    .line 203
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    if-nez v1, :cond_f8

    goto/16 :goto_172

    .line 1478
    :cond_f8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_172

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 205
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 206
    invoke-direct {p0, v5, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addorUpdateSlotTextTemplate(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_fc

    .line 209
    :cond_112
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v3, v4, :cond_124

    .line 211
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseTrackUpdate(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto :goto_172

    .line 213
    :cond_124
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v2, v3, :cond_14c

    .line 214
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    if-nez v1, :cond_133

    goto :goto_172

    .line 1480
    :cond_133
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_137
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_172

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 215
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    invoke-direct {p0, v2, v3, v12}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateTrackEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZ)V

    goto :goto_137

    .line 217
    :cond_14c
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v2, v3, :cond_172

    .line 219
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    if-nez v1, :cond_15b

    goto :goto_172

    .line 1482
    :cond_15b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_172

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 220
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateEffectSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_15f

    :cond_172
    :goto_172
    move v1, v14

    goto/16 :goto_69

    .line 1485
    :cond_175
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17e
    :goto_17e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_197

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 228
    invoke-virtual {v3}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v3, v4, :cond_17e

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17e

    .line 1488
    :cond_197
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_19b
    :goto_19b
    if-ge v7, v6, :cond_22b

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    check-cast v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 230
    invoke-virtual {v1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v2

    .line 231
    invoke-virtual {v1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v1

    .line 232
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v3, v4, :cond_1f0

    .line 233
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v3

    if-eqz v3, :cond_1cc

    .line 234
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->updateTrackRecSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 236
    :cond_1cc
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    if-nez v1, :cond_1d3

    goto :goto_19b

    .line 1489
    :cond_1d3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1d7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 237
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateTrackEffect$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZILjava/lang/Object;)V

    goto :goto_1d7

    .line 239
    :cond_1f0
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v3, v4, :cond_218

    .line 240
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const-string v2, "newTrack.slots"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1491
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_205
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 241
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateEffectSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_205

    .line 244
    :cond_218
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v3, v4, :cond_19b

    .line 245
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseTrackUpdate(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto/16 :goto_19b

    :cond_22b
    return v12
.end method

.method private final isBeautyTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
    .registers 3

    .line 163
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p0

    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-eq p0, v0, :cond_16

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object p0

    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne p0, p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method private final isOnlyChangeBeautyOrEffect(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 148
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 149
    check-cast p1, Ljava/lang/Iterable;

    .line 1462
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 150
    invoke-virtual {v0}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v0

    .line 152
    const-string v2, "newTrack"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->isBeautyTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "oriTrack"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->isBeautyTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_43
    const/4 p0, 0x1

    return p0
.end method

.method private final rebuild(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 14

    .line 340
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getSortedTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object v1

    const-string v2, "currentStageModel.sortedTracks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1531
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 340
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v3

    if-lez v3, :cond_12

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1534
    :cond_2d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v1, v9

    :goto_33
    if-ge v1, v8, :cond_181

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v10, v1, 0x1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 341
    const-string v1, "rebuild track.trackType = "

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    const-string v4, "track"

    const-string v5, "track.slots"

    const-string v6, "slot"

    const/4 v11, 0x0

    if-ne v1, v3, :cond_ab

    .line 344
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 345
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v11, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotForVideo(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 346
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    if-nez v1, :cond_6d

    goto/16 :goto_17e

    .line 1535
    :cond_6d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_71
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 347
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateTrackEffect$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZILjava/lang/Object;)V

    goto :goto_71

    .line 350
    :cond_8a
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1537
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 351
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v11, v3, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotSubVideo(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto :goto_95

    .line 356
    :cond_ab
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v1, v3, :cond_d4

    .line 357
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1539
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 359
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v11}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSlotSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 360
    invoke-direct {p0, v11, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addorUpdateSlotTextTemplate(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_be

    .line 364
    :cond_d4
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->FILTER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v1, v3, :cond_10e

    .line 365
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v1

    if-lez v1, :cond_107

    .line 366
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentComposerFilter;

    move-result-object v1

    if-eqz v1, :cond_107

    .line 367
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseComposeSlotAdd$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/Object;)V

    goto/16 :goto_17e

    .line 369
    :cond_107
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->increaseFilterTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto :goto_17e

    .line 372
    :cond_10e
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v1, v3, :cond_135

    .line 373
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1541
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_121
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 374
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v9, v3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateTrackEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;IZ)V

    goto :goto_121

    .line 377
    :cond_135
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->EFFECT_STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v1, v3, :cond_15b

    .line 378
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1543
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_148
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 379
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v11, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateEffectSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_148

    .line 382
    :cond_15b
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v1

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v1, v3, :cond_17e

    .line 383
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1545
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 384
    invoke-direct {p0, v11, v3, v11, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addorUpdateAudioSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto :goto_16e

    :cond_17e
    :goto_17e
    move v1, v10

    goto/16 :goto_33

    :cond_181
    return-void
.end method

.method private final setCanvas(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 13

    .line 898
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v6

    .line 899
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v7

    .line 900
    iget-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->dataSource:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v0, 0x0

    if-nez p1, :cond_17

    move-object p1, v0

    goto :goto_1f

    :cond_17
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCanvasRatio()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_1f
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 901
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v1

    .line 902
    new-instance v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    invoke-direct {v5}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;-><init>()V

    .line 903
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v3

    const-string v8, "newSlot.uuid"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackIndexBySlot(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 904
    const-string v2, "canvas wrap"

    iput-object v2, v5, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    .line 905
    iget v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->canvasWidth:I

    iput v2, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 906
    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    .line 910
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getType()Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;

    move-result-object p1

    if-nez p1, :cond_65

    const/4 p1, -0x1

    goto :goto_6d

    :cond_65
    sget-object v2, Lcom/bytedance/ugc/nlerecorder/NLERecorder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    :goto_6d
    const/4 v2, 0x1

    if-eq p1, v2, :cond_c4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8e

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7a

    goto :goto_d7

    .line 925
    :cond_7a
    sget-object p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->VIDEOFRAME:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 926
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getBlurRadius()F

    move-result p1

    float-to-int p1, p1

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->radius:I

    goto :goto_d7

    .line 921
    :cond_8e
    sget-object p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->IMAGE:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 922
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getImage()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->imagePath:Ljava/lang/String;

    goto :goto_d7

    .line 916
    :cond_a5
    sget-object p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->GRADIENT_COLOR:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 917
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getStartColor()J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->gradientTopColor:I

    .line 918
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getEndColor()J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->gradientBottomColor:I

    goto :goto_d7

    .line 912
    :cond_c4
    sget-object p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->COLOR:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 913
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getColor()J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->color:I

    .line 930
    :goto_d7
    iget-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "canvas blend"

    invoke-virtual {p1, v1, v4, v9}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackFilterIndex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_e9

    goto :goto_100

    .line 931
    :cond_e9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 933
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v1

    invoke-interface {v1, v0, v6, v7}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    move-object v0, p1

    :goto_100
    if-nez v0, :cond_128

    .line 935
    iget-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    if-lez p1, :cond_128

    .line 940
    const-string v0, "setCanvas filterIndex = "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 942
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    .line 943
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0, p2, v4, p1, v9}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackFilterIndex(Ljava/lang/String;IILjava/lang/String;)V

    :cond_128
    return-void
.end method

.method private final update(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-eqz v0, :cond_3e

    .line 79
    const-string v0, "NLERecorder update"

    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    .line 82
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStage()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p1

    :goto_11
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 85
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->lastStageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->diffModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCanvasRatio()F

    move-result v1

    iput v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->canvasRatio:F

    .line 87
    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/NLEExtentionKt;->getCanvasWidth(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->canvasWidth:I

    .line 88
    invoke-direct {p0, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->isOnlyChangeBeautyOrEffect(Ljava/util/List;)Z

    move-result v1

    .line 89
    new-instance v2, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;-><init>(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;ZLjava/util/List;)V

    invoke-direct {p0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->checkStopPrePlay(ZLkotlin/jvm/functions/Function0;)V

    return-void

    .line 83
    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "stageModel is null  "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "veRecorder is null  "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateRecSlotFilter(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLEFilter;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLEFilter;",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLEFilter;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/nle/editor_jni/NLEFilter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1026
    const-string v1, ""

    if-nez p1, :cond_6

    goto :goto_46

    :cond_6
    check-cast p1, Ljava/lang/Iterable;

    .line 1602
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    .line 1027
    :cond_1c
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v2

    .line 1028
    :goto_20
    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1029
    iget-object v3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez v2, :cond_2c

    :goto_2a
    move-object v4, v1

    goto :goto_3a

    .line 1030
    :cond_2c
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v4

    if-nez v4, :cond_33

    goto :goto_2a

    :cond_33
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_2a

    :cond_3a
    :goto_3a
    if-nez v2, :cond_3e

    move v2, v0

    goto :goto_42

    .line 1031
    :cond_3e
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getIntensity()F

    move-result v2

    .line 1029
    :goto_42
    invoke-virtual {v3, v4, v2}, Lcom/ss/android/vesdk/VERecorder;->setFilterNew(Ljava/lang/String;F)I

    goto :goto_c

    :cond_46
    :goto_46
    if-nez p2, :cond_49

    goto :goto_8b

    .line 1035
    :cond_49
    check-cast p2, Ljava/lang/Iterable;

    .line 1604
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    .line 1036
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object p2

    .line 1037
    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 1038
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez p2, :cond_71

    :goto_6f
    move-object v3, v1

    goto :goto_7f

    .line 1039
    :cond_71
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v3

    if-nez v3, :cond_78

    goto :goto_6f

    :cond_78
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7f

    goto :goto_6f

    :cond_7f
    :goto_7f
    if-nez p2, :cond_83

    move p2, v0

    goto :goto_87

    .line 1040
    :cond_83
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getIntensity()F

    move-result p2

    .line 1038
    :goto_87
    invoke-virtual {v2, v3, p2}, Lcom/ss/android/vesdk/VERecorder;->setFilterNew(Ljava/lang/String;F)I

    goto :goto_4f

    :cond_8b
    :goto_8b
    if-nez p3, :cond_8e

    goto :goto_b8

    .line 1044
    :cond_8e
    check-cast p3, Ljava/lang/Iterable;

    .line 1606
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_94
    :goto_94
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    .line 1045
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object p2

    .line 1046
    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object p3

    if-eqz p3, :cond_94

    .line 1047
    iget-object p3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    if-nez p2, :cond_b0

    move p2, v0

    goto :goto_b4

    .line 1048
    :cond_b0
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getIntensity()F

    move-result p2

    .line 1047
    :goto_b4
    invoke-virtual {p3, v1, p2}, Lcom/ss/android/vesdk/VERecorder;->setFilterNew(Ljava/lang/String;F)I

    goto :goto_94

    :cond_b8
    :goto_b8
    return-void
.end method

.method static synthetic updateRecSlotFilter$default(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 1020
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->updateRecSlotFilter(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final updateTrackRecSticker(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 7

    .line 611
    sget-object p0, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;

    .line 612
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p2

    const-string v0, "newTrack.slots"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    const-string v0, "oriTrack.slots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/ugc/nlerecorder/diff/NLEDiffUtils;->diffNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 615
    check-cast p0, Ljava/lang/Iterable;

    .line 1552
    new-instance p1, Lcom/bytedance/ugc/nlerecorder/NLERecorder$updateTrackRecSticker$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$updateTrackRecSticker$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 616
    check-cast p0, Ljava/lang/Iterable;

    .line 1553
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2e
    :goto_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 616
    invoke-virtual {v1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v1

    sget-object v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v1, v2, :cond_2e

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1556
    :cond_47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_4d
    if-ge v1, p2, :cond_58

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    goto :goto_4d

    .line 1558
    :cond_58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_61
    :goto_61
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 621
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v2, v3, :cond_61

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 1561
    :cond_7a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v0

    :goto_7f
    if-ge v1, p2, :cond_91

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 623
    invoke-virtual {v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    goto :goto_7f

    .line 1563
    :cond_91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9a
    :goto_9a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 626
    invoke-virtual {v1}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getChangeType()Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v1

    sget-object v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    if-ne v1, v2, :cond_9a

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 1566
    :cond_b3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_b7
    if-ge v0, p0, :cond_d0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    check-cast p2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;

    .line 628
    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getNewNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 629
    invoke-virtual {p2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;->getOriNode()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    goto :goto_b7

    :cond_d0
    return-void
.end method

.method private final updateVideoTrans(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V
    .registers 14

    .line 547
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v6

    .line 548
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v7

    .line 549
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v8, "newSlot.uuid"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackIndexBySlot(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 550
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v0

    if-nez v0, :cond_32

    goto/16 :goto_124

    .line 552
    :cond_32
    new-instance v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v5}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 553
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getAlpha()F

    move-result v1

    iput v1, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 554
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v1

    iput v1, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    .line 555
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_50

    const/16 v2, 0x168

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 559
    :cond_50
    iput v1, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->degree:F

    .line 560
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v1

    iput v1, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 561
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result v1

    iput v1, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transY:F

    .line 562
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMirror_X()Z

    move-result v1

    iput v1, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->mirror:I

    .line 563
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getBlendFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v0

    if-nez v0, :cond_6b

    goto :goto_71

    .line 564
    :cond_6b
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->blendModePath:Ljava/lang/String;

    .line 567
    :goto_71
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getVideoAnims()Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_79

    goto :goto_ca

    .line 568
    :cond_79
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;->size()I

    move-result v2

    if-lez v2, :cond_ca

    const/4 v2, 0x0

    .line 569
    invoke-virtual {v0, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;

    move-result-object v3

    if-nez v3, :cond_8c

    move-object v3, v1

    goto :goto_90

    .line 570
    :cond_8c
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideoAnimation;->getEffectSDKVideoAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v3

    .line 571
    :goto_90
    const-string v9, ""

    if-nez v3, :cond_95

    goto :goto_9d

    :cond_95
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9c

    goto :goto_9d

    :cond_9c
    move-object v9, v3

    :goto_9d
    iput-object v9, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animPath:Ljava/lang/String;

    .line 572
    invoke-virtual {v0, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;

    move-result-object v3

    if-nez v3, :cond_a7

    move v3, v2

    goto :goto_af

    :cond_a7
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v3

    :goto_af
    iput v3, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animStartTime:I

    .line 573
    invoke-virtual {v0, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;

    move-result-object v0

    if-nez v0, :cond_b8

    goto :goto_c0

    :cond_b8
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v2

    :goto_c0
    iput v2, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->animEndTime:I

    .line 575
    sget-object v0, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;->UPDATE_VIDEO_ANIMATION_AND_ANIMATION:Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam$paramType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 574
    iput v0, v5, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transformType:I

    .line 582
    :cond_ca
    :goto_ca
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result p2

    const-string v0, "transform"

    if-eqz p2, :cond_e2

    .line 583
    iget-object p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "canvas blend"

    invoke-virtual {p2, v2, v4, v3}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackFilterIndex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_ef

    .line 585
    :cond_e2
    iget-object p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v4, v0}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackFilterIndex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    :goto_ef
    if-nez p2, :cond_f2

    goto :goto_109

    .line 587
    :cond_f2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 588
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v2

    invoke-interface {v2, v1, v5}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 589
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v2

    invoke-interface {v2, v1, v6, v7}, Lcom/ss/android/vesdk/effect/IEffect;->updateTrackFilterTime(III)I

    move-object v1, p2

    :goto_109
    if-nez v1, :cond_124

    .line 591
    iget-object p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/vesdk/effect/IEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p2

    if-lez p2, :cond_124

    .line 596
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->setTrackFilterIndex(Ljava/lang/String;IILjava/lang/String;)V

    :cond_124
    :goto_124
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 7

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->lastStageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    .line 53
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {v1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackIndexMapper()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "indexMapper.trackIndexMapper.values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1452
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "it"

    const/4 v4, 0x0

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2a

    goto :goto_30

    .line 54
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_18

    .line 55
    :goto_30
    iget-object v5, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v4, v2}, Lcom/ss/android/vesdk/VERecorder;->removeTrack(II)I

    goto :goto_18

    .line 58
    :cond_3d
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {v1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->getTrackFilterIndexMapper()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "indexMapper.trackFilterIndexMapper.values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1454
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 59
    const-string v5, "remove track filter index = "

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VERecorder;->getEffect()Lcom/ss/android/vesdk/effect/IEffect;

    move-result-object v5

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v5, v2}, Lcom/ss/android/vesdk/effect/IEffect;->removeTrackFilter(I)I

    goto :goto_52

    .line 62
    :cond_78
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->indexMapper:Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;

    invoke-virtual {v1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/DefaultNLEIdMapper;->clear()V

    .line 63
    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curSmallWindowVideoTrackIndex:Ljava/lang/Integer;

    if-nez v1, :cond_82

    goto :goto_8b

    :cond_82
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/vesdk/VERecorder;->removeTrack(II)I

    .line 63
    :goto_8b
    iput-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curSmallWindowVideoTrackIndex:Ljava/lang/Integer;

    .line 67
    iput v4, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->currentMainTrackIndex:I

    .line 68
    iget v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9c

    .line 69
    iget-object v2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->veRecorder:Lcom/ss/android/vesdk/VERecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/vesdk/VERecorder;->removeTrack(II)I

    .line 70
    iput v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->curAudioTrackIndex:I

    :cond_9c
    return-void
.end method

.method public final getDataSource()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->dataSource:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-object p0
.end method

.method public final setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->dataSource:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    .line 43
    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->update(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 45
    const-string p1, "NLERecorder"

    const-string v0, "Java Exception:::"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    throw p0
.end method
