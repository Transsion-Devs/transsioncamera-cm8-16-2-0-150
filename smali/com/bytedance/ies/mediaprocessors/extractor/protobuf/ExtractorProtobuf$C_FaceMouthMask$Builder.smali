.class public final Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;",
        ">;",
        "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMaskOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private faceMaskSize_:I

.field private faceMask_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private id_:I

.field private warpMat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 15671
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 15887
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    .line 15981
    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    .line 15672
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 2

    .line 15654
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 15677
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 15887
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    .line 15981
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    .line 15678
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V
    .registers 3

    .line 15654
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureFaceMaskIsMutable()V
    .registers 4

    .line 15889
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    .line 15890
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    .line 15891
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private ensureWarpMatIsMutable()V
    .registers 4

    .line 15983
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    .line 15984
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    .line 15985
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 15660
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceMouthMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 15682
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$16700()Z

    return-void
.end method


# virtual methods
.method public addAllFaceMask(Ljava/lang/Iterable;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;"
        }
    .end annotation

    .line 15961
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureFaceMaskIsMutable()V

    .line 15962
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 15964
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllWarpMat(Ljava/lang/Iterable;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;"
        }
    .end annotation

    .line 16055
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureWarpMatIsMutable()V

    .line 16056
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 16058
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addFaceMask(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3

    .line 15947
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureFaceMaskIsMutable()V

    .line 15948
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3

    .line 15766
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addWarpMat(F)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3

    .line 16041
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureWarpMatIsMutable()V

    .line 16042
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16043
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;
    .registers 2

    .line 15708
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    .line 15709
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 15710
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->build()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;
    .registers 6

    .line 15716
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$1;)V

    .line 15717
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    .line 15722
    :goto_f
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMaskSize_:I

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->faceMaskSize_:I
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$16902(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;I)I

    .line 15723
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_28

    .line 15724
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    .line 15725
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    .line 15727
    :cond_28
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->faceMask_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17002(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;Ljava/util/List;)Ljava/util/List;

    .line 15728
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_41

    .line 15729
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    .line 15730
    iget v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    .line 15732
    :cond_41
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->warpMat_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17102(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;Ljava/util/List;)Ljava/util/List;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4d

    or-int/lit8 v3, v3, 0x2

    .line 15736
    :cond_4d
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->id_:I

    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->id_:I
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17202(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;I)I

    .line 15737
    # setter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->bitField0_:I
    invoke-static {v0, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17302(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;I)I

    .line 15738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->buildPartial()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 4

    .line 15686
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 15687
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMaskSize_:I

    .line 15688
    iget v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v2, v1, -0x2

    iput v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    .line 15689
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    .line 15691
    iput-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    .line 15693
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->id_:I

    and-int/lit8 v0, v1, -0x10

    .line 15694
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clear()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearFaceMask()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 15975
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    .line 15976
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    .line 15977
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFaceMaskSize()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 15881
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 15882
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMaskSize_:I

    .line 15883
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 15752
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearId()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 16101
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 16102
    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->id_:I

    .line 16103
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 15756
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearWarpMat()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 16069
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    .line 16070
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    .line 16071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 1

    .line 15743
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->clone()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;
    .registers 1

    .line 15704
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 15654
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->getDefaultInstanceForType()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 15700
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceMouthMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getFaceMask(I)I
    .registers 2

    .line 15923
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getFaceMaskCount()I
    .registers 1

    .line 15913
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getFaceMaskList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 15903
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFaceMaskSize()I
    .registers 1

    .line 15858
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMaskSize_:I

    return p0
.end method

.method public getId()I
    .registers 1

    .line 16086
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->id_:I

    return p0
.end method

.method public getWarpMat(I)F
    .registers 2

    .line 16017
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getWarpMatCount()I
    .registers 1

    .line 16007
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getWarpMatList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 15997
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasFaceMaskSize()Z
    .registers 2

    .line 15848
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasId()Z
    .registers 2

    .line 16080
    iget p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 15665
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->internal_static_C_FaceMouthMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;->access$16400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    const-class v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    .line 15666
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 15811
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->hasFaceMaskSize()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 15814
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->hasId()Z

    move-result p0

    if-nez p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 4

    .line 15778
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->getDefaultInstance()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 15779
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->hasFaceMaskSize()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15780
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->getFaceMaskSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setFaceMaskSize(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    .line 15782
    :cond_14
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->faceMask_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17000(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 15783
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 15784
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->faceMask_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17000(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    .line 15785
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    goto :goto_3f

    .line 15787
    :cond_33
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureFaceMaskIsMutable()V

    .line 15788
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->faceMask_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17000(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15790
    :goto_3f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 15792
    :cond_42
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->warpMat_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17100(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 15793
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 15794
    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->warpMat_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17100(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    .line 15795
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    goto :goto_6d

    .line 15797
    :cond_61
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureWarpMatIsMutable()V

    .line 15798
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->warpMat_:Ljava/util/List;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17100(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15800
    :goto_6d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 15802
    :cond_70
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->hasId()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 15803
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setId(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    .line 15805
    :cond_7d
    # getter for: Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->access$17400(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    .line 15806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 5

    const/4 v0, 0x0

    .line 15826
    :try_start_1
    sget-object v1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_11
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz p1, :cond_e

    .line 15832
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    :cond_e
    return-object p0

    :catchall_f
    move-exception p1

    goto :goto_1f

    :catch_11
    move-exception p1

    .line 15828
    :try_start_12
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 15829
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

    .line 15832
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    :cond_24
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3

    .line 15769
    instance-of v0, p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    if-eqz v0, :cond_b

    .line 15770
    check-cast p1, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0

    .line 15772
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 16113
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setFaceMask(II)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 4

    .line 15934
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureFaceMaskIsMutable()V

    .line 15935
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMask_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15936
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setFaceMaskSize(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3

    .line 15868
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    .line 15869
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->faceMaskSize_:I

    .line 15870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3

    .line 15748
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 15654
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setId(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 3

    .line 16092
    iget v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->bitField0_:I

    .line 16093
    iput p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->id_:I

    .line 16094
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 4

    .line 15761
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 15654
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .line 15654
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 2

    .line 16108
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 15654
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setWarpMat(IF)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;
    .registers 4

    .line 16028
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->ensureWarpMatIsMutable()V

    .line 16029
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceMouthMask$Builder;->warpMat_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16030
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
