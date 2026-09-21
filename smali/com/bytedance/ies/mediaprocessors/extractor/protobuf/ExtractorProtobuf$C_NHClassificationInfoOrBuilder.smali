.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_NHClassificationInfoOrBuilder;
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
    name = "C_NHClassificationInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getConfidence(I)F
.end method

.method public abstract getConfidenceCount()I
.end method

.method public abstract getConfidenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExceedThresh(I)I
.end method

.method public abstract getExceedThreshCount()I
.end method

.method public abstract getExceedThreshList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId(I)I
.end method

.method public abstract getIdCount()I
.end method

.method public abstract getIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumClasses()I
.end method

.method public abstract hasNumClasses()Z
.end method
