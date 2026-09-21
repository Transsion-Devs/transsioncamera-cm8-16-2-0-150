.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLERhythmPointRuntime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$Companion;

.field public static final TAG:Ljava/lang/String; = "NLEAlgorithmImplPublic"


# instance fields
.field private algorithmCallback:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;

.field private final algorithmController$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 22
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$algorithmController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$algorithmController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->algorithmController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setMusicAndResultInner(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
    .registers 5

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->setMusicAndResultInner(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    return p0
.end method

.method private final addAlgorithmAudioIfNecessary(Ljava/lang/String;IIZ)V
    .registers 12

    .line 277
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_109

    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_109

    .line 278
    :cond_10
    invoke-direct {p0, v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->findAlgorithmAudioTrack(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/util/List;

    move-result-object v1

    .line 279
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_c5

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto/16 :goto_c5

    .line 290
    :cond_23
    check-cast v1, Ljava/lang/Iterable;

    .line 358
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 291
    sget-object v2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v2

    if-nez v2, :cond_3e

    goto :goto_49

    :cond_3e
    sget-object v5, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v6, "NLEVEPublic2: replace algorithm audio clip path: "

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 292
    :goto_49
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v2

    if-nez v2, :cond_71

    .line 293
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-direct {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>()V

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->createAlgorithmAudioSegment(Ljava/lang/String;II)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object v5

    .line 294
    invoke-virtual {v2, v5}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->setMainSegment(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)V

    .line 296
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    sub-int v5, p3, p2

    .line 297
    invoke-static {v5}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    .line 298
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 293
    invoke-virtual {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    goto :goto_29

    .line 300
    :cond_71
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 305
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v2

    goto :goto_8a

    :cond_89
    const/4 v2, 0x0

    :goto_8a
    if-nez v1, :cond_8d

    goto :goto_29

    .line 309
    :cond_8d
    invoke-static {p2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipStart(J)V

    .line 310
    invoke-static {p3}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipEnd(J)V

    .line 311
    const-string v5, ""

    if-eqz v2, :cond_ad

    if-nez p1, :cond_a2

    goto :goto_a3

    :cond_a2
    move-object v5, p1

    .line 312
    :goto_a3
    invoke-virtual {v2, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 313
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->ALGORITHM_AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v2, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    goto/16 :goto_29

    .line 315
    :cond_ad
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    invoke-direct {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;-><init>()V

    if-nez p1, :cond_b5

    goto :goto_b6

    :cond_b5
    move-object v5, p1

    .line 316
    :goto_b6
    invoke-virtual {v2, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 317
    sget-object v5, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->ALGORITHM_AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v2, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 318
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 315
    invoke-virtual {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setAVFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V

    goto/16 :goto_29

    .line 280
    :cond_c5
    :goto_c5
    sget-object v1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v1

    if-nez v1, :cond_ce

    goto :goto_d9

    :cond_ce
    sget-object v2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v5, "NLEVEPublic2: add algorithm audio track: "

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 281
    :goto_d9
    new-instance v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    invoke-direct {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>()V

    .line 282
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-direct {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>()V

    .line 284
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->createAlgorithmAudioSegment(Ljava/lang/String;II)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object p1

    .line 283
    invoke-virtual {v2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->setMainSegment(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)V

    .line 285
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    sub-int/2addr p3, p2

    .line 286
    invoke-static {p3}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    .line 287
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 282
    invoke-virtual {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 281
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->addTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    :cond_fd
    if-eqz p4, :cond_109

    .line 326
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object p0

    if-nez p0, :cond_106

    goto :goto_109

    :cond_106
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    :cond_109
    :goto_109
    return-void
.end method

.method static synthetic addAlgorithmAudioIfNecessary$default(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;Ljava/lang/String;IIZILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x1

    .line 271
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->addAlgorithmAudioIfNecessary(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private final createAlgorithmAudioSegment(Ljava/lang/String;II)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;
    .registers 8

    .line 336
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;-><init>()V

    .line 337
    invoke-static {p2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipStart(J)V

    .line 338
    invoke-static {p3}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipEnd(J)V

    .line 339
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    invoke-direct {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;-><init>()V

    if-nez p1, :cond_1c

    .line 340
    const-string p1, ""

    :cond_1c
    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 341
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->ALGORITHM_AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 342
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setDuration(J)V

    .line 343
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 339
    invoke-virtual {p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setAVFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V

    return-object p0
.end method

.method private final findAlgorithmAudioTrack(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/nle/editor_jni/NLETrack;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_45

    .line 356
    :cond_10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 257
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v2, v3, :cond_14

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_14

    :cond_2f
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->isBGMTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_45
    :goto_45
    return-object v0
.end method

.method private final getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;
    .registers 2

    .line 22
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->algorithmController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-algorithmController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    return-object p0
.end method

.method private final isAlgorithmAudioTrackExist(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Z
    .registers 4

    .line 245
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_35

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_35

    .line 354
    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 246
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v0, v1, :cond_12

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    if-nez p1, :cond_2d

    goto :goto_12

    :cond_2d
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    return v0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return p0
.end method

.method private final isBGMTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z
    .registers 4

    .line 265
    const-string p0, "AudioTrackType"

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BGM"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "REVERSE_AUDIO"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private final setInnerAlgorithmCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)V
    .registers 3

    .line 155
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setInnerAlgorithmCallback$1;

    invoke-direct {v0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setInnerAlgorithmCallback$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->algorithmCallback:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;

    return-void
.end method

.method private final setMusicAndResultInner(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
    .registers 12

    .line 228
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_14

    :cond_9
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v2, "NLEVEPublic2: setMusicAndResult: "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_14
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->addAlgorithmAudioIfNecessary(Ljava/lang/String;IIZ)V

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->removeAllVideoSound()I

    move-result p1

    .line 232
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object v1

    .line 233
    invoke-static {p2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v2

    .line 234
    invoke-static {p3}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v4

    move-object v6, p4

    .line 232
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->initSmartAlgorithm(JJLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    if-ltz p0, :cond_33

    if-gez p1, :cond_32

    goto :goto_33

    :cond_32
    return v0

    :cond_33
    :goto_33
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public beginGenVideoFrames(ILcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)I
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, -0x1

    return p0

    .line 144
    :cond_4
    invoke-direct {p0, p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->setInnerAlgorithmCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)V

    .line 145
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object p2

    .line 147
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->algorithmCallback:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;

    .line 145
    invoke-virtual {p2, p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->beginGenVideoFrames(ILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;)I

    move-result p0

    return p0
.end method

.method public beginGenVideoFrames(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)I
    .registers 3

    .line 0
    const-string p0, "nleSlotUUID"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public cancelGenVideoFrame(I)I
    .registers 2

    .line 129
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->cancelGenVideoFrame(I)I

    move-result p0

    return p0
.end method

.method public cancelGenVideoFrame(Ljava/lang/String;)I
    .registers 2

    .line 0
    const-string p0, "nleSlotUUID"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public checkScoresFile(Ljava/lang/String;)I
    .registers 5

    .line 55
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_14

    :cond_9
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v2, "NLEVEPublic2: checkScoresFile: "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 56
    :goto_14
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->checkScoresFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public genRandomSolve()I
    .registers 1

    .line 176
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->genRandomSolve()I

    move-result p0

    return p0
.end method

.method public genSmartCutting()I
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->genSmartCutting()I

    move-result p0

    return p0
.end method

.method public getAllVideoRangeData()Lcom/bytedance/ies/nle/editor_jni/VecNLEClipAlgorithmParam;
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->getAllVideoRangeData()Lcom/bytedance/ies/nle/editor_jni/VecNLEClipAlgorithmParam;

    move-result-object p0

    const-string v0, "algorithmController.allVideoRangeData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public initBingoAlgorithm()I
    .registers 2

    .line 171
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->reInitSmartAlgorithmIfPossible()I

    .line 172
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->removeAllVideoSound()I

    move-result p0

    return p0
.end method

.method public removeAllVideoSound()I
    .registers 5

    .line 64
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_10

    :cond_9
    sget-object v2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v3, "NLEVEPublic2: removeAllVideoSound"

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 65
    :goto_10
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v1

    :goto_1c
    if-nez v1, :cond_33

    .line 67
    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_2c

    .line 68
    :cond_25
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 69
    const-string v1, "NLEVEPublic2: removeAllVideoSound error, model is null"

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 71
    :goto_2c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEError;->FAILED:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigValue()I

    move-result p0

    return p0

    :cond_33
    const/4 v0, 0x1

    .line 74
    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack(Z)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    goto :goto_6e

    .line 75
    :cond_3c
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    const-string v2, "sortedSlots"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 76
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v2

    if-nez v2, :cond_60

    goto :goto_49

    .line 77
    :cond_60
    invoke-virtual {v2, v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setEnableAudio(Z)V

    goto :goto_49

    .line 80
    :cond_64
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object p0

    if-nez p0, :cond_6b

    goto :goto_6e

    :cond_6b
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    :goto_6e
    return v1
.end method

.method public removeMusic(I)I
    .registers 6

    .line 108
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_18

    :cond_9
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v2, "NLEVEPublic2: removeMusic: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_18
    if-ltz p1, :cond_45

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object p1

    if-nez p1, :cond_21

    goto :goto_45

    :cond_21
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_45

    .line 111
    :cond_28
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->findAlgorithmAudioTrack(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2f

    goto :goto_45

    .line 112
    :cond_2f
    check-cast v0, Ljava/lang/Iterable;

    .line 352
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 113
    invoke-virtual {p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->removeTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    goto :goto_35

    .line 117
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->restoreAllVideoSound()I

    move-result p0

    return p0
.end method

.method public restoreAllVideoSound()I
    .registers 5

    .line 87
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_10

    :cond_9
    sget-object v2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v3, "NLEVEPublic2: restoreAllVideoSound"

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 88
    :goto_10
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v1

    :goto_1c
    if-nez v1, :cond_33

    .line 90
    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_2c

    .line 91
    :cond_25
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 92
    const-string v1, "NLEVEPublic2: restoreAllVideoSound error, model is null"

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 94
    :goto_2c
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEError;->FAILED:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigValue()I

    move-result p0

    return p0

    :cond_33
    const/4 v0, 0x1

    .line 96
    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMainTrack(Z)Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    move-result-object v1

    if-nez v1, :cond_3b

    goto :goto_6d

    .line 97
    :cond_3b
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const-string v2, "sortedSlots"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 98
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v2

    if-nez v2, :cond_5f

    goto :goto_48

    .line 99
    :cond_5f
    invoke-virtual {v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setEnableAudio(Z)V

    goto :goto_48

    .line 102
    :cond_63
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object p0

    if-nez p0, :cond_6a

    goto :goto_6d

    :cond_6a
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    :goto_6d
    const/4 p0, 0x0

    return p0
.end method

.method public setInterimScoresToFile(Ljava/lang/String;)I
    .registers 5

    .line 27
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_14

    :cond_9
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v2, "NLEVEPublic2: setInterimScoresToFile: "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 28
    :goto_14
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->setInterimScoresToFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMusicAndResult(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
    .registers 16

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 200
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, -0x1

    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 201
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->setMusicAndResultInner(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    iput p0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4e

    .line 204
    :cond_21
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 205
    new-instance v3, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v3}, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt;->runOnUIThreadAtFrontOfQueue(Lkotlin/jvm/functions/Function0;)V

    .line 210
    :try_start_34
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_4e

    :catch_38
    move-exception v0

    move-object p0, v0

    .line 212
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_4e

    :cond_43
    sget-object p2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_WARNING:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string p3, "NLEVEPublic2: setMusicAndResult: "

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 215
    :goto_4e
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p0

    if-nez p0, :cond_57

    goto :goto_7c

    .line 216
    :cond_57
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NLEVEPublic2: setMusicAndResult: result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", cost: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v1

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 219
    :goto_7c
    iget p0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method

.method public updateAlgorithmFromNormal()I
    .registers 8

    .line 43
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_10

    :cond_9
    sget-object v2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v3, "NLEVEPublic2: updateAlgorithmFromNormal"

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 44
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->getAlgorithmController()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;->reInitSmartAlgorithmIfPossible()I

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->removeAllVideoSound()I

    move-result p0

    .line 47
    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v0

    if-nez v0, :cond_26

    return p0

    .line 48
    :cond_26
    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NLEVEPublic2: updateAlgorithmFromNormal, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v3, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    return p0
.end method
