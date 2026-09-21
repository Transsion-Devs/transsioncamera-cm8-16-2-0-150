.class public final Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/DetectionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetectionList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

.field public static final DETECTION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private detection_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2903
    new-instance v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;-><init>()V

    .line 2906
    sput-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    .line 2907
    const-class v1, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2547
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 2847
    iput-byte v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->memoizedIsInitialized:B

    .line 2548
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$4500()Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 1

    .line 2542
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V
    .registers 3

    .line 2542
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->setDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V
    .registers 2

    .line 2542
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->addDetection(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V
    .registers 3

    .line 2542
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->addDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;Ljava/lang/Iterable;)V
    .registers 2

    .line 2542
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->addAllDetection(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;)V
    .registers 1

    .line 2542
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->clearDetection()V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;I)V
    .registers 2

    .line 2542
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->removeDetection(I)V

    return-void
.end method

.method private addAllDetection(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
            ">;)V"
        }
    .end annotation

    .line 2626
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->ensureDetectionIsMutable()V

    .line 2627
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V
    .registers 3

    .line 2617
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2618
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->ensureDetectionIsMutable()V

    .line 2619
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDetection(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V
    .registers 2

    .line 2608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2609
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->ensureDetectionIsMutable()V

    .line 2610
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDetection()V
    .registers 2

    .line 2634
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureDetectionIsMutable()V
    .registers 3

    .line 2588
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2589
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2591
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 1

    .line 2912
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .registers 1

    .line 2719
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;
    .registers 2

    .line 2722
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 2

    .line 2696
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 3

    .line 2702
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 2

    .line 2660
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 3

    .line 2667
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 2

    .line 2707
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 3

    .line 2714
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 2

    .line 2684
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 3

    .line 2691
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 2

    .line 2647
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 3

    .line 2654
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 2

    .line 2672
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;
    .registers 3

    .line 2679
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;",
            ">;"
        }
    .end annotation

    .line 2918
    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeDetection(I)V
    .registers 2

    .line 2640
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->ensureDetectionIsMutable()V

    .line 2641
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDetection(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V
    .registers 3

    .line 2600
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2601
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->ensureDetectionIsMutable()V

    .line 2602
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2853
    sget-object p3, Lcom/google/mediapipe/formats/proto/DetectionProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 2896
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

    .line 2892
    iput-byte p1, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->memoizedIsInitialized:B

    return-object p3

    .line 2889
    :pswitch_1b
    iget-byte p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2874
    :pswitch_22
    sget-object p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3d

    .line 2876
    const-class p1, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    monitor-enter p1

    .line 2877
    :try_start_29
    sget-object p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_39

    .line 2879
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2882
    sput-object p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3b

    .line 2884
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

    .line 2871
    :pswitch_3e
    sget-object p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    return-object p0

    .line 2861
    :pswitch_41
    const-string p0, "detection_"

    const-class p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2865
    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u041b"

    .line 2867
    sget-object p2, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2858
    :pswitch_52
    new-instance p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;

    invoke-direct {p0, p3}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList$Builder;-><init>(Lcom/google/mediapipe/formats/proto/DetectionProto$1;)V

    return-object p0

    .line 2855
    :pswitch_58
    new-instance p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;

    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;-><init>()V

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

    .line 2542
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getDetection(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;
    .registers 2

    .line 2578
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    return-object p0
.end method

.method public getDetectionCount()I
    .registers 1

    .line 2571
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDetectionList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
            ">;"
        }
    .end annotation

    .line 2557
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getDetectionOrBuilder(I)Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionOrBuilder;
    .registers 2

    .line 2585
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionOrBuilder;

    return-object p0
.end method

.method public getDetectionOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2564
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionList;->detection_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 2542
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 2542
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
