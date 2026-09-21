.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceClustingBufferOrBuilder;
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
    name = "C_FaceClustingBufferOrBuilder"
.end annotation


# virtual methods
.method public abstract getMClusters(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;
.end method

.method public abstract getMClustersCount()I
.end method

.method public abstract getMClustersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArray;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMClustersOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;
.end method

.method public abstract getMClustersOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_IntArrayOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMFaceClustingInfo()Z
.end method

.method public abstract getMResults(I)I
.end method

.method public abstract getMResultsCount()I
.end method

.method public abstract getMResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMFaceClustingInfo()Z
.end method
