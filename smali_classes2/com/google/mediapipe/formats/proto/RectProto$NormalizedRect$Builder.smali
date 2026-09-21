.class public final Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1363
    # getter for: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    invoke-static {}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$1400()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/RectProto$1;)V
    .registers 2

    .line 1356
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearHeight()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 2

    .line 1506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearHeight()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$2000(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public clearRectId()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 2

    .line 1650
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1651
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearRectId()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$2600(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public clearRotation()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 2

    .line 1594
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1595
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearRotation()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$2400(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public clearWidth()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 2

    .line 1542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearWidth()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$2200(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public clearXCenter()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 2

    .line 1418
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1419
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearXCenter()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$1600(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public clearYCenter()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 2

    .line 1454
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1455
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearYCenter()V
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$1800(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()F
    .registers 1

    .line 1481
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getHeight()F

    move-result p0

    return p0
.end method

.method public getRectId()J
    .registers 3

    .line 1623
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getRectId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRotation()F
    .registers 1

    .line 1569
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getRotation()F

    move-result p0

    return p0
.end method

.method public getWidth()F
    .registers 1

    .line 1525
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getWidth()F

    move-result p0

    return p0
.end method

.method public getXCenter()F
    .registers 1

    .line 1391
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getXCenter()F

    move-result p0

    return p0
.end method

.method public getYCenter()F
    .registers 1

    .line 1437
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getYCenter()F

    move-result p0

    return p0
.end method

.method public hasHeight()Z
    .registers 1

    .line 1469
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->hasHeight()Z

    move-result p0

    return p0
.end method

.method public hasRectId()Z
    .registers 1

    .line 1610
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->hasRectId()Z

    move-result p0

    return p0
.end method

.method public hasRotation()Z
    .registers 1

    .line 1557
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->hasRotation()Z

    move-result p0

    return p0
.end method

.method public hasWidth()Z
    .registers 1

    .line 1517
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->hasWidth()Z

    move-result p0

    return p0
.end method

.method public hasXCenter()Z
    .registers 1

    .line 1378
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->hasXCenter()Z

    move-result p0

    return p0
.end method

.method public hasYCenter()Z
    .registers 1

    .line 1429
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->hasYCenter()Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1356
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 1356
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4

    .line 1356
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 5

    .line 1356
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1356
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1356
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1356
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1356
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1356
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1356
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1356
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1356
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4

    .line 1356
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 5

    .line 1356
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1356
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setHeight(F)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 3

    .line 1493
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1494
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setHeight(F)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$1900(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V

    return-object p0
.end method

.method public setRectId(J)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 4

    .line 1636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1637
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setRectId(J)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$2500(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;J)V

    return-object p0
.end method

.method public setRotation(F)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 3

    .line 1581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setRotation(F)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$2300(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V

    return-object p0
.end method

.method public setWidth(F)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 3

    .line 1533
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1534
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setWidth(F)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$2100(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V

    return-object p0
.end method

.method public setXCenter(F)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 3

    .line 1404
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setXCenter(F)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$1500(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V

    return-object p0
.end method

.method public setYCenter(F)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 3

    .line 1445
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    # invokes: Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setYCenter(F)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->access$1700(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V

    return-object p0
.end method
