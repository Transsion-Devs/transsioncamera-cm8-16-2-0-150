.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceVerifyInfoOrBuilder;
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
    name = "C_FaceVerifyInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getFeatures(I)F
.end method

.method public abstract getFeaturesCount()I
.end method

.method public abstract getFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getID()I
.end method

.method public abstract getMFace106()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106;
.end method

.method public abstract getMFace106OrBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Face106OrBuilder;
.end method

.method public abstract getMFaceStatus()I
.end method

.method public abstract getMModelVersion()Ljava/lang/String;
.end method

.method public abstract getMModelVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRect()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_Rect;
.end method

.method public abstract getRectOrBuilder()Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_RectOrBuilder;
.end method

.method public abstract hasID()Z
.end method

.method public abstract hasMFace106()Z
.end method

.method public abstract hasMFaceStatus()Z
.end method

.method public abstract hasMModelVersion()Z
.end method

.method public abstract hasRect()Z
.end method
