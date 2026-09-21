.class Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestHolder"
.end annotation


# instance fields
.field private final mCallBackWrapper:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

.field private volatile mCanceled:Z

.field private final mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

.field private final mRequestId:Ljava/lang/String;

.field private final mStartTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallBackWrapper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mCallBackWrapper:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCanceled(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mCanceled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mRequestId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mcancel(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->cancel()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mRequestId:Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mStartTime:J

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mCanceled:Z

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    .line 116
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mCallBackWrapper:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)V

    return-void
.end method

.method private cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mCanceled:Z

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mCallBackWrapper:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->mRequest:Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->cancel(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method
