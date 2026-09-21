.class public final Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 377
    # getter for: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$000()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$1;)V
    .registers 2

    .line 370
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 2

    .line 453
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearBaseOptions()V
    invoke-static {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$300(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V

    return-object p0
.end method

.method public clearClassifierOptions()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 2

    .line 530
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearClassifierOptions()V
    invoke-static {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$600(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V

    return-object p0
.end method

.method public clearDefaultInputAudioSampleRate()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 2

    .line 586
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearDefaultInputAudioSampleRate()V
    invoke-static {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$800(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 1

    .line 403
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object p0

    return-object p0
.end method

.method public getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .registers 1

    .line 480
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInputAudioSampleRate()D
    .registers 3

    .line 559
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getDefaultInputAudioSampleRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public hasBaseOptions()Z
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->hasBaseOptions()Z

    move-result p0

    return p0
.end method

.method public hasClassifierOptions()Z
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->hasClassifierOptions()Z

    move-result p0

    return p0
.end method

.method public hasDefaultInputAudioSampleRate()Z
    .registers 1

    .line 546
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->hasDefaultInputAudioSampleRate()Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 370
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 3

    .line 441
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$200(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 3

    .line 518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$500(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4

    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 5

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 370
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 370
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 370
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 370
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 370
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4

    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 5

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 3

    .line 428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$100(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 3

    .line 414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$100(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 3

    .line 505
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$400(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
.end method

.method public setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 3

    .line 491
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$400(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
.end method

.method public setDefaultInputAudioSampleRate(D)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 4

    .line 572
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 573
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setDefaultInputAudioSampleRate(D)V
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->access$700(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;D)V

    return-object p0
.end method
