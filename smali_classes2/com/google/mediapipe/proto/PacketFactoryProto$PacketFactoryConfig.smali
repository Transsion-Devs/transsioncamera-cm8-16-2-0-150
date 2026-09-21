.class public final Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketFactoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PacketFactoryConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

.field public static final EXTERNAL_OUTPUT_FIELD_NUMBER:I = 0x3ea

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_SIDE_PACKET_FIELD_NUMBER:I = 0x2

.field public static final PACKET_FACTORY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private externalOutput_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

.field private outputSidePacket_:Ljava/lang/String;

.field private packetFactory_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1106
    new-instance v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;-><init>()V

    .line 1109
    sput-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 1110
    const-class v1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 1046
    iput-byte v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->memoizedIsInitialized:B

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearExternalOutput()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setExternalOutputBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->mergeOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearOptions()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 1

    .line 320
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setPacketFactory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearPacketFactory()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setPacketFactoryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setOutputSidePacket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearOutputSidePacket()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setExternalOutput(Ljava/lang/String;)V

    return-void
.end method

.method private clearExternalOutput()V
    .registers 2

    .line 548
    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 549
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getExternalOutput()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 627
    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    .line 628
    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private clearOutputSidePacket()V
    .registers 2

    .line 470
    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 471
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getOutputSidePacket()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    return-void
.end method

.method private clearPacketFactory()V
    .registers 2

    .line 392
    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 393
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getPacketFactory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 1

    .line 1115
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .registers 4

    .line 610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    if-eqz v0, :cond_22

    .line 612
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 613
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    .line 614
    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;->newBuilder(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    goto :goto_24

    .line 616
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    .line 618
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .registers 1

    .line 706
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .registers 2

    .line 709
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 2

    .line 683
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 3

    .line 689
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 2

    .line 647
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 3

    .line 654
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 2

    .line 694
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 3

    .line 701
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 2

    .line 671
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 3

    .line 678
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 2

    .line 634
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 3

    .line 641
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 2

    .line 659
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 3

    .line 666
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation

    .line 1121
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExternalOutput(Ljava/lang/String;)V
    .registers 3

    .line 536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 538
    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-void
.end method

.method private setExternalOutputBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 561
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    .line 562
    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private setOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .registers 2

    .line 597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    .line 599
    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private setOutputSidePacket(Ljava/lang/String;)V
    .registers 3

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 460
    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    return-void
.end method

.method private setOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 483
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    .line 484
    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private setPacketFactory(Ljava/lang/String;)V
    .registers 3

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 382
    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    return-void
.end method

.method private setPacketFactoryBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 405
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    .line 406
    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1052
    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_64

    .line 1099
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    if-nez p2, :cond_16

    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    const/4 p1, 0x1

    :goto_17
    int-to-byte p1, p1

    .line 1095
    iput-byte p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->memoizedIsInitialized:B

    return-object p3

    .line 1092
    :pswitch_1b
    iget-byte p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1077
    :pswitch_22
    sget-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3d

    .line 1079
    const-class p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    monitor-enter p1

    .line 1080
    :try_start_29
    sget-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_39

    .line 1082
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1085
    sput-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3b

    .line 1087
    :cond_39
    :goto_39
    monitor-exit p1

    return-object p0

    :goto_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_37

    throw p0

    :cond_3d
    return-object p0

    .line 1074
    :pswitch_3e
    sget-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0

    .line 1060
    :pswitch_41
    const-string p0, "bitField0_"

    const-string p1, "packetFactory_"

    const-string p2, "outputSidePacket_"

    const-string p3, "options_"

    const-string v0, "externalOutput_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1067
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u03ea\u0004\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1409\u0003\u03ea\u1008\u0002"

    .line 1070
    sget-object p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1057
    :pswitch_58
    new-instance p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;

    invoke-direct {p0, p3}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;-><init>(Lcom/google/mediapipe/proto/PacketFactoryProto$1;)V

    return-object p0

    .line 1054
    :pswitch_5e
    new-instance p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;-><init>()V

    return-object p0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_58
        :pswitch_41
        :pswitch_3e
        :pswitch_22
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 320
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getExternalOutput()Ljava/lang/String;
    .registers 1

    .line 511
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-object p0
.end method

.method public getExternalOutputBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 524
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;
    .registers 1

    .line 587
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getOutputSidePacket()Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputSidePacketBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 446
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPacketFactory()Ljava/lang/String;
    .registers 1

    .line 355
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    return-object p0
.end method

.method public getPacketFactoryBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 368
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasExternalOutput()Z
    .registers 1

    .line 499
    iget p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasOptions()Z
    .registers 1

    .line 576
    iget p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasOutputSidePacket()Z
    .registers 1

    .line 421
    iget p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasPacketFactory()Z
    .registers 2

    .line 343
    iget p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 320
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 320
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
