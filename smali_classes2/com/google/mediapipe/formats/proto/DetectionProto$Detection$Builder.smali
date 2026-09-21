.class public final Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1572
    # getter for: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;
    invoke-static {}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$600()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/DetectionProto$1;)V
    .registers 2

    .line 1565
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAssociatedDetections(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 2214
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2215
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAllAssociatedDetections(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllDisplayName(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 2337
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAllDisplayName(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLabel(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 1671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAllLabel(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLabelId(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 1759
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAllLabelId(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllScore(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 1828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAllScore(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 2204
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2205
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2206
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 2205
    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 2186
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2187
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addAssociatedDetections(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 2195
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2196
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAssociatedDetections(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addAssociatedDetections(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 2177
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addAssociatedDetections(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addDisplayName(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 2321
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2322
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addDisplayName(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public addDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 2367
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2368
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addLabel(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1656
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addLabel(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public addLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1699
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1700
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addLabelBytes(Lcom/google/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addLabelId(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addLabelId(I)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;I)V

    return-object p0
.end method

.method public addScore(F)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->addScore(F)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;F)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearAssociatedDetections()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 2222
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2223
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearAssociatedDetections()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3500(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearDetectionId()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 2128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2129
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearDetectionId()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearDisplayName()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 2351
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2352
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearDisplayName()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearFeatureTag()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 1979
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearFeatureTag()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearLabel()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 1684
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1685
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearLabel()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearLabelId()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 1768
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearLabelId()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1500(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearLocationData()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 1908
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearLocationData()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearScore()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 1837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearScore()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearTimestampUsec()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 2423
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearTimestampUsec()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearTrackId()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 2

    .line 2061
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->clearTrackId()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getAssociatedDetections(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
    .registers 2

    .line 2152
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getAssociatedDetections(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    move-result-object p0

    return-object p0
.end method

.method public getAssociatedDetectionsCount()I
    .registers 1

    .line 2146
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getAssociatedDetectionsCount()I

    move-result p0

    return p0
.end method

.method public getAssociatedDetectionsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
            ">;"
        }
    .end annotation

    .line 2138
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2139
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getAssociatedDetectionsList()Ljava/util/List;

    move-result-object p0

    .line 2138
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getDetectionId()J
    .registers 3

    .line 2103
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDetectionId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .registers 2

    .line 2275
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNameBytes(I)Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2290
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayNameBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNameCount()I
    .registers 1

    .line 2261
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayNameCount()I

    move-result p0

    return p0
.end method

.method public getDisplayNameList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2247
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2248
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayNameList()Ljava/util/List;

    move-result-object p0

    .line 2247
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureTag()Ljava/lang/String;
    .registers 1

    .line 1937
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getFeatureTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureTagBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 1951
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getFeatureTagBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 2

    .line 1613
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1627
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getLabelCount()I
    .registers 1

    .line 1600
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelCount()I

    move-result p0

    return p0
.end method

.method public getLabelId(I)I
    .registers 2

    .line 1729
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelId(I)I

    move-result p0

    return p0
.end method

.method public getLabelIdCount()I
    .registers 1

    .line 1720
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelIdCount()I

    move-result p0

    return p0
.end method

.method public getLabelIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1711
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 1712
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelIdList()Ljava/util/List;

    move-result-object p0

    .line 1711
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLabelList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1587
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 1588
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelList()Ljava/util/List;

    move-result-object p0

    .line 1587
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLocationData()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
    .registers 1

    .line 1862
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLocationData()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    move-result-object p0

    return-object p0
.end method

.method public getScore(I)F
    .registers 2

    .line 1798
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScore(I)F

    move-result p0

    return p0
.end method

.method public getScoreCount()I
    .registers 1

    .line 1789
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreCount()I

    move-result p0

    return p0
.end method

.method public getScoreList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1780
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 1781
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreList()Ljava/util/List;

    move-result-object p0

    .line 1780
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTimestampUsec()J
    .registers 3

    .line 2396
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getTimestampUsec()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackId()Ljava/lang/String;
    .registers 1

    .line 2022
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getTrackId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTrackIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 2035
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getTrackIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasDetectionId()Z
    .registers 1

    .line 2091
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasDetectionId()Z

    move-result p0

    return p0
.end method

.method public hasFeatureTag()Z
    .registers 1

    .line 1924
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasFeatureTag()Z

    move-result p0

    return p0
.end method

.method public hasLocationData()Z
    .registers 1

    .line 1851
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasLocationData()Z

    move-result p0

    return p0
.end method

.method public hasTimestampUsec()Z
    .registers 1

    .line 2383
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasTimestampUsec()Z

    move-result p0

    return p0
.end method

.method public hasTrackId()Z
    .registers 1

    .line 2010
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasTrackId()Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1565
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 1565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4

    .line 1565
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 5

    .line 1565
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1565
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1565
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1565
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1565
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1565
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4

    .line 1565
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 5

    .line 1565
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1897
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1898
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->mergeLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public removeAssociatedDetections(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 2230
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2231
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->removeAssociatedDetections(I)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3600(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;I)V

    return-object p0
.end method

.method public setAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 2168
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2169
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2170
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 2169
    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public setAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 2159
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public setDetectionId(J)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 2115
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2116
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setDetectionId(J)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;J)V

    return-object p0
.end method

.method public setDisplayName(ILjava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 2305
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2306
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setDisplayName(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILjava/lang/String;)V

    return-object p0
.end method

.method public setFeatureTag(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setFeatureTag(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFeatureTagBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1995
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setFeatureTagBytes(Lcom/google/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2500(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLabel(ILjava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 1641
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setLabel(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILjava/lang/String;)V

    return-object p0
.end method

.method public setLabelId(II)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 1738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setLabelId(II)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;II)V

    return-object p0
.end method

.method public setLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1885
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public setLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 1872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public setScore(IF)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 1807
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setScore(IF)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1600(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;IF)V

    return-object p0
.end method

.method public setTimestampUsec(J)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 4

    .line 2409
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2410
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setTimestampUsec(J)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;J)V

    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 2048
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2049
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setTrackId(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2600(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTrackIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .registers 3

    .line 2076
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2077
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    # invokes: Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->setTrackIdBytes(Lcom/google/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
