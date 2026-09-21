.class public final Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketFactoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PacketManagerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

.field public static final PACKET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedIsInitialized:B

.field private packet_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1511
    new-instance v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;-><init>()V

    .line 1514
    sput-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1515
    const-class v1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1155
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 1455
    iput-byte v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->memoizedIsInitialized:B

    .line 1156
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1600()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 1

    .line 1150
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 3

    .line 1150
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->setPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 2

    .line 1150
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->addPacket(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 3

    .line 1150
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->addPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;Ljava/lang/Iterable;)V
    .registers 2

    .line 1150
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->addAllPacket(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;)V
    .registers 1

    .line 1150
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->clearPacket()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;I)V
    .registers 2

    .line 1150
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->removePacket(I)V

    return-void
.end method

.method private addAllPacket(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;)V"
        }
    .end annotation

    .line 1234
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    .line 1235
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 3

    .line 1225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1226
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    .line 1227
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPacket(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 2

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    .line 1218
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearPacket()V
    .registers 2

    .line 1242
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePacketIsMutable()V
    .registers 3

    .line 1196
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1197
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1199
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 1

    .line 1520
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;
    .registers 1

    .line 1327
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;
    .registers 2

    .line 1330
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 2

    .line 1304
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 3

    .line 1310
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 2

    .line 1268
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 3

    .line 1275
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 2

    .line 1315
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 3

    .line 1322
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 2

    .line 1292
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 3

    .line 1299
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 2

    .line 1255
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 3

    .line 1262
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 2

    .line 1280
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .registers 3

    .line 1287
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;",
            ">;"
        }
    .end annotation

    .line 1526
    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePacket(I)V
    .registers 2

    .line 1248
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    .line 1249
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .registers 3

    .line 1208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1209
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    .line 1210
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1461
    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 1504
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

    .line 1500
    iput-byte p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->memoizedIsInitialized:B

    return-object p3

    .line 1497
    :pswitch_1b
    iget-byte p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1482
    :pswitch_22
    sget-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3d

    .line 1484
    const-class p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    monitor-enter p1

    .line 1485
    :try_start_29
    sget-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_39

    .line 1487
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1490
    sput-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3b

    .line 1492
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

    .line 1479
    :pswitch_3e
    sget-object p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0

    .line 1469
    :pswitch_41
    const-string p0, "packet_"

    const-class p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1473
    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u041b"

    .line 1475
    sget-object p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1466
    :pswitch_52
    new-instance p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;

    invoke-direct {p0, p3}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;-><init>(Lcom/google/mediapipe/proto/PacketFactoryProto$1;)V

    return-object p0

    .line 1463
    :pswitch_58
    new-instance p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;-><init>()V

    return-object p0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_41
        :pswitch_3e
        :pswitch_22
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1150
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getPacket(I)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .registers 2

    .line 1186
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public getPacketCount()I
    .registers 1

    .line 1179
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPacketList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation

    .line 1165
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getPacketOrBuilder(I)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;
    .registers 2

    .line 1193
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;

    return-object p0
.end method

.method public getPacketOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1172
    iget-object p0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1150
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1150
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
