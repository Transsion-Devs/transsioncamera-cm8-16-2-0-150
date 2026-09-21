.class public final Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;",
        "Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 302
    # getter for: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;
    invoke-static {}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$000()Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$1;)V
    .registers 2

    .line 295
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->clearBaseOptions()V
    invoke-static {v0}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$300(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;)V

    return-object p0
.end method

.method public clearEmbedderOptions()Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 2

    .line 455
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->clearEmbedderOptions()V
    invoke-static {v0}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$600(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getEmbedderOptions()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->getEmbedderOptions()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    move-result-object p0

    return-object p0
.end method

.method public hasBaseOptions()Z
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->hasBaseOptions()Z

    move-result p0

    return p0
.end method

.method public hasEmbedderOptions()Z
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->hasEmbedderOptions()Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 295
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 3

    .line 366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$200(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 3

    .line 443
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 444
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->mergeEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$500(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 295
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4

    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 5

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 295
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 295
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 295
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 295
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 295
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 295
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 295
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 295
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4

    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 5

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 295
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 3

    .line 353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 354
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$100(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 3

    .line 339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$100(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;)Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 3

    .line 430
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->setEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$400(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V

    return-object p0
.end method

.method public setEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions$Builder;
    .registers 3

    .line 416
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;

    # invokes: Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->setEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->access$400(Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V

    return-object p0
.end method
