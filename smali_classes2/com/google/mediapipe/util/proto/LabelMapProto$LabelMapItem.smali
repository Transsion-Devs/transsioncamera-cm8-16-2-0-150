.class public final Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/LabelMapProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelMapItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItemOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHILD_NAME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private childName_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayName_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 922
    new-instance v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;-><init>()V

    .line 925
    sput-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 926
    const-class v1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 1

    .line 134
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V
    .registers 1

    .line 134
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->clearChildName()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->addChildNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V
    .registers 1

    .line 134
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V
    .registers 1

    .line 134
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->clearDisplayName()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;ILjava/lang/String;)V
    .registers 3

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setChildName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->addChildName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/Iterable;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->addAllChildName(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllChildName(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    .line 421
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addChildName(Ljava/lang/String;)V
    .registers 2

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    .line 407
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addChildNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 446
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    .line 447
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearChildName()V
    .registers 2

    .line 433
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDisplayName()V
    .registers 2

    .line 295
    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    .line 296
    invoke-static {}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDefaultInstance()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 211
    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    .line 212
    invoke-static {}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDefaultInstance()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    return-void
.end method

.method private ensureChildNameIsMutable()V
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 373
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 375
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 1

    .line 931
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .registers 1

    .line 525
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .registers 2

    .line 528
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 2

    .line 502
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 3

    .line 508
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 2

    .line 466
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 3

    .line 473
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 2

    .line 513
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 3

    .line 520
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 2

    .line 490
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 3

    .line 497
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 2

    .line 453
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 3

    .line 460
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 2

    .line 478
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .registers 3

    .line 485
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    .line 937
    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChildName(ILjava/lang/String;)V
    .registers 3

    .line 390
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    .line 392
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .registers 3

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    .line 284
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 309
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    .line 310
    iget p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 3

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    .line 200
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    .line 226
    iget p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 870
    sget-object p0, Lcom/google/mediapipe/util/proto/LabelMapProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5a

    .line 915
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 909
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 894
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 896
    const-class p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    monitor-enter p1

    .line 897
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 899
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 902
    sput-object p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 904
    :cond_30
    :goto_30
    monitor-exit p1

    return-object p0

    :goto_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw p0

    :cond_34
    return-object p0

    .line 891
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0

    .line 878
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "name_"

    const-string p2, "displayName_"

    const-string p3, "childName_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 884
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u001a"

    .line 887
    sget-object p2, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 875
    :pswitch_4d
    new-instance p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;-><init>(Lcom/google/mediapipe/util/proto/LabelMapProto$1;)V

    return-object p0

    .line 872
    :pswitch_53
    new-instance p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;-><init>()V

    return-object p0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getChildName(I)Ljava/lang/String;
    .registers 2

    .line 353
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getChildNameBytes(I)Lcom/google/protobuf/ByteString;
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 369
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 368
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getChildNameCount()I
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getChildNameList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasDisplayName()Z
    .registers 1

    .line 242
    iget p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasName()Z
    .registers 2

    .line 158
    iget p0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

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

    .line 134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
