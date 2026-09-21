.class public interface abstract Lcom/bytedance/ies/mediaprocessors/extractor/protobuf/ExtractorProtobuf$C_FaceAttributeOrBuilder;
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
    name = "C_FaceAttributeOrBuilder"
.end annotation


# virtual methods
.method public abstract getAge()F
.end method

.method public abstract getAttractive()F
.end method

.method public abstract getBoyProb()F
.end method

.method public abstract getExpProbs(I)F
.end method

.method public abstract getExpProbsCount()I
.end method

.method public abstract getExpProbsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpType()I
.end method

.method public abstract getGender()I
.end method

.method public abstract getHappyScore()F
.end method

.method public abstract getQuality()F
.end method

.method public abstract getRealFaceProb()F
.end method

.method public abstract hasAge()Z
.end method

.method public abstract hasAttractive()Z
.end method

.method public abstract hasBoyProb()Z
.end method

.method public abstract hasExpType()Z
.end method

.method public abstract hasGender()Z
.end method

.method public abstract hasHappyScore()Z
.end method

.method public abstract hasQuality()Z
.end method

.method public abstract hasRealFaceProb()Z
.end method
