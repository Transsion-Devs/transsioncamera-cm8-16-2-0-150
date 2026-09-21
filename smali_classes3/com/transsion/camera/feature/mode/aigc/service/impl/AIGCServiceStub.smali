.class public Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;


# static fields
.field private static final PROCESS_DURATION:J = 0x2710L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCallBackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            "Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallBackWrapperMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->mCallBackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCServiceStub"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->mCallBackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->mCallBackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    if-eqz p0, :cond_28

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    :cond_28
    return-void
.end method

.method public freeService()V
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->mCallBackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;)V
    .registers 7

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request request@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p3, p2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IProgressCallBack;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService$IRequestCallBack;)V

    .line 54
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;->mCallBackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;

    const-string v0, "AIGCServiceStub"

    invoke-direct {p3, p0, v0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceStub;Ljava/lang/String;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    const-wide/16 p0, 0x2710

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p3, p0, p1, v0}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->schedule(Lcom/transsion/camera/utils/threads/WorkTask;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
