.class public final Lcom/google/protobuf/Value$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/Value$Builder;",
        ">;",
        "Lcom/google/protobuf/ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;

.field private listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/ListValue;",
            "Lcom/google/protobuf/ListValue$Builder;",
            "Lcom/google/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/Struct;",
            "Lcom/google/protobuf/Struct$Builder;",
            "Lcom/google/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 720
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 899
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 721
    invoke-direct {p0}, Lcom/google/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 726
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 899
    iput p1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 727
    invoke-direct {p0}, Lcom/google/protobuf/Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Value$1;)V
    .registers 3

    .line 702
    invoke-direct {p0, p1}, Lcom/google/protobuf/Value$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Value$1;)V
    .registers 2

    .line 702
    invoke-direct {p0}, Lcom/google/protobuf/Value$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 708
    sget-object v0, Lcom/google/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getListValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/ListValue;",
            "Lcom/google/protobuf/ListValue$Builder;",
            "Lcom/google/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_25

    .line 1584
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_f

    .line 1585
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1587
    :cond_f
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ListValue;

    .line 1590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1591
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1592
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1594
    :cond_25
    iput v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1595
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1596
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method private getStructValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/Struct;",
            "Lcom/google/protobuf/Struct$Builder;",
            "Lcom/google/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_25

    .line 1407
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-eq v0, v1, :cond_f

    .line 1408
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1410
    :cond_f
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Struct;

    .line 1413
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1415
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1417
    :cond_25
    iput v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1418
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1419
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 730
    sget-boolean p0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 826
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->build()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->build()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/protobuf/Value;
    .registers 2

    .line 755
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->buildPartial()Lcom/google/protobuf/Value;

    move-result-object p0

    .line 756
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 757
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->buildPartial()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->buildPartial()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/google/protobuf/Value;
    .registers 4

    .line 764
    new-instance v0, Lcom/google/protobuf/Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Value;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Value$1;)V

    .line 765
    iget v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 766
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_10
    iget v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 769
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_1a
    iget v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    .line 772
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_24
    iget v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2e

    .line 775
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_2e
    iget v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_44

    .line 778
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3d

    .line 779
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 781
    :cond_3d
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_44
    :goto_44
    iget v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5a

    .line 785
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_53

    .line 786
    iget-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 788
    :cond_53
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    # setter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_5a
    :goto_5a
    iget v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    # setter for: Lcom/google/protobuf/Value;->kindCase_:I
    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$402(Lcom/google/protobuf/Value;I)I

    .line 792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clear()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clear()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clear()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clear()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/google/protobuf/Value$Builder;
    .registers 2

    .line 736
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 737
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearBoolValue()Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1237
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1238
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1239
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1240
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Value$Builder;
    .registers 2

    .line 809
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method

.method public clearKind()Lcom/google/protobuf/Value$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 910
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearListValue()Lcom/google/protobuf/Value$Builder;
    .registers 6

    .line 1530
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_13

    .line 1531
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_12

    .line 1532
    iput v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1533
    iput-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1537
    :cond_13
    iget v4, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1b

    .line 1538
    iput v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1539
    iput-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1541
    :cond_1b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearNullValue()Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1002
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1003
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1004
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public clearNumberValue()Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1059
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1060
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1061
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Value$Builder;
    .registers 2

    .line 814
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method

.method public clearStringValue()Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1160
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1161
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x0

    .line 1162
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1163
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_e
    return-object p0
.end method

.method public clearStructValue()Lcom/google/protobuf/Value$Builder;
    .registers 6

    .line 1353
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_13

    .line 1354
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v3, :cond_12

    .line 1355
    iput v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1356
    iput-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_12
    return-object p0

    .line 1360
    :cond_13
    iget v4, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v4, v3, :cond_1b

    .line 1361
    iput v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1362
    iput-object v1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1364
    :cond_1b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clone()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clone()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clone()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clone()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clone()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/protobuf/Value$Builder;
    .registers 1

    .line 798
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->clone()Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBoolValue()Z
    .registers 3

    .line 1208
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 1209
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Value$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Value;
    .registers 1

    .line 750
    invoke-static {}, Lcom/google/protobuf/Value;->getDefaultInstance()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 745
    sget-object p0, Lcom/google/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public getKindCase()Lcom/google/protobuf/Value$KindCase;
    .registers 1

    .line 903
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    invoke-static {p0}, Lcom/google/protobuf/Value$KindCase;->forNumber(I)Lcom/google/protobuf/Value$KindCase;

    move-result-object p0

    return-object p0
.end method

.method public getListValue()Lcom/google/protobuf/ListValue;
    .registers 3

    .line 1446
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_13

    .line 1447
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_e

    .line 1448
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ListValue;

    return-object p0

    .line 1450
    :cond_e
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object p0

    return-object p0

    .line 1452
    :cond_13
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne p0, v1, :cond_1e

    .line 1453
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ListValue;

    return-object p0

    .line 1455
    :cond_1e
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object p0

    return-object p0
.end method

.method public getListValueBuilder()Lcom/google/protobuf/ListValue$Builder;
    .registers 1

    .line 1553
    invoke-direct {p0}, Lcom/google/protobuf/Value$Builder;->getListValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ListValue$Builder;

    return-object p0
.end method

.method public getListValueOrBuilder()Lcom/google/protobuf/ListValueOrBuilder;
    .registers 4

    .line 1564
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1565
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ListValueOrBuilder;

    return-object p0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1568
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/ListValue;

    return-object p0

    .line 1570
    :cond_17
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object p0

    return-object p0
.end method

.method public getNullValue()Lcom/google/protobuf/NullValue;
    .registers 3

    .line 967
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 969
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 970
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 969
    invoke-static {p0}, Lcom/google/protobuf/NullValue;->valueOf(I)Lcom/google/protobuf/NullValue;

    move-result-object p0

    if-nez p0, :cond_15

    .line 971
    sget-object p0, Lcom/google/protobuf/NullValue;->UNRECOGNIZED:Lcom/google/protobuf/NullValue;

    :cond_15
    return-object p0

    .line 973
    :cond_16
    sget-object p0, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    return-object p0
.end method

.method public getNullValueValue()I
    .registers 3

    .line 937
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 938
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public getNumberValue()D
    .registers 3

    .line 1030
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1031
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 4

    .line 1090
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1091
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_a

    .line 1090
    :cond_8
    const-string v0, ""

    .line 1093
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 1094
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1096
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1097
    iget v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1a

    .line 1098
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 1102
    :cond_1b
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .line 1117
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1118
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_a

    .line 1117
    :cond_8
    const-string v0, ""

    .line 1120
    :goto_a
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 1121
    check-cast v0, Ljava/lang/String;

    .line 1122
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1124
    iget v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_1a

    .line 1125
    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    :cond_1a
    return-object v0

    .line 1129
    :cond_1b
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStructValue()Lcom/google/protobuf/Struct;
    .registers 3

    .line 1269
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_13

    .line 1270
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_e

    .line 1271
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/Struct;

    return-object p0

    .line 1273
    :cond_e
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object p0

    return-object p0

    .line 1275
    :cond_13
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne p0, v1, :cond_1e

    .line 1276
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Struct;

    return-object p0

    .line 1278
    :cond_1e
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object p0

    return-object p0
.end method

.method public getStructValueBuilder()Lcom/google/protobuf/Struct$Builder;
    .registers 1

    .line 1376
    invoke-direct {p0}, Lcom/google/protobuf/Value$Builder;->getStructValueFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Struct$Builder;

    return-object p0
.end method

.method public getStructValueOrBuilder()Lcom/google/protobuf/StructOrBuilder;
    .registers 4

    .line 1387
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_10

    .line 1388
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/StructOrBuilder;

    return-object p0

    :cond_10
    if-ne v0, v1, :cond_17

    .line 1391
    iget-object p0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/Struct;

    return-object p0

    .line 1393
    :cond_17
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object p0

    return-object p0
.end method

.method public hasBoolValue()Z
    .registers 2

    .line 1197
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasListValue()Z
    .registers 2

    .line 1434
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasNullValue()Z
    .registers 2

    .line 925
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasNumberValue()Z
    .registers 2

    .line 1019
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasStringValue()Z
    .registers 2

    .line 1077
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasStructValue()Z
    .registers 2

    .line 1257
    iget p0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 3

    .line 714
    sget-object p0, Lcom/google/protobuf/StructProto;->internal_static_google_protobuf_Value_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v0, Lcom/google/protobuf/Value;

    const-class v1, Lcom/google/protobuf/Value$Builder;

    .line 715
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

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value$Builder;
    .registers 5

    const/4 v0, 0x0

    .line 888
    :try_start_1
    # getter for: Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;
    invoke-static {}, Lcom/google/protobuf/Value;->access$500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Value;
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 894
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 890
    :try_start_14
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Value;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 891
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

    .line 894
    invoke-virtual {p0, v0}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value$Builder;

    .line 896
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 830
    instance-of v0, p1, Lcom/google/protobuf/Value;

    if-eqz v0, :cond_b

    .line 831
    check-cast p1, Lcom/google/protobuf/Value;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0

    .line 833
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value$Builder;
    .registers 4

    .line 839
    invoke-static {}, Lcom/google/protobuf/Value;->getDefaultInstance()Lcom/google/protobuf/Value;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 840
    :cond_7
    sget-object v0, Lcom/google/protobuf/Value$2;->$SwitchMap$com$google$protobuf$Value$KindCase:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getKindCase()Lcom/google/protobuf/Value$KindCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    goto :goto_4b

    .line 864
    :pswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getListValue()Lcom/google/protobuf/ListValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Value$Builder;->mergeListValue(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/Value$Builder;

    goto :goto_4b

    .line 860
    :pswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getStructValue()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Value$Builder;->mergeStructValue(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Value$Builder;

    goto :goto_4b

    .line 856
    :pswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Value$Builder;->setBoolValue(Z)Lcom/google/protobuf/Value$Builder;

    goto :goto_4b

    :pswitch_2f
    const/4 v0, 0x3

    .line 850
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 851
    # getter for: Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/Value;->access$300(Lcom/google/protobuf/Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 852
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_4b

    .line 846
    :pswitch_3c
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/Value$Builder;->setNumberValue(D)Lcom/google/protobuf/Value$Builder;

    goto :goto_4b

    .line 842
    :pswitch_44
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getNullValueValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Value$Builder;->setNullValueValue(I)Lcom/google/protobuf/Value$Builder;

    .line 871
    :goto_4b
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;

    .line 872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3c
        :pswitch_2f
        :pswitch_27
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public mergeListValue(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/Value$Builder;
    .registers 5

    .line 1504
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x6

    if-nez v0, :cond_2a

    .line 1505
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1506
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1507
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ListValue;

    invoke-static {v0}, Lcom/google/protobuf/ListValue;->newBuilder(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/ListValue$Builder;

    move-result-object v0

    .line 1508
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ListValue$Builder;->mergeFrom(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/ListValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ListValue$Builder;->buildPartial()Lcom/google/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_26

    .line 1510
    :cond_24
    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1512
    :goto_26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1514
    :cond_2a
    iget v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_31

    .line 1515
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1517
    :cond_31
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1519
    :goto_36
    iput v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public mergeStructValue(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Value$Builder;
    .registers 5

    .line 1327
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x5

    if-nez v0, :cond_2a

    .line 1328
    iget v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1329
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v2

    if-eq v0, v2, :cond_24

    .line 1330
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    move-result-object v0

    .line 1331
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$Builder;->mergeFrom(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->buildPartial()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    goto :goto_26

    .line 1333
    :cond_24
    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1335
    :goto_26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_36

    .line 1337
    :cond_2a
    iget v2, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    if-ne v2, v1, :cond_31

    .line 1338
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1340
    :cond_31
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1342
    :goto_36
    iput v1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;
    .registers 2

    .line 1607
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method

.method public setBoolValue(Z)Lcom/google/protobuf/Value$Builder;
    .registers 3

    const/4 v0, 0x4

    .line 1223
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1224
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1225
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Value$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 804
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method

.method public setListValue(Lcom/google/protobuf/ListValue$Builder;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1488
    invoke-virtual {p1}, Lcom/google/protobuf/ListValue$Builder;->build()Lcom/google/protobuf/ListValue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1489
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1491
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/ListValue$Builder;->build()Lcom/google/protobuf/ListValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x6

    .line 1493
    iput p1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setListValue(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1466
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->listValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1471
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1473
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x6

    .line 1475
    iput p1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 986
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 988
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 989
    invoke-virtual {p1}, Lcom/google/protobuf/NullValue;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNullValueValue(I)Lcom/google/protobuf/Value$Builder;
    .registers 3

    const/4 v0, 0x1

    .line 952
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 954
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNumberValue(D)Lcom/google/protobuf/Value$Builder;
    .registers 4

    const/4 v0, 0x2

    .line 1045
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1046
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1047
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Value$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Value$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Value$Builder;
    .registers 4

    .line 820
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    .line 1146
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1147
    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1148
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStringValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    const/4 v0, 0x3

    .line 1182
    iput v0, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    .line 1183
    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStructValue(Lcom/google/protobuf/Struct$Builder;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1311
    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 1314
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/4 p1, 0x5

    .line 1316
    iput p1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public setStructValue(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Value$Builder;
    .registers 3

    .line 1289
    iget-object v0, p0, Lcom/google/protobuf/Value$Builder;->structValueBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    iput-object p1, p0, Lcom/google/protobuf/Value$Builder;->kind_:Ljava/lang/Object;

    .line 1294
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 1296
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/4 p1, 0x5

    .line 1298
    iput p1, p0, Lcom/google/protobuf/Value$Builder;->kindCase_:I

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Value$Builder;
    .registers 2

    .line 1601
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Value$Builder;

    return-object p0
.end method
