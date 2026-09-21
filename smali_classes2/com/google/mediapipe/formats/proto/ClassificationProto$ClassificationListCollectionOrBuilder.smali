.class public interface abstract Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListCollectionOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassificationListCollectionOrBuilder"
.end annotation


# virtual methods
.method public abstract getClassificationList(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
.end method

.method public abstract getClassificationListCount()I
.end method

.method public abstract getClassificationListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;"
        }
    .end annotation
.end method
