.class public Lcom/transsion/camera/app/common/ai/AIRequestHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;,
        Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCompletedRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mFailedRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressListener:Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;

.field private final mQueuingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6zcpH1uuV2gZTVHyWIL3xFn1l94(Lcom/transsion/camera/app/common/ai/AIRequest;Ljava/util/List;)V
    .registers 2

    .line 192
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$7YMJKlbKgOm03JRR5DbwuIeNtCg(Lcom/transsion/camera/app/common/ai/AIRequestHolder;Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->lambda$addAll$6(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9oc8yuAJtT4pL292JIiM90I3MS4(Ljava/util/List;Ljava/util/List;)V
    .registers 2

    .line 151
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 152
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$ByJLpTbTZFa8Ir97Ss5xEPYU1Ak(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V
    .registers 2

    .line 89
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;->onRequestStatusChanged(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HAqCIjGNpLwk4IecpN1NVXhgVMg(Lcom/transsion/camera/app/common/ai/AIRequest;Ljava/util/List;)V
    .registers 2

    .line 227
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$K-4OHrN5VYa3804fwurjt05Gej0(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 7

    .line 110
    invoke-static {}, Lcom/transsion/camera/utils/CalendarUtil;->getStartOfDay()J

    move-result-wide v0

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/CalendarUtil;->getEndOfDay()J

    move-result-wide v2

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestTime()J

    move-result-wide v4

    cmp-long p0, v4, v0

    if-ltz p0, :cond_16

    cmp-long p0, v4, v2

    if-gtz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$NU3Exvdj2_xELDSFSmB1Lf_45Dw(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 169
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_e

    .line 171
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 172
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$NzVY9UtJE2_CZgIjhPmn8dMmVog(Lcom/transsion/camera/app/common/ai/AIRequest;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x3

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v1

    if-eq v0, v1, :cond_13

    const/4 v0, 0x4

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v1

    if-ne v0, v1, :cond_f

    goto :goto_13

    .line 210
    :cond_f
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 208
    invoke-interface {p1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nGX7Sb2AEDcsfPlEd7WnQag4g5g(JLcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 5

    .line 271
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ur9vm82HzYv_FCVmKiD-XloWTGs(Lcom/transsion/camera/app/common/ai/AIRequest;Ljava/util/List;)Ljava/lang/Boolean;
    .registers 2

    .line 122
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompletedRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mCompletedRequests:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailedRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mFailedRequests:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessingRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mProcessingRequests:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueuingRequests(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mQueuingRequests:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIRequestHolder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mQueuingRequests:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mProcessingRequests:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mCompletedRequests:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mFailedRequests:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$1;-><init>(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mStatusListeners:Ljava/util/List;

    return-void
.end method

.method private currentDayFailedSize()I
    .registers 3

    .line 106
    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mFailedRequests:Ljava/util/List;

    .line 108
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda4;-><init>()V

    .line 109
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    .line 116
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private synthetic lambda$addAll$6(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 192
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;)V"
        }
    .end annotation

    .line 166
    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    .line 177
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public add(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->add(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    return-void
.end method

.method public add(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V
    .registers 5

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_25

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_27

    .line 217
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_23

    throw p1
.end method

.method public add(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_35

    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_35

    :cond_9
    const/4 v0, 0x0

    .line 147
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_15
    iget-object v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    .line 156
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_32

    throw p1

    .line 143
    :cond_35
    :goto_35
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "add request failed, requests is null or empty."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;)V"
        }
    .end annotation

    .line 181
    monitor-enter p0

    .line 182
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->clear()V

    if-eqz p1, :cond_1c

    .line 184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1c

    .line 190
    :cond_d
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    .line 195
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    goto :goto_28

    .line 185
    :cond_1c
    :goto_1c
    sget-object p1, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "add request failed, requests is null or empty."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    .line 187
    monitor-exit p0

    return-void

    .line 195
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_1a

    throw p1
.end method

.method public buildRequestStatusInfo()Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;
    .registers 3

    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mProcessingRequests:Ljava/util/List;

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->processingSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mQueuingRequests:Ljava/util/List;

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->queuingSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mCompletedRequests:Ljava/util/List;

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->completedSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mFailedRequests:Ljava/util/List;

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->failedSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;

    move-result-object v0

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->currentDayFailedSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->currentDayFailedSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->build()Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception v0

    .line 102
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mQueuingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mProcessingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mCompletedRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mFailedRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public contains(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 4

    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_2c
    move-exception p1

    .line 124
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public findRequest(J)Lcom/transsion/camera/app/common/ai/AIRequest;
    .registers 5

    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    .line 266
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda10;-><init>()V

    .line 268
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 269
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 270
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda11;-><init>(J)V

    .line 271
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 272
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    .line 273
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequest;

    monitor-exit p0

    return-object p1

    :catchall_38
    move-exception p1

    .line 274
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public getRequest(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ai/AIRequest;",
            ">;"
        }
    .end annotation

    .line 278
    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda6;-><init>()V

    .line 280
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_1e
    move-exception p1

    .line 281
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public move(Lcom/transsion/camera/app/common/ai/AIRequest;I)V
    .registers 4

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->move(Lcom/transsion/camera/app/common/ai/AIRequest;IZ)V

    return-void
.end method

.method public move(Lcom/transsion/camera/app/common/ai/AIRequest;IZ)V
    .registers 5

    .line 240
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    if-ne v0, p2, :cond_e

    .line 241
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "move request failed, status is same."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_e
    monitor-enter p0

    const/4 v0, 0x0

    .line 246
    :try_start_10
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    .line 247
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ai/AIRequest;->setRequestStatus(I)V

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->add(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    if-eqz p3, :cond_21

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_23

    .line 253
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_1f

    throw p1
.end method

.method public notifyStatusChanged()V
    .registers 5

    .line 86
    monitor-enter p0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->buildRequestStatusInfo()Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStatusChanged info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mStatusListeners:Ljava/util/List;

    new-instance v2, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 90
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public registerStatusListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V
    .registers 3

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 76
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_f

    throw p1
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;Z)V
    .registers 5

    .line 225
    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 227
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_25

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->notifyStatusChanged()V

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_27

    .line 232
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_23

    throw p1
.end method

.method public setProgressListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mProgressListener:Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;

    return-void
.end method

.method public unregisterStatusListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V
    .registers 3

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public updateProgress(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->mProgressListener:Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;

    if-eqz p0, :cond_7

    .line 259
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;->onRequestProgressChanged(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    :cond_7
    return-void
.end method
