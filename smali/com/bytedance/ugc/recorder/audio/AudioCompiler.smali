.class public final Lcom/bytedance/ugc/recorder/audio/AudioCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/recorder/audio/AudioCompiler$Companion;
    }
.end annotation


# static fields
.field public static final CODE_COMPILE_ERROR:I = -0x1

.field public static final CODE_SUCCESS:I = 0x0

.field public static final Companion:Lcom/bytedance/ugc/recorder/audio/AudioCompiler$Companion;

.field public static final IMAGE_PLACE_HOLDER_FILE_NAME:Ljava/lang/String; = "image_holder.png"

.field public static final TAG:Ljava/lang/String; = "AudioCompiler_TAG"


# instance fields
.field private asyncHandlerThread:Landroid/os/HandlerThread;

.field private final audioCacheManager$delegate:Lkotlin/Lazy;

.field private final bufferInfo:[B

.field private final context:Landroid/content/Context;

.field private isHardCompile:Z

.field private final mJob:Lkotlinx/coroutines/CompletableJob;

.field private final mScope:Lkotlinx/coroutines/CoroutineScope;

.field private mVEEditor:Lcom/ss/android/vesdk/VEEditor;

.field private final md5Id:Ljava/lang/String;

.field private final nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field private final workSpace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->Companion:Lcom/bytedance/ugc/recorder/audio/AudioCompiler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;[B)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nleModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "md5Id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->workSpace:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    iput-object p4, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->md5Id:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->bufferInfo:[B

    .line 41
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2f

    move-object p2, p1

    goto :goto_30

    :cond_2f
    move-object p2, p3

    :goto_30
    if-nez p2, :cond_33

    goto :goto_36

    .line 43
    :cond_33
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 44
    :goto_36
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 51
    new-instance p1, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$audioCacheManager$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$audioCacheManager$2;-><init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->audioCacheManager$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 57
    invoke-static {p3, p1, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->mJob:Lkotlinx/coroutines/CompletableJob;

    .line 59
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->mScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;[B)V

    return-void
.end method

.method public static final synthetic access$compileOnlyAudio(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->compileOnlyAudio(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMd5Id$p(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->md5Id:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$prepareAudioModel(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->prepareAudioModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    return-object p0
.end method

.method private final compileOnlyAudio(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 149
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->initVEEditor(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/lang/Integer;

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object v1

    const-string v2, "nleModel.tracks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 150
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v4

    sget-object v5, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v4, v5, :cond_17

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 361
    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :cond_36
    const/4 v5, 0x0

    if-ge v4, v1, :cond_19f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 152
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v6

    const-string v7, "track.sortedSlots"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 153
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    move-result-object v8

    if-nez v8, :cond_65

    goto :goto_4e

    .line 155
    :cond_65
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v9

    if-nez v9, :cond_6d

    move-object v11, v5

    goto :goto_72

    :cond_6d
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    :goto_72
    if-nez v11, :cond_75

    goto :goto_4e

    .line 156
    :cond_75
    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object v10

    if-nez v10, :cond_7d

    move-object v7, v5

    goto :goto_a7

    .line 158
    :cond_7d
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v12

    .line 159
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v13

    .line 160
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v14

    .line 161
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v15

    const/16 v16, 0x0

    .line 156
    invoke-virtual/range {v10 .. v16}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrack(Ljava/lang/String;IIIIZ)I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_a7
    if-nez v7, :cond_aa

    goto :goto_4e

    .line 166
    :cond_aa
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 168
    new-instance v12, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;

    invoke-direct {v12}, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;-><init>()V

    .line 169
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getVolume()F

    move-result v9

    iput v9, v12, Lcom/ss/android/vesdk/filterparam/VEAudioVolumeFilterParam;->volume:F

    .line 170
    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object v9

    if-nez v9, :cond_c0

    goto :goto_ca

    :cond_c0
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/ss/android/vesdk/VEEditor;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 177
    :goto_ca
    new-instance v13, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;

    invoke-direct {v13}, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;-><init>()V

    .line 178
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getFadeInLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v9

    iput v9, v13, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;->fadeInLength:I

    .line 179
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getFadeOutLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v9

    iput v9, v13, Lcom/ss/android/vesdk/filterparam/VEAudioFadeFilterParam;->fadeOutLength:I

    .line 180
    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object v10

    if-nez v10, :cond_eb

    move-object v7, v5

    goto :goto_fa

    .line 182
    :cond_eb
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/4 v11, 0x1

    .line 180
    invoke-virtual/range {v10 .. v15}, Lcom/ss/android/vesdk/VEEditor;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    .line 187
    :goto_fa
    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object v9

    if-nez v9, :cond_101

    goto :goto_10f

    :cond_101
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v3, v7, v13}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 190
    :goto_10f
    new-instance v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v7}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 191
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAbsSpeed()F

    move-result v9

    float-to-double v9, v9

    iput-wide v9, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 193
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getSeqCurveSpeedPoints()Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;

    move-result-object v9

    const-string v10, "it"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_12b

    goto :goto_12c

    :cond_12b
    move-object v9, v5

    :goto_12c
    if-nez v9, :cond_12f

    goto :goto_185

    .line 194
    :cond_12f
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->size()I

    move-result v10

    new-array v10, v10, [F

    .line 195
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/VecNLEPointSPtr;->size()I

    move-result v11

    new-array v11, v11, [F

    .line 364
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v12, v3

    :goto_140
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_161

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    if-gez v12, :cond_151

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_151
    check-cast v13, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    .line 197
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getX()F

    move-result v15

    aput v15, v10, v12

    .line 198
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getY()F

    move-result v13

    aput v13, v11, v12

    move v12, v14

    goto :goto_140

    .line 201
    :cond_161
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v9

    iput v9, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 202
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result v9

    iput v9, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 204
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAbsSpeed()F

    move-result v9

    float-to-double v12, v9

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getCurveAveSpeed()D

    move-result-wide v8

    mul-double/2addr v12, v8

    iput-wide v12, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    .line 205
    iput-object v10, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointX:[F

    .line 206
    iput-object v11, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->curveSpeedPointY:[F

    .line 209
    :goto_185
    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object v8

    if-nez v8, :cond_18d

    goto/16 :goto_4e

    .line 211
    :cond_18d
    filled-new-array {v3}, [I

    move-result-object v9

    .line 212
    filled-new-array {v7}, [Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    move-result-object v7

    const/4 v10, 0x1

    .line 209
    invoke-virtual {v8, v10, v9, v7}, Lcom/ss/android/vesdk/VEEditor;->updateClipsTimelineParam(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto/16 :goto_4e

    .line 222
    :cond_19f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a6

    return-object v5

    .line 226
    :cond_1a6
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->workSpace:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record_bg_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".mp3"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 227
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->workSpace:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-direct {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->configVE()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 230
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 231
    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object v5

    if-nez v5, :cond_210

    goto :goto_21c

    .line 236
    :cond_210
    new-instance v10, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;

    invoke-direct {v10, v0, v7, v6, v1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;-><init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 231
    invoke-virtual/range {v5 .. v10}, Lcom/ss/android/vesdk/VEEditor;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 230
    :goto_21c
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_229

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_229
    return-object v0
.end method

.method public static synthetic compilerAudio$default(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    .line 60
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->compilerAudio(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final configVE()Lkotlin/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/ss/android/vesdk/VEVideoEncodeSettings;",
            "Lcom/ss/android/vesdk/VEAudioEncodeSettings;",
            ">;"
        }
    .end annotation

    .line 276
    iget-boolean p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->isHardCompile:Z

    const-string v0, "Builder(VEVideoEncodeSet\u2026        .setResizeMode(4)"

    const/4 v1, 0x4

    const/16 v2, 0x23

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x10

    if-eqz p0, :cond_30

    .line 277
    new-instance p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {p0, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 278
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    .line 279
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    .line 280
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    const v2, 0x61a80

    .line 281
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setBps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    .line 282
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v5, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    goto :goto_56

    .line 285
    :cond_30
    new-instance p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {p0, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    const/4 v3, 0x0

    .line 286
    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    .line 287
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    .line 288
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    const/16 v2, 0xf

    .line 289
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    .line 290
    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    .line 291
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v5, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    .line 295
    :goto_56
    new-instance v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;-><init>()V

    .line 296
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->Build()Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    move-result-object v0

    .line 297
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getHolderVideo()Ljava/io/File;
    .registers 4

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->workSpace:Ljava/lang/String;

    const-string v2, "image_holder.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    .line 142
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/volcano/publish/R$drawable;->transparent_holder:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2c

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "placeholderFile.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/bytedance/ugc/recorder/audio/UtilsKt;->toSDCard(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    return-object v0

    .line 142
    :cond_2c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    return-object v0
.end method

.method private final initVEEditor(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/lang/Integer;
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMaxTargetEnd()J

    move-result-wide v0

    .line 305
    new-instance v2, Lcom/ss/android/vesdk/VEEditor;

    iget-object v3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->workSpace:Ljava/lang/String;

    sget-object v4, Lcom/bytedance/ugc/recorder/audio/VEConfigManager;->INSTANCE:Lcom/bytedance/ugc/recorder/audio/VEConfigManager;

    invoke-virtual {v4}, Lcom/bytedance/ugc/recorder/audio/VEConfigManager;->getConfig()Lcom/ss/android/vesdk/VEUserConfig;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Lcom/ss/android/vesdk/VEUserConfig;)V

    .line 306
    iget-object v3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->bufferInfo:[B

    if-nez v3, :cond_18

    goto :goto_1b

    .line 307
    :cond_18
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEEditor;->initAuthInternal([B)I

    .line 309
    :goto_1b
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "nle-ve-async"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 311
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 309
    iput-object v3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 312
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEEditor;->setMessageHandlerLooper(Landroid/os/Looper;)V

    .line 317
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    const-string v3, "nleModel.tracks"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_48
    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 317
    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5f
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_6a

    goto :goto_ac

    .line 318
    :cond_6a
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v5

    if-lez v5, :cond_ac

    .line 319
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object p1

    const-string v4, "this.avFile.resourceFile"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 38
    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a4

    goto :goto_ac

    :cond_a4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_ac
    :goto_ac
    sget-object v13, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 328
    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/utils/TimeUtilsKt;->microsToMillis(J)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object v5

    .line 329
    filled-new-array {v3}, [I

    move-result-object p1

    .line 330
    iput-object v2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 332
    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    .line 331
    invoke-virtual/range {v2 .. v13}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final prepareAudioModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 9

    .line 103
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMaxTargetEnd()J

    move-result-wide v0

    .line 104
    const-string v2, "model full time duraion= "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v2

    if-nez v2, :cond_21

    const/4 v2, 0x0

    goto :goto_24

    .line 106
    :cond_21
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->clearTrack()V

    .line 108
    :goto_24
    iget-object v3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->nleModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object v3

    const-string v4, "nleModel.tracks"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 109
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v6

    sget-object v7, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v6, v7, :cond_38

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 356
    :cond_51
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_56
    if-ge v5, v3, :cond_67

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    if-nez v2, :cond_63

    goto :goto_56

    .line 111
    :cond_63
    invoke-virtual {v2, v6}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->addTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    goto :goto_56

    .line 114
    :cond_67
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    invoke-direct {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>()V

    const/4 v4, 0x1

    .line 115
    invoke-virtual {v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->setMainTrack(Z)V

    .line 117
    invoke-direct {p0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getHolderVideo()Ljava/io/File;

    move-result-object p0

    .line 118
    new-instance v4, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    invoke-direct {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;-><init>()V

    .line 119
    sget-object v5, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 120
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 123
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>()V

    .line 124
    new-instance v5, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    invoke-direct {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;-><init>()V

    .line 125
    invoke-virtual {v5, v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setAVFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V

    const-wide/16 v6, 0x0

    .line 126
    invoke-virtual {p0, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    .line 128
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    invoke-virtual {p0, v5}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->setMainSegment(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)V

    .line 129
    invoke-virtual {p0, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    .line 123
    invoke-virtual {v3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    if-nez v2, :cond_ab

    goto :goto_ae

    .line 133
    :cond_ab
    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->addTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    .line 135
    :goto_ae
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final compilerAudio(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 61
    iget-object v2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->mScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1;

    const/4 v1, 0x0

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compilerAudio$2$1;-><init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;ZLkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 60
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_28

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_28
    return-object p0
.end method

.method public final getAsyncHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->asyncHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final getAudioCacheManager()Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->audioCacheManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/recorder/audio/AudioCacheManager;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getMVEEditor()Lcom/ss/android/vesdk/VEEditor;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    return-object p0
.end method

.method public final setAsyncHandlerThread(Landroid/os/HandlerThread;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->asyncHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public final setMVEEditor(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    return-void
.end method
