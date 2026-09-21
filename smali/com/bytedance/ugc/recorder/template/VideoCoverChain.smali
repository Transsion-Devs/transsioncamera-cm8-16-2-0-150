.class public final Lcom/bytedance/ugc/recorder/template/VideoCoverChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ugc/recorder/template/IConvertorChain;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->context:Landroid/content/Context;

    .line 24
    const-string p1, "VideoCoverChain"

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCoverPath(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->getCoverPath(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setCover(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->setCover(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getCoverPath(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    const/4 v1, 0x0

    .line 59
    filled-new-array {v1}, [I

    move-result-object v1

    .line 58
    new-instance v2, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;

    invoke-direct {v2, p2, p0, p1, v0}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;-><init>(Ljava/lang/String;Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-static {p1, v1, v2}, Lcom/ss/android/vesdk/VEUtils;->getVideoFrames(Ljava/lang/String;[ILcom/ss/android/vesdk/VEFrameAvailableListener;)I

    .line 323
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_27

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_27
    return-object p0
.end method

.method private final setCover(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;

    iget v1, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;-><init>(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4a

    if-ne v2, v3, :cond_42

    iget-object p0, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$5:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    iget-object v2, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    iget-object v6, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_134

    .line 53
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_4a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_50

    goto :goto_56

    .line 39
    :cond_50
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getSortedTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p2

    if-nez p2, :cond_57

    :goto_56
    return-object p1

    .line 74
    :cond_57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_60
    :goto_60
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 39
    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v5

    sget-object v6, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v5, v6, :cond_60

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 77
    :cond_79
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_142

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 40
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    const-string v4, "it.slots"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_96
    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 41
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v4

    if-nez v4, :cond_ad

    goto :goto_96

    .line 43
    :cond_ad
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceType()Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    move-result-object v5

    sget-object v6, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    if-ne v5, v6, :cond_96

    .line 44
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_96

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ca

    goto :goto_96

    :cond_ca
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_ea

    goto :goto_f5

    :cond_ea
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_f1

    goto :goto_f5

    :cond_f1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_f5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStringId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v6

    const-string v7, "videoSegment.avFile.resourceFile"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->label:I

    invoke-direct {p0, v6, v5, v0}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->getCoverPath(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_12f

    return-object v1

    :cond_12f
    move-object v6, p0

    move-object p0, v5

    move-object v5, p1

    move-object p1, v4

    move-object v4, p2

    .line 47
    :goto_134
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object p1

    const-string p2, "cover"

    invoke-virtual {p1, p2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v4

    move-object p1, v5

    move-object p0, v6

    goto/16 :goto_96

    :cond_142
    return-object p1
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->context:Landroid/content/Context;

    return-object p0
.end method

.method public onNext(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 5

    .line 26
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    new-instance v1, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$onNext$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v2, v1, p0, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-object p0
.end method
