.class public final Lcom/google/protobuf/Mixin$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MixinOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Mixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/Mixin$Builder;",
        ">;",
        "Lcom/google/protobuf/MixinOrBuilder;"
    }
.end annotation


# instance fields
.field private name_:Ljava/lang/Object;

.field private root_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 506
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 736
    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 507
    invoke-direct {p0}, Lcom/google/protobuf/Mixin$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 640
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 736
    iput-object p1, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 513
    invoke-direct {p0}, Lcom/google/protobuf/Mixin$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Mixin$1;)V
    .registers 3

    .line 488
    invoke-direct {p0, p1}, Lcom/google/protobuf/Mixin$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Mixin$1;)V
    .registers 2

    .line 488
    invoke-direct {p0}, Lcom/google/protobuf/Mixin$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 494
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 516
    sget-boolean p0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;
    .registers 3

    .line 589
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/Mixin;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/Mixin;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/protobuf/Mixin;
    .registers 2

    .line 543
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->buildPartial()Lcom/google/protobuf/Mixin;

    move-result-object p0

    .line 544
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 545
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->buildPartial()Lcom/google/protobuf/Mixin;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->buildPartial()Lcom/google/protobuf/Mixin;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/google/protobuf/Mixin;
    .registers 3

    .line 552
    new-instance v0, Lcom/google/protobuf/Mixin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Mixin;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Mixin$1;)V

    .line 553
    iget-object v1, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Mixin;->access$302(Lcom/google/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v1, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Mixin;->access$402(Lcom/google/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clear()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clear()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clear()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clear()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 522
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 525
    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 572
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 711
    invoke-static {}, Lcom/google/protobuf/Mixin;->getDefaultInstance()Lcom/google/protobuf/Mixin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 712
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 577
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public clearRoot()Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 811
    invoke-static {}, Lcom/google/protobuf/Mixin;->getDefaultInstance()Lcom/google/protobuf/Mixin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clone()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clone()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clone()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clone()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clone()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/protobuf/Mixin$Builder;
    .registers 1

    .line 561
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->clone()Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Mixin;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Mixin;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Mixin;
    .registers 1

    .line 538
    invoke-static {}, Lcom/google/protobuf/Mixin;->getDefaultInstance()Lcom/google/protobuf/Mixin;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 533
    sget-object p0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 651
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 652
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 654
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 655
    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 658
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 671
    iget-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 672
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 673
    check-cast v0, Ljava/lang/String;

    .line 674
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 676
    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 679
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .registers 3

    .line 747
    iget-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 748
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 749
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 751
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 752
    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    return-object v0

    .line 755
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRootBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 769
    iget-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 770
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 771
    check-cast v0, Ljava/lang/String;

    .line 772
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 774
    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    return-object v0

    .line 777
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 500
    sget-object p0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v0, Lcom/google/protobuf/Mixin;

    const-class v1, Lcom/google/protobuf/Mixin$Builder;

    .line 501
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin$Builder;
    .registers 5

    const/4 v0, 0x0

    .line 628
    :try_start_1
    # getter for: Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;
    invoke-static {}, Lcom/google/protobuf/Mixin;->access$500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Mixin;
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 634
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Mixin$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 630
    :try_start_14
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Mixin;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 631
    :try_start_1a
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    move-object v0, p2

    :goto_21
    if-eqz v0, :cond_26

    .line 634
    invoke-virtual {p0, v0}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Mixin$Builder;

    .line 636
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Mixin$Builder;
    .registers 3

    .line 593
    instance-of v0, p1, Lcom/google/protobuf/Mixin;

    if-eqz v0, :cond_b

    .line 594
    check-cast p1, Lcom/google/protobuf/Mixin;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0

    .line 596
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Mixin$Builder;
    .registers 3

    .line 602
    invoke-static {}, Lcom/google/protobuf/Mixin;->getDefaultInstance()Lcom/google/protobuf/Mixin;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 603
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 604
    # getter for: Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/Mixin;->access$300(Lcom/google/protobuf/Mixin;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 607
    :cond_1a
    invoke-virtual {p1}, Lcom/google/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 608
    # getter for: Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/Mixin;->access$400(Lcom/google/protobuf/Mixin;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 609
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 611
    :cond_2d
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;

    .line 612
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 845
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Mixin$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;
    .registers 3

    .line 567
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    iput-object p1, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 727
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 731
    iput-object p1, p0, Lcom/google/protobuf/Mixin$Builder;->name_:Ljava/lang/Object;

    .line 732
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 488
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Mixin$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .line 488
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Mixin$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Mixin$Builder;
    .registers 4

    .line 583
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method

.method public setRoot(Ljava/lang/String;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 793
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    iput-object p1, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 797
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRootBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 828
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 832
    iput-object p1, p0, Lcom/google/protobuf/Mixin$Builder;->root_:Ljava/lang/Object;

    .line 833
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Mixin$Builder;
    .registers 2

    .line 839
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin$Builder;

    return-object p0
.end method
