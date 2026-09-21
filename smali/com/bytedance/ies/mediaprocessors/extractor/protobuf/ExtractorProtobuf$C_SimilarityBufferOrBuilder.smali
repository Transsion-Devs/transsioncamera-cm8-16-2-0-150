.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SimilarityBufferOrBuilder;
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
    name = "C_SimilarityBufferOrBuilder"
.end annotation


# virtual methods
.method public abstract getClusterIds(I)I
.end method

.method public abstract getClusterIdsCount()I
.end method

.method public abstract getClusterIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeature(I)I
.end method

.method public abstract getFeatureCount()I
.end method

.method public abstract getFeatureList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScore()F
.end method

.method public abstract hasScore()Z
.end method
