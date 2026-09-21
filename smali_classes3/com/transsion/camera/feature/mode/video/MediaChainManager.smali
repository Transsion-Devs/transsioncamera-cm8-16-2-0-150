.class Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;,
        Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;
    }
.end annotation


# static fields
.field public static final INTERPOLATE_FPS_120:I = 0x78

.field public static final INTERPOLATE_FPS_240:I = 0xf0

.field public static final INTERPOLATE_RATIO_240:I = 0x2

.field public static final INTERPOLATE_RATIO_960:I = 0x4

.field private static final MSG_COMMAND_BASE:I = 0xa

.field private static final MSG_COMMAND_LOAD_ALGORITHM:I = 0xa

.field private static final MSG_COMMAND_PROCESS:I = 0xb

.field private static final MSG_COMMAND_PROCESS_END:I = 0xc

.field private static final MSG_COMMAND_UNINIT:I = 0xd

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

.field private mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

.field private mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

.field private mDumpNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;

.field private mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mInterpolateFPS:I

.field private mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

.field private mInterpolateRatio:I

.field private mMediaChainHandler:Landroid/os/Handler;

.field private mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field private mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

.field private mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# direct methods
.method public static synthetic $r8$lambda$AfM7mTe1ldJ_Rgux1P7YCcRyaUc(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoLoadingAlgorithm(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doLoadingAlgorithm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoProcess(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doProcess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoProcessEnd(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doProcessEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUnInit(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doUnInit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUnLoadingAlgorithm(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doUnLoadingAlgorithm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaChainManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    const/16 v1, 0x78

    .line 70
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    .line 72
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 73
    sget-object v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 76
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    .line 77
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    .line 79
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->instance()Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    .line 80
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->setVideoInterpolate(Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;)V

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->setDetectListener(Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;)V

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    .line 85
    new-instance v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->setProcessListener(Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;)V

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mediachain_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    new-instance v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/MediaChainManager-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    return-void
.end method

.method private doLoadingAlgorithm()V
    .registers 11

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 262
    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doUnLoadingAlgorithm start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    iget v6, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 265
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->getInitFormat()I

    move-result v7

    iget v8, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    iget v9, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    .line 264
    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->init(IIIII)Z

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doLoadingAlgorithm end, process time:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doProcess()V
    .registers 3

    .line 282
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doProcess"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/node/IChain;->init()V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    return-void
.end method

.method private doProcessEnd()V
    .registers 3

    .line 293
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doProcessEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/node/IChain;->unInit()V

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

    if-eqz p0, :cond_13

    .line 297
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;->onProcessEnd()V

    :cond_13
    return-void
.end method

.method private doUnInit()V
    .registers 3

    .line 302
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 304
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 306
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    :cond_1a
    return-void
.end method

.method private doUnLoadingAlgorithm()V
    .registers 6

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 273
    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doUnLoadingAlgorithm start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->unInit()Z

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doUnLoadingAlgorithm end, process time:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getInitFormat()I
    .registers 1

    const/16 p0, 0x2008

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method private removeMessages(I)V
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendMessage(IIILjava/lang/Object;)Z
    .registers 5

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    if-nez p0, :cond_1c

    .line 253
    sget-object p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMessage mMediaChainHandler is null what: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 256
    :cond_1c
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public loadingAlgorithm()V
    .registers 3

    .line 154
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadingAlgorithm"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public process()V
    .registers 3

    .line 159
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "process"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public setCaptureRate(I)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setCaptureRate(I)V

    return-void
.end method

.method public setChainListener(Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

    return-void
.end method

.method public setDumpFrameRange(Landroid/util/Range;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDumpNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;

    if-eqz p0, :cond_7

    .line 136
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->setDumpRange(Landroid/util/Range;)V

    :cond_7
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFilePath(Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFilePath(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setFrameInfo(II)V
    .registers 4

    .line 115
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    .line 116
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->getInitFormat()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->setFrameInfo(III)V

    return-void
.end method

.method public setFrameRate(I)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFrameRate(I)V

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFrameRate(I)V

    return-void
.end method

.method public setInterpolateFPS(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    return-void
.end method

.method public setInterpolateRatio(I)V
    .registers 3

    .line 129
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->setInterpolateRatio(I)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setInterpolateRatio(I)V

    return-void
.end method

.method public setKeepFrameRange(II)V
    .registers 3

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setKeepFrameRange(II)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setOrientation(I)V

    return-void
.end method

.method public setSkipFramesOnce(I)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setSkipFramesOnce(I)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method
