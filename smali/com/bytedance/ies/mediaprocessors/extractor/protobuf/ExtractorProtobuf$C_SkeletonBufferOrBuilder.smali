.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonBufferOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "C_SkeletonBufferOrBuilder"
.end annotation


# virtual methods
.method public abstract getMBackbonFeatDim()I
.end method

.method public abstract getMBackboneFeats(I)F
.end method

.method public abstract getMBackboneFeatsCount()I
.end method

.method public abstract getMBackboneFeatsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMHeatmapDim()I
.end method

.method public abstract getMHeatmaps(I)F
.end method

.method public abstract getMHeatmapsCount()I
.end method

.method public abstract getMHeatmapsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMIsBackboneFeatsValid()Z
.end method

.method public abstract getMIsExecuted()Z
.end method

.method public abstract getMSkeletonInfos(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonInfo;
.end method

.method public abstract getMSkeletonInfosCount()I
.end method

.method public abstract getMSkeletonInfosList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMSkeletonInfosOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonInfoOrBuilder;
.end method

.method public abstract getMSkeletonInfosOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMSourceHeight()I
.end method

.method public abstract getMSourceWidth()I
.end method

.method public abstract hasMBackbonFeatDim()Z
.end method

.method public abstract hasMHeatmapDim()Z
.end method

.method public abstract hasMIsBackboneFeatsValid()Z
.end method

.method public abstract hasMIsExecuted()Z
.end method

.method public abstract hasMSourceHeight()Z
.end method

.method public abstract hasMSourceWidth()Z
.end method
