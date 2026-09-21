.class public Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;,
        Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;,
        Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;
    }
.end annotation


# static fields
.field private static final DELAY_RETRY:J = 0x3e8L

.field private static final KEY_INITIALIZE_SUCCESS:Ljava/lang/String; = "success"

.field private static final REQUEST_TIME_OUT:J = 0x75300L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VERSION:Ljava/lang/String; = "v3.0"


# instance fields
.field private volatile mConfigBundle:Landroid/os/Bundle;

.field private volatile mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

.field private final mFlowCallback:Lcom/transsion/aicore/nexusflow/FlowCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLockGuard:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private volatile mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

.field private final mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            "Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$U5PB1zZyq99fTh1SGAMSnKkjJNw(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->lambda$request$0(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Dpt1TlVn-GM0lFlc-vLnQsimJQ()Lkotlin/Unit;
    .registers 2

    .line 381
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NexusFlow Service Connected!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mJh1_nhT08u6DCMF7vazymaKDJg(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->lambda$initLocked$2(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sjpVKlPc9wv37LwXv8LyQCdHxc4(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)V
    .registers 4

    .line 638
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeService request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 639
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmCallBackWrapper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialized(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockGuard(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLooper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Landroid/os/Looper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestHolderMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCServiceImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mFlowCallback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLooper:Landroid/os/Looper;

    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private buildCancelParam(Lcom/transsion/camera/app/common/ai/AIRequest;)Landroid/os/Bundle;
    .registers 4

    .line 610
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 611
    const-string p1, "generate_ability"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 616
    const-string v0, "param"

    sget-object v1, Lcom/transsion/aicore/cv/ipc/data/GenerateType;->GENERATE_GENERATE_PORTRAIT:Lcom/transsion/aicore/cv/ipc/data/GenerateType;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;-><init>()V

    .line 619
    invoke-virtual {v0, p0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAbility(Ljava/util/HashMap;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    .line 620
    const-string v0, "method_generate_cancel"

    invoke-virtual {p0, v0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAbilityMethod(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    .line 621
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAbilityMethodParameter(Ljava/util/HashMap;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 622
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAsync(Z)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    .line 623
    invoke-virtual {p0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private buildRequestParam(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;Landroid/graphics/Bitmap;)Landroid/os/Bundle;
    .registers 5

    .line 534
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 536
    const-string/jumbo v0, "version"

    const-string/jumbo v1, "v3.0"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v0, "requestId"

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "templateCode"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 541
    const-string v0, "generate_ability"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 546
    const-string v1, "param"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string p0, "image"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    invoke-direct {p0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;-><init>()V

    .line 550
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAbility(Ljava/util/HashMap;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    .line 551
    const-string p1, "method_generate_portrait"

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAbilityMethod(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    .line 552
    invoke-virtual {p0, v0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAbilityMethodParameter(Ljava/util/HashMap;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 553
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putAsync(Z)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object p0

    .line 554
    invoke-virtual {p0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private cancelLocked(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    .line 576
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 579
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 580
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cancel mNexusFlow is not initialize"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    return-object p0

    .line 584
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    if-nez v0, :cond_28

    goto :goto_55

    .line 604
    :cond_28
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelLocked mRequestMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    return-object p0

    .line 585
    :cond_55
    :goto_55
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel invalid mNexusFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mConfigBundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    return-object p0
.end method

.method private freeServiceLocked()V
    .registers 4

    .line 644
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeServiceLocked mInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNexusFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 645
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-eqz v0, :cond_52

    .line 649
    :try_start_44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/NexusFlow;->deInit()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_52

    :catch_4a
    move-exception v0

    .line 651
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "freeService deInit"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    return-void
.end method

.method private init(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V
    .registers 7

    .line 362
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 365
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 366
    :try_start_e
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->initLocked(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V

    .line 367
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_2c

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init end, cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_2c
    move-exception p0

    .line 367
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private initLocked(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V
    .registers 6

    .line 373
    new-instance v0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;-><init>()V

    const-string v1, "GENERATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v2}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putCapability([Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object v0

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 375
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putCallerPackageName(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object v0

    .line 376
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->putFlowInstanceId(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    .line 379
    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow;

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-direct {v0, v2}, Lcom/transsion/aicore/nexusflow/NexusFlow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/NexusFlow;->setConnectionCallbacks(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 412
    :try_start_43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    new-instance v3, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;

    invoke-direct {v3, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/aicore/nexusflow/NexusFlow;->init(Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception p1

    .line 447
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init failed"

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    .line 449
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    return-void
.end method

.method private synthetic lambda$initLocked$2(Ljava/lang/String;)Lkotlin/Unit;
    .registers 8

    .line 384
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NexusFlow Service Disconnected! reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    monitor-enter p1

    .line 390
    :try_start_19
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 391
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    .line 392
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 393
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    if-eqz v2, :cond_56

    .line 395
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    if-eqz v3, :cond_57

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NexusFlow Service Disconnected requestId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :catchall_54
    move-exception p0

    goto :goto_62

    :cond_56
    move-object v3, v1

    .line 402
    :cond_57
    :goto_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_19 .. :try_end_58} :catchall_54

    if-eqz v3, :cond_61

    .line 405
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmCallBackWrapper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    :cond_61
    return-object v1

    .line 402
    :goto_62
    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_54

    throw p0
.end method

.method private synthetic lambda$request$0(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 4

    .line 328
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->requestImpl(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    return-void
.end method

.method private requestImpl(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->requestLocked(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)Z

    move-result p0

    .line 460
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 463
    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    :cond_e
    return-void

    :catchall_f
    move-exception p0

    .line 460
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private requestLocked(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)Z
    .registers 11

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 471
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "requestImpl mNexusFlow is not initialize"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 475
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1b

    goto/16 :goto_ee

    :cond_1b
    const/4 v0, 0x0

    .line 483
    :try_start_1c
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestJpegPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_43

    if-nez v2, :cond_4c

    .line 485
    :try_start_26
    sget-object v3, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestImpl failed requestBitmap is null, requestJpegPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestJpegPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    return v1

    :catch_41
    move-exception v3

    goto :goto_45

    :catch_43
    move-exception v3

    move-object v2, v0

    .line 489
    :goto_45
    sget-object v4, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "requestImpl decodeFile failed"

    invoke-static {v4, v5, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    :cond_4c
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 494
    new-instance v3, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    new-instance v4, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLooper:Landroid/os/Looper;

    new-instance v6, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;

    invoke-direct {v6, p0, p2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$3;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;)V

    invoke-direct {v4, v5, p3, v6}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;)V

    invoke-direct {v3, p1, v4, v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl-IA;)V

    .line 507
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestImpl requestId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", mRequestMap: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 511
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 510
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    :try_start_9d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->builder()Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    const-string p2, "GENERATE"

    .line 515
    invoke-virtual {p1, p2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->setMethod(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    .line 516
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->buildRequestParam(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->setParams(Landroid/os/Bundle;)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mFlowCallback:Lcom/transsion/aicore/nexusflow/FlowCallback;

    .line 517
    invoke-virtual {p1, p2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->callback(Lcom/transsion/aicore/nexusflow/FlowCallback;)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    const-wide/32 p2, 0x75300

    .line 518
    invoke-virtual {p1, p2, p3}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->timeout(J)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    sget-object p2, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility;->INSTANCE:Lcom/transsion/aicore/cv/ipc/ability/EngineAbility;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    .line 519
    invoke-virtual {p2, p3}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility;->getCallerPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p1, p3, v2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->setCallerProcessInfo(Ljava/lang/String;I)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    .line 520
    invoke-virtual {p2, p3}, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility;->getFlowInstanceId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->setFlowInstanceId(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowBuilder;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowBuilder;->build()Lcom/transsion/aicore/nexusflow/FlowConfig;

    move-result-object p1

    .line 523
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {p2, p1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->invoke(Lcom/transsion/aicore/nexusflow/FlowConfig;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_e1} :catch_e3

    const/4 p0, 0x1

    return p0

    :catch_e3
    move-exception p1

    .line 525
    sget-object p2, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "request exception"

    invoke-static {p2, p3, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mCurrentRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return v1

    .line 476
    :cond_ee
    :goto_ee
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestImpl failed mNexusFlow: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mConfigBundle: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mConfigBundle:Landroid/os/Bundle;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->cancelLocked(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_1c

    .line 567
    :cond_15
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_13

    if-eqz p1, :cond_1b

    .line 570
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$mcancel(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)V

    :cond_1b
    return-void

    .line 567
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_13

    throw p0
.end method

.method public freeService()V
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->freeServiceLocked()V

    .line 632
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestHolderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 634
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 635
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_20

    .line 637
    new-instance p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_20
    move-exception p0

    .line 635
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 8

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mLockGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request mInitialized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mNexusFlow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->mNexusFlow:Lcom/transsion/aicore/nexusflow/NexusFlow;

    if-nez v1, :cond_32

    goto :goto_36

    :cond_32
    const/4 v1, 0x0

    goto :goto_37

    :catchall_34
    move-exception p0

    goto :goto_47

    :cond_36
    :goto_36
    const/4 v1, 0x1

    .line 325
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_34

    if-eqz v1, :cond_43

    .line 328
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->init(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V

    return-void

    .line 330
    :cond_43
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->requestImpl(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V

    return-void

    .line 325
    :goto_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_34

    throw p0
.end method
