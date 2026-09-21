.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_SkeletonInfoOrBuilder;
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
    name = "C_SkeletonInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getID()I
.end method

.method public abstract getKeyPointsDetected(I)I
.end method

.method public abstract getKeyPointsDetectedCount()I
.end method

.method public abstract getKeyPointsDetectedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyPointsScore(I)F
.end method

.method public abstract getKeyPointsScoreCount()I
.end method

.method public abstract getKeyPointsScoreList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyPointsXy(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;
.end method

.method public abstract getKeyPointsXyCount()I
.end method

.method public abstract getKeyPointsXyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyPointsXyOrBuilder(I)Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;
.end method

.method public abstract getKeyPointsXyOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Float2OrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;
.end method

.method public abstract getRectOrBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;
.end method

.method public abstract hasID()Z
.end method

.method public abstract hasOrientation()Z
.end method

.method public abstract hasRect()Z
.end method
