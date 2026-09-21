.class public final Lcom/bytedance/ugc/recorder/template/BgAudioChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ugc/recorder/template/IConvertorChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;

.field private static final ioExecutors:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final bufferInfo:[B

.field private final context:Landroid/content/Context;

.field private mAudioCompiler:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

.field private final mJob:Lkotlinx/coroutines/CompletableJob;

.field private final mScope:Lkotlinx/coroutines/CoroutineScope;

.field private final md5ID:Ljava/lang/String;

.field private final workSpace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->Companion:Lcom/bytedance/ugc/recorder/template/BgAudioChain$Companion;

    .line 16
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    .line 23
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 25
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    .line 29
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v3, 0x5

    const-wide/16 v5, 0xa

    .line 16
    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v2, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->ioExecutors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "md5ID"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->workSpace:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->md5ID:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->bufferInfo:[B

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 14
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->mJob:Lkotlinx/coroutines/CompletableJob;

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->mScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 11
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ugc/recorder/template/BgAudioChain;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static final synthetic access$getIoExecutors$cp()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 11
    sget-object v0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->ioExecutors:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic access$getMAudioCompiler$p(Lcom/bytedance/ugc/recorder/template/BgAudioChain;)Lcom/bytedance/ugc/recorder/audio/AudioCompiler;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->mAudioCompiler:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getMd5ID()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->md5ID:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorkSpace()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->workSpace:Ljava/lang/String;

    return-object p0
.end method

.method public onNext(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 9

    .line 36
    const-string v0, "BgAudioChain  onNext"

    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_b

    move-object v4, p1

    move-object v1, v0

    goto :goto_1f

    .line 40
    :cond_b
    new-instance v1, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->getWorkSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->getMd5ID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->bufferInfo:[B

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;[B)V

    .line 39
    :goto_1f
    iput-object v1, p0, Lcom/bytedance/ugc/recorder/template/BgAudioChain;->mAudioCompiler:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    .line 42
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/bytedance/ugc/recorder/template/BgAudioChain$onNext$2;

    invoke-direct {v1, p1, p0, v0}, Lcom/bytedance/ugc/recorder/template/BgAudioChain$onNext$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/bytedance/ugc/recorder/template/BgAudioChain;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v0, v1, p0, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p0, "BgAudioChain audioPath ="

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 54
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_e3

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4c

    goto/16 :goto_e3

    :cond_4c
    new-instance p0, Ljava/io/File;

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_e3

    .line 55
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object v0

    if-nez v0, :cond_6d

    goto :goto_a2

    .line 83
    :cond_6d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_76
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 56
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v3, v4, :cond_76

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 86
    :cond_8f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_94
    if-ge v2, v0, :cond_a2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 57
    invoke-virtual {p0, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->removeTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    goto :goto_94

    .line 59
    :cond_a2
    :goto_a2
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getMaxTargetEnd()J

    move-result-wide v0

    .line 60
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    invoke-direct {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;-><init>()V

    .line 61
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;

    invoke-direct {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;-><init>()V

    .line 62
    new-instance v4, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    invoke-direct {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;-><init>()V

    .line 63
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v4, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    invoke-virtual {v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setAVFile(Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;)V

    const-wide/16 v4, 0x0

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipStart(J)V

    .line 67
    invoke-virtual {v3, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipEnd(J)V

    .line 61
    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->setMainSegment(Lcom/bytedance/ies/nle/editor_jni/NLESegment;)V

    .line 69
    invoke-virtual {v2, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 70
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    .line 73
    new-instance p1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    invoke-direct {p1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;-><init>()V

    .line 74
    invoke-virtual {p1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->addSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->addTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)V

    return-object p0

    :cond_e3
    :goto_e3
    return-object v4
.end method
