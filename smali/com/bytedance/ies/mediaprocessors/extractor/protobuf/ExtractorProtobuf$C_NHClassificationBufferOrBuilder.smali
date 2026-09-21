.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationBufferOrBuilder;
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
    name = "C_NHClassificationBufferOrBuilder"
.end annotation


# virtual methods
.method public abstract getMBufferSize()J
.end method

.method public abstract getMClassificationFeatures(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationFeature;
.end method

.method public abstract getMClassificationFeaturesCount()I
.end method

.method public abstract getMClassificationFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationFeature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMClassificationFeaturesOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationFeatureOrBuilder;
.end method

.method public abstract getMClassificationFeaturesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationFeatureOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMClassificationInfos(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;
.end method

.method public abstract getMClassificationInfosCount()I
.end method

.method public abstract getMClassificationInfosList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMClassificationInfosOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfoOrBuilder;
.end method

.method public abstract getMClassificationInfosOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMLabels(I)Ljava/lang/String;
.end method

.method public abstract getMLabelsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMLabelsCount()I
.end method

.method public abstract getMLabelsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMThresh(I)F
.end method

.method public abstract getMThreshCount()I
.end method

.method public abstract getMThreshList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMBufferSize()Z
.end method
