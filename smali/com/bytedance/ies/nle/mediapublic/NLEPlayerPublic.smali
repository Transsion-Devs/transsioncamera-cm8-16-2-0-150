.class public final Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$WhenMappings;
    }
.end annotation


# instance fields
.field private firstFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;

.field private final gson$delegate:Lkotlin/Lazy;

.field private infoListener:Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

.field private keyframeListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;

.field private final mediaApi$delegate:Lkotlin/Lazy;

.field private nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

.field private outerErrorListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

.field private outerInfoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;",
            ">;"
        }
    .end annotation
.end field

.field private final playerApi$delegate:Lkotlin/Lazy;

.field private releaseEngineListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;

.field private seekGetImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

.field private seekListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/bytedance/ies/nle/editor_jni/INLEListenerSeek;",
            ">;"
        }
    .end annotation
.end field

.field private statusCallback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;

.field private videoOutputListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerInfoListenerList:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$playerApi$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$playerApi$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->playerApi$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$mediaApi$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$mediaApi$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->mediaApi$delegate:Lkotlin/Lazy;

    .line 33
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->gson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getFirstFrameListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->firstFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;

    return-object p0
.end method

.method public static final synthetic access$getKeyframeListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->keyframeListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;

    return-object p0
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOuterErrorListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerErrorListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

    return-object p0
.end method

.method public static final synthetic access$getOuterInfoListenerList$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Ljava/util/List;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerInfoListenerList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getReleaseEngineListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->releaseEngineListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;

    return-object p0
.end method

.method public static final synthetic access$getSeekListenerMap$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getVideoOutputListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->videoOutputListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;

    return-object p0
.end method

.method public static final synthetic access$setReleaseEngineListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->releaseEngineListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;

    return-void
.end method

.method private final ensureCallback()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    if-nez v0, :cond_14

    .line 201
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;-><init>()V

    .line 202
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->addMessageListener(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;)V

    .line 203
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 201
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    :cond_14
    return-void
.end method

.method private final getGson()Lcom/google/gson/Gson;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/Gson;

    return-object p0
.end method

.method private final getMediaApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->mediaApi$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    return-object p0
.end method

.method private final getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->playerApi$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    return-object p0
.end method

.method private final handleChromaKeyFrame(Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;Ljava/lang/String;)V
    .registers 7

    .line 280
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;

    invoke-virtual {p0, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "gson.fromJson(json,Chrom\u2026nnelProperty::class.java)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;

    .line 282
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->getIntensity()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->setIntensity(F)V

    .line 283
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->getShadow()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->setShadow(F)V

    .line 284
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->getColor()Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->getValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4c

    .line 285
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/ChromaChannelProperty;->getColor()Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;->getValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->setColor(J)V

    .line 287
    :cond_4c
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getChromaChannelIntensity()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getIntensity()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getChromaChannelShadow()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getShadow()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final handleFilterKeyframe(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;Ljava/lang/String;)V
    .registers 5

    .line 299
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;

    invoke-virtual {p0, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "gson.fromJson(json, IntensityProperty::class.java)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;

    .line 301
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/IntensityProperty;->getIntensity()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide v0

    double-to-float p0, v0

    invoke-virtual {p2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->setIntensity(F)V

    .line 303
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getFilterIntensity()Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getIntensity()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 302
    invoke-virtual {p1, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final handleMaskKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEMask;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 5

    .line 421
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "gson.fromJson(json, MaskProperty::class.java)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;

    .line 422
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMask;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    .line 423
    :cond_18
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->getWidth()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->setWidth(F)V

    .line 424
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->getHeight()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->setHeight(F)V

    .line 425
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->getCenterX()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->setCenterX(F)V

    .line 426
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->getCenterY()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->setCenterY(F)V

    .line 427
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->getRotation()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->setRotation(F)V

    .line 428
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->getFeather()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->setFeather(F)V

    .line 429
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MaskProperty;->getRoundCorner()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;->getValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->setRoundCorner(F)V

    .line 432
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getMaskWidth()Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getWidth()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 431
    invoke-virtual {p3, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getMaskHeight()Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getHeight()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 435
    invoke-virtual {p3, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getMaskCenterX()Ljava/lang/String;

    move-result-object p0

    .line 441
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getCenterX()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 439
    invoke-virtual {p3, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getMaskCenterY()Ljava/lang/String;

    move-result-object p0

    .line 445
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getCenterY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 443
    invoke-virtual {p3, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getMaskRotation()Ljava/lang/String;

    move-result-object p0

    .line 449
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getRotation()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 447
    invoke-virtual {p3, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getMaskfeather()Ljava/lang/String;

    move-result-object p0

    .line 453
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getFeather()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 451
    invoke-virtual {p3, p0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getMaskRoundCorner()Ljava/lang/String;

    move-result-object p0

    .line 457
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentMask;->getRoundCorner()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-virtual {p3, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final handleStickerKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 5

    .line 314
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "gson.fromJson(json, StickerProperty::class.java)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;

    .line 316
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformX(F)V

    .line 317
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformY(F)V

    .line 318
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->getScale()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setScale(F)V

    .line 319
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/StickerProperty;->getRotation()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-virtual {p2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setRotation(F)V

    .line 322
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotX()Ljava/lang/String;

    move-result-object p0

    .line 323
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotY()Ljava/lang/String;

    move-result-object p0

    .line 327
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotScale()Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotRotation()Ljava/lang/String;

    move-result-object p0

    .line 335
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final handleTextKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 8

    .line 344
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "gson.fromJson(json, TextProperty::class.java)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;

    .line 346
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformX(F)V

    .line 347
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformY(F)V

    .line 348
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getScale()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setScale(F)V

    .line 349
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getRotation()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide v2

    double-to-float p1, v2

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setRotation(F)V

    .line 352
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotX()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotY()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotScale()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotRotation()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;

    move-result-object p1

    if-nez p1, :cond_a5

    return-void

    .line 369
    :cond_a5
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v2

    .line 370
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getBackgroundColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-direct {v3, v4}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(Ljava/lang/Iterable;)V

    .line 369
    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setBackgroundColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    .line 371
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v2

    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getTextColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-direct {v3, v4}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setTextColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    .line 372
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v2

    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getOutlineColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-direct {v3, v4}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setOutlineColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    .line 373
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getOutlineWidth()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setOutlineWidth(F)V

    .line 374
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v2

    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/VecFloat;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getShadowColor()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-direct {v3, v4}, Lcom/bytedance/ies/nle/editor_jni/VecFloat;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setShadowColorVector(Lcom/bytedance/ies/nle/editor_jni/VecFloat;)V

    .line 375
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getShadowOffset()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setShadowOffsetX(F)V

    .line 376
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getShadowOffset()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setShadowOffsetY(F)V

    .line 377
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/TextProperty;->getShadowSmoothing()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->setShadowSmoothing(F)V

    .line 380
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextBackgroundColor()Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getBackgroundColor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p2, p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextColor()Ljava/lang/String;

    move-result-object p0

    .line 385
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getTextColor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {p2, p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextOutlineColor()Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getOutlineColor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p2, p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextOutlineWidth()Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getOutlineWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p2, p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextShadowColor()Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowColor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p2, p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextShadowOffsetX()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowOffsetX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p2, p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextShadowOffsetY()Ljava/lang/String;

    move-result-object p0

    .line 405
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowOffsetY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {p2, p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getTextShadowSmoothing()Ljava/lang/String;

    move-result-object p0

    .line 409
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getShadowSmoothing()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final handleVideoKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V
    .registers 5

    .line 466
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "gson.fromJson(json, VideoProperty::class.java)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;

    .line 468
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformX(F)V

    .line 469
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->getPosition()Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setTransformY(F)V

    .line 470
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->getScale()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setScale(F)V

    .line 471
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->getRotation()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide v0

    double-to-float p1, v0

    neg-float p1, p1

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setRotation(F)V

    .line 472
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object p1

    if-nez p1, :cond_65

    goto :goto_71

    .line 473
    :cond_65
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoProperty;->getAlpha()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;->getValue()D

    move-result-wide v0

    double-to-float p0, v0

    .line 472
    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setAlpha(F)V

    .line 476
    :goto_71
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotX()Ljava/lang/String;

    move-result-object p0

    .line 477
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotY()Ljava/lang/String;

    move-result-object p0

    .line 481
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getTransformY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotScale()Ljava/lang/String;

    move-result-object p0

    .line 485
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotRotation()Ljava/lang/String;

    move-result-object p0

    .line 489
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEKeyFrameTransientExtrakey;->getSlotAlpha()Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object p1

    if-nez p1, :cond_bd

    const/4 p1, 0x0

    goto :goto_c9

    :cond_bd
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    .line 491
    :goto_c9
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized innerSetInfoListener()V
    .registers 3

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->infoListener:Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

    if-nez v0, :cond_19

    .line 88
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;-><init>(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)V

    .line 138
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    if-nez v1, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->addMessageListener(Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;)V

    .line 139
    :goto_12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 88
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->infoListener:Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_19

    :catchall_17
    move-exception v0

    goto :goto_1b

    .line 141
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_17

    throw v0
.end method


# virtual methods
.method public addKeyframeListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 209
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->ensureCallback()V

    .line 210
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->keyframeListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;

    .line 211
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->innerSetInfoListener()V

    :cond_a
    return-void
.end method

.method public addOnInfoListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 508
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->ensureCallback()V

    .line 509
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerInfoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->innerSetInfoListener()V

    :cond_d
    return-void
.end method

.method public delete()V
    .registers 2

    .line 599
    monitor-enter p0

    .line 600
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->delete()V

    .line 601
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekGetImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;->delete()V

    .line 602
    :goto_10
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->delete()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 599
    :goto_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()I
    .registers 3

    .line 519
    monitor-enter p0

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerInfoListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 521
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerErrorListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

    .line 522
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->firstFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;

    .line 523
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->videoOutputListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;

    .line 524
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->keyframeListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;

    .line 525
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->onDestroy()V

    .line 526
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->destroy()I

    move-result v0

    .line 527
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->releaseAsyncHandler()V

    .line 528
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->statusCallback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;

    if-nez v1, :cond_22

    goto :goto_25

    :cond_22
    invoke-interface {v1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;->onDestroy()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 529
    :goto_25
    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final dumpVEModel()Ljava/lang/String;
    .registers 2

    .line 595
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->dumpVEModel()Ljava/lang/String;

    move-result-object p0

    const-string v0, "playerApi.dumpVEModel()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final dumpVESequence()Ljava/lang/String;
    .registers 2

    .line 591
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->dumpVESequence()Ljava/lang/String;

    move-result-object p0

    const-string v0, "playerApi.dumpVESequence()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 573
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 585
    monitor-enter p0

    .line 586
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->getDuration()J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause()I
    .registers 3

    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->pause()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->statusCallback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;

    if-nez v1, :cond_e

    goto :goto_11

    :cond_e
    invoke-interface {v1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;->onPause()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 179
    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public play()I
    .registers 3

    .line 42
    monitor-enter p0

    .line 43
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->play()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->statusCallback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;

    if-nez v1, :cond_e

    goto :goto_11

    :cond_e
    invoke-interface {v1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;->onPlay()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 45
    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()I
    .registers 2

    .line 36
    monitor-enter p0

    .line 37
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->prepare()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recycleEngine()I
    .registers 2

    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->stop()I

    .line 194
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->releaseEngine()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 192
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshAllKeyframeInfo(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrack;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
    .registers 11

    if-eqz p6, :cond_131

    if-nez p5, :cond_6

    goto/16 :goto_131

    .line 222
    :cond_6
    sget-object p5, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p5}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p5

    if-nez p5, :cond_f

    goto :goto_3d

    .line 223
    :cond_f
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NLEVEPublic2: mediaRuntimeApi refreshAllKeyframeInfo time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",parentId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",json="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",keyframeType="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 222
    invoke-virtual {p5, v0, p2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_3d
    if-nez p7, :cond_41

    const/4 p2, -0x1

    goto :goto_49

    .line 227
    :cond_41
    sget-object p2, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    :goto_49
    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_132

    goto/16 :goto_131

    .line 263
    :pswitch_4f
    :try_start_4f
    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getChromaChannels()Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;

    move-result-object p2

    if-nez p2, :cond_56

    goto :goto_7c

    :cond_56
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object p6, p5

    check-cast p6, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;

    .line 264
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getMediaApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p7

    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p7, p6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5a

    move-object p3, p5

    .line 263
    :cond_7a
    check-cast p3, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;

    :goto_7c
    if-nez p3, :cond_80

    goto/16 :goto_131

    .line 266
    :cond_80
    invoke-direct {p0, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->handleChromaKeyFrame(Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_83} :catch_131

    return-void

    .line 255
    :pswitch_84
    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object p2

    if-nez p2, :cond_8b

    goto :goto_b1

    :cond_8b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_af

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object p6, p5

    check-cast p6, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    .line 256
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getMediaApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p7

    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p7, p6}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_8f

    move-object p3, p5

    .line 255
    :cond_af
    check-cast p3, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    :goto_b1
    if-nez p3, :cond_b5

    goto/16 :goto_131

    .line 258
    :cond_b5
    invoke-direct {p0, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->handleFilterKeyframe(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;Ljava/lang/String;)V

    return-void

    .line 248
    :pswitch_b9
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getMediaApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p2

    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cc

    goto :goto_131

    .line 251
    :cond_cc
    invoke-direct {p0, p4, p6}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->handleStickerKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void

    .line 242
    :pswitch_d0
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getMediaApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p2

    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e3

    goto :goto_131

    .line 245
    :cond_e3
    invoke-direct {p0, p4, p6}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->handleTextKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void

    .line 235
    :pswitch_e7
    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMasks()Lcom/bytedance/ies/nle/editor_jni/VecNLEMaskSPtr;

    move-result-object p2

    if-nez p2, :cond_ee

    goto :goto_114

    :cond_ee
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_112

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object p7, p5

    check-cast p7, Lcom/bytedance/ies/nle/editor_jni/NLEMask;

    .line 236
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getMediaApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object v0

    invoke-virtual {p7}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p7}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_f2

    move-object p3, p5

    .line 235
    :cond_112
    check-cast p3, Lcom/bytedance/ies/nle/editor_jni/NLEMask;

    :goto_114
    if-nez p3, :cond_117

    goto :goto_131

    .line 238
    :cond_117
    invoke-direct {p0, p4, p3, p6}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->handleMaskKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEMask;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    return-void

    .line 229
    :pswitch_11b
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getMediaApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p2

    invoke-virtual {p6}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12e

    goto :goto_131

    .line 232
    :cond_12e
    invoke-direct {p0, p4, p6}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->handleVideoKeyframe(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    :catch_131
    :cond_131
    :goto_131
    return-void

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_e7
        :pswitch_d0
        :pswitch_b9
        :pswitch_84
        :pswitch_4f
    .end packed-switch
.end method

.method public refreshCurrentFrame()I
    .registers 2

    .line 577
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->refreshCurrentFrame(I)I

    move-result p0

    return p0
.end method

.method public refreshCurrentFrame(I)I
    .registers 2

    .line 581
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->refreshCurrentFrame(I)I

    move-result p0

    return p0
.end method

.method public releaseEngineUnitResourceAsync(Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;)I
    .registers 3

    .line 550
    monitor-enter p0

    .line 551
    :try_start_1
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->releaseEngineListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;

    .line 552
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->stop()I

    .line 553
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->releaseEngine(Z)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    .line 550
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseResource()I
    .registers 2

    .line 542
    monitor-enter p0

    .line 543
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->releaseResource()I

    move-result v0

    .line 544
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->releaseAsyncHandler()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 545
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeOnInfoListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V
    .registers 2

    .line 515
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerInfoListenerList:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_e

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;)I
    .registers 5

    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;)I

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 55
    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;Lcom/bytedance/ies/nle/editor_jni/INLEListenerSeek;)I
    .registers 8

    .line 148
    monitor-enter p0

    if-eqz p4, :cond_15

    .line 150
    :try_start_3
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->ensureCallback()V

    .line 151
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->innerSetInfoListener()V

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_53

    .line 154
    :cond_15
    :goto_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;)I

    move-result p3

    .line 155
    sget-object p4, Lcom/bytedance/ies/nle/editor_jni/NLEError;->SUCCESS:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    invoke-virtual {p4}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigValue()I

    move-result p4

    if-eq p3, p4, :cond_51

    .line 156
    sget-object p4, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p4}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p4

    if-nez p4, :cond_2a

    goto :goto_48

    :cond_2a
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_WARNING:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NLEVEPublic2: seekTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " failed! veResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 157
    :goto_48
    iget-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_13

    .line 159
    :cond_51
    monitor-exit p0

    return p3

    :goto_53
    monitor-exit p0

    throw p1
.end method

.method public seekWithFrame(JLcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;)I
    .registers 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_1
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$seekWithFrame$1$1;

    invoke-direct {v0, p3}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$seekWithFrame$1$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;)V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekGetImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

    .line 81
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekGetImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

    invoke-virtual {p3, p1, p2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->seekWithFrame(JLcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFirstFrameListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 500
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->ensureCallback()V

    .line 501
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->firstFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;

    .line 502
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->innerSetInfoListener()V

    :cond_a
    return-void
.end method

.method public setOnErrorListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 535
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->ensureCallback()V

    .line 536
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerErrorListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

    .line 537
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->innerSetInfoListener()V

    :cond_a
    return-void
.end method

.method public setPlayRange(JJ)I
    .registers 5

    .line 164
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->setPlayRange(JJ)I

    move-result p0

    return p0
.end method

.method public setPlayRange(JJLcom/bytedance/ies/nle/editor_jni/NLESetRangeMode;)I
    .registers 6

    .line 168
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->setPlayRange(JJLcom/bytedance/ies/nle/editor_jni/NLESetRangeMode;)I

    move-result p0

    return p0
.end method

.method public setPlayerStatusListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->statusCallback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;

    return-void
.end method

.method public setVideoOutputListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 566
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->ensureCallback()V

    .line 567
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->videoOutputListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;

    .line 568
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->innerSetInfoListener()V

    :cond_a
    return-void
.end method

.method public state()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;
    .registers 2

    .line 560
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->state()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    move-result-object p0

    const-string v0, "playerApi.state()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public stop()I
    .registers 3

    .line 184
    monitor-enter p0

    .line 185
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->stop()I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->statusCallback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;

    if-nez v1, :cond_e

    goto :goto_11

    :cond_e
    invoke-interface {v1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerPlayerStatus;->onStop()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 187
    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
