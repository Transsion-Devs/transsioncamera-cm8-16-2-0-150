.class public final Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBufferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;",
        ">;",
        "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBufferOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mClusters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceClustingInfo_:Z

.field private mResults_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 22117
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 22298
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    .line 22365
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22118
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 2

    .line 22100
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 22123
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 22298
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    .line 22365
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22124
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 3

    .line 22100
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureMClustersIsMutable()V
    .registers 4

    .line 22367
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    .line 22368
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22369
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private ensureMResultsIsMutable()V
    .registers 4

    .line 22300
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    .line 22301
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    .line 22302
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 22106
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceClustingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$23600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMClustersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22592
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 22593
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 22597
    :goto_11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 22598
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 22599
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22601
    :cond_21
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 22128
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24000()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22129
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getMClustersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllMClusters(Ljava/lang/Iterable;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;",
            ">;)",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;"
        }
    .end annotation

    .line 22503
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 22504
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22505
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 22507
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22509
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllMResults(Ljava/lang/Iterable;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;"
        }
    .end annotation

    .line 22348
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMResultsIsMutable()V

    .line 22349
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 22351
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addMClusters(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22489
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 22490
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22491
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22494
    :cond_14
    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMClusters(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22458
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 22460
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22462
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22463
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22464
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22466
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMClusters(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22475
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 22476
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22477
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22478
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22480
    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMClusters(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22441
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 22443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22445
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22446
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22447
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22449
    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addMClustersBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;
    .registers 2

    .line 22571
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getMClustersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    .line 22572
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object v0

    .line 22571
    invoke-virtual {p0, v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;

    return-object p0
.end method

.method public addMClustersBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;
    .registers 3

    .line 22579
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getMClustersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    .line 22580
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object v0

    .line 22579
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;

    return-object p0
.end method

.method public addMResults(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22338
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMResultsIsMutable()V

    .line 22339
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22340
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22215
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;
    .registers 2

    .line 22157
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    .line 22158
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 22159
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;
    .registers 6

    .line 22165
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    .line 22166
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 22169
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    .line 22170
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    .line 22172
    :cond_1b
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mResults_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;Ljava/util/List;)Ljava/util/List;

    .line 22173
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_3e

    .line 22174
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_38

    .line 22175
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22176
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    .line 22178
    :cond_38
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;Ljava/util/List;)Ljava/util/List;

    goto :goto_45

    .line 22180
    :cond_3e
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;Ljava/util/List;)Ljava/util/List;

    :goto_45
    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    .line 22185
    :goto_4b
    iget-boolean v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mFaceClustingInfo_:Z

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mFaceClustingInfo_:Z
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24402(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;Z)Z

    .line 22186
    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->bitField0_:I
    invoke-static {v0, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24502(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;I)I

    .line 22187
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22133
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 22134
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    .line 22135
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v2, v1, -0x2

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    .line 22136
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_18

    .line 22137
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    and-int/lit8 v0, v1, -0x4

    .line 22138
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    goto :goto_1b

    .line 22140
    :cond_18
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1b
    const/4 v0, 0x0

    .line 22142
    iput-boolean v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mFaceClustingInfo_:Z

    .line 22143
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 2

    .line 22201
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearMClusters()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 2

    .line 22517
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 22518
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22519
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    .line 22520
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22522
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearMFaceClustingInfo()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 2

    .line 22630
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 22631
    iput-boolean v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mFaceClustingInfo_:Z

    .line 22632
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMResults()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 2

    .line 22358
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    .line 22359
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    .line 22360
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 2

    .line 22205
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 1

    .line 22192
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;
    .registers 1

    .line 22153
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 22100
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 22149
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceClustingBuffer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$23600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getMClusters(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;
    .registers 3

    .line 22400
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 22401
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    return-object p0

    .line 22403
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    return-object p0
.end method

.method public getMClustersBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;
    .registers 2

    .line 22544
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getMClustersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;

    return-object p0
.end method

.method public getMClustersBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;",
            ">;"
        }
    .end annotation

    .line 22587
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getMClustersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMClustersCount()I
    .registers 2

    .line 22390
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 22391
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 22393
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result p0

    return p0
.end method

.method public getMClustersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;",
            ">;"
        }
    .end annotation

    .line 22380
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 22381
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 22383
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMClustersOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;
    .registers 3

    .line 22551
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 22552
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;

    return-object p0

    .line 22553
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;

    return-object p0
.end method

.method public getMClustersOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22561
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 22562
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 22564
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMFaceClustingInfo()Z
    .registers 1

    .line 22615
    iget-boolean p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mFaceClustingInfo_:Z

    return p0
.end method

.method public getMResults(I)I
    .registers 2

    .line 22322
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMResultsCount()I
    .registers 1

    .line 22316
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getMResultsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22310
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasMFaceClustingInfo()Z
    .registers 2

    .line 22609
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 22111
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceClustingBuffer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$23700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    const-class v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    .line 22112
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 1

    .line 22273
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->hasMFaceClustingInfo()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22227
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 22228
    :cond_7
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24200(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 22229
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 22230
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24200(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    .line 22231
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    goto :goto_32

    .line 22233
    :cond_26
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMResultsIsMutable()V

    .line 22234
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mResults_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24200(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22236
    :goto_32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 22238
    :cond_35
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_68

    .line 22239
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24300(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 22240
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 22241
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24300(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22242
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    goto :goto_64

    .line 22244
    :cond_58
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22245
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24300(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22247
    :goto_64
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_a4

    .line 22250
    :cond_68
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24300(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 22251
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 22252
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 22253
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 22254
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24300(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    .line 22255
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    .line 22257
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24600()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 22258
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->getMClustersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_98
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_a4

    .line 22260
    :cond_9b
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->mClusters_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24300(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 22264
    :cond_a4
    :goto_a4
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->hasMFaceClustingInfo()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 22265
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->getMFaceClustingInfo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->setMFaceClustingInfo(Z)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    .line 22267
    :cond_b1
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->access$24700(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    .line 22268
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 5

    const/4 v0, 0x0

    .line 22285
    :try_start_1
    sget-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    .line 22291
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    :cond_e
    return-object p0

    :catchall_f
    move-exception p1

    goto :goto_1f

    :catch_11
    move-exception p1

    .line 22287
    :try_start_12
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 22288
    :try_start_18
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p1

    move-object v0, p2

    :goto_1f
    if-eqz v0, :cond_24

    .line 22291
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    :cond_24
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22218
    instance-of v0, p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    if-eqz v0, :cond_b

    .line 22219
    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0

    .line 22221
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 2

    .line 22642
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public removeMClusters(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22530
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 22531
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22532
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22533
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22535
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22197
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 22100
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMClusters(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22428
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 22429
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22430
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22431
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22433
    :cond_14
    invoke-virtual {p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setMClusters(ILcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22411
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClustersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 22413
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22415
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMClustersIsMutable()V

    .line 22416
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mClusters_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22417
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 22419
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setMFaceClustingInfo(Z)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 3

    .line 22621
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->bitField0_:I

    .line 22622
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mFaceClustingInfo_:Z

    .line 22623
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMResults(II)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22329
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->ensureMResultsIsMutable()V

    .line 22330
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->mResults_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22331
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 4

    .line 22210
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 22100
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .line 22100
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;
    .registers 2

    .line 22637
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 22100
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBuffer$Builder;

    move-result-object p0

    return-object p0
.end method
