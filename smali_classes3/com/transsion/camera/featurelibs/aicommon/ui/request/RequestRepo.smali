.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;
.implements Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

.field private final mCompletedTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

.field private final mFailedTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

.field private final mHeaderItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

.field private mItemListener:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;

.field private final mProcessingRequestMap:Ljava/util/Map;

.field private final mProcessingTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

.field private final mQueuingTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

.field private final mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

.field private final mSwitchItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;


# direct methods
.method public static synthetic $r8$lambda$ZFeOGyf5Z1kqwaeFYWfxtpAG0UY(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->lambda$buildItemList$0(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestRepo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mHeaderItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    .line 50
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    const/4 v1, -0x3

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_processing:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mProcessingTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    .line 51
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    const/4 v1, -0x4

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_queuing:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mQueuingTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    .line 52
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    const/4 v1, -0x5

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_completed:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mCompletedTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    .line 53
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    const/4 v1, -0x6

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_failed:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mFailedTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    .line 55
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mSwitchItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mProcessingRequestMap:Ljava/util/Map;

    .line 66
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ai/AIManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    .line 67
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIManager;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    return-void
.end method

.method private buildItemList()Ljava/util/List;
    .registers 10

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->getRequest(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->getRequest(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->getRequest(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->getRequest(I)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    sget-object v6, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildItemList processingList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", queuingList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", completedList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", failedList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9b

    .line 113
    :cond_8b
    iget-object v6, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mHeaderItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    iget-object v7, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/ai/AIManager;->limitedCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;->setLimited(I)V

    .line 114
    iget-object v6, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mHeaderItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_9b
    iget-object v6, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mProcessingRequestMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 119
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c5

    .line 120
    iget-object v6, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mProcessingTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;)V

    .line 123
    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 129
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_c5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13f

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mQueuingTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_11f

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mSwitchItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->switchExpand()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 138
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;-><init>()V

    .line 139
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 140
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_119

    .line 143
    :cond_f9
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const-wide/16 v5, 0x3

    .line 144
    invoke-interface {v1, v5, v6}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;-><init>()V

    .line 145
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 146
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :goto_119
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mSwitchItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13f

    .line 152
    :cond_11f
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 154
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mSwitchItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->switchExpand(Z)V

    .line 160
    :cond_13f
    :goto_13f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_164

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mCompletedTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;-><init>()V

    .line 164
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 165
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_164
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_189

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mFailedTitleItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;-><init>()V

    .line 172
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 173
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 170
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_189
    return-object v0
.end method

.method private synthetic lambda$buildItemList$0(Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;
    .registers 5

    .line 124
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-direct {v0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mProcessingRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildItemList processingRequest@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyStatusChanged()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mItemListener:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;

    if-eqz v0, :cond_b

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->buildItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;->onItemStatusChanged(Ljava/util/List;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public captureNotAllowed()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIManager;->captureLimited()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIManager;->captureWait()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public delete(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ai/AIManager;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIManager;->getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/ai/IAIFeature;->getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->setProgressListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->registerStatusListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V

    return-void
.end method

.method public onRequestProgressChanged(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mItemListener:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;

    if-eqz v0, :cond_3d

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mProcessingRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-nez v0, :cond_1e

    .line 184
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onProgressChanged requestItem not found!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_1e
    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressChanged request@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mItemListener:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;

    invoke-interface {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;->onItemProgressChanged(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    :cond_3d
    return-void
.end method

.method public onRequestStatusChanged(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 5

    .line 90
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestStatusChanged info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->notifyStatusChanged()V

    return-void
.end method

.method public oppositeSwitch(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V
    .registers 2

    .line 205
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->opposite()V

    .line 206
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->notifyStatusChanged()V

    return-void
.end method

.method public refresh()V
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIManager;->refresh()V

    return-void
.end method

.method public retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ai/AIManager;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public setItemListener(Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mItemListener:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;

    return-void
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mAIManager:Lcom/transsion/camera/app/common/ai/AIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ai/AIManager;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->setProgressListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestProgressListener;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->mRequestHolder:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->unregisterStatusListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V

    return-void
.end method
