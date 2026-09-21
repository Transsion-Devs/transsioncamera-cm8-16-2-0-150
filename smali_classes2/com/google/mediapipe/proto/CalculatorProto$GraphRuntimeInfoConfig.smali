.class public final Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GraphRuntimeInfoConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;",
        "Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfigOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAPTURE_PERIOD_MSEC_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

.field public static final ENABLE_GRAPH_RUNTIME_INFO_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capturePeriodMsec_:I

.field private enableGraphRuntimeInfo_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 6021
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;-><init>()V

    .line 6024
    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    .line 6025
    const-class v1, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5697
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$8900()Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 1

    .line 5692
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;Z)V
    .registers 2

    .line 5692
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->setEnableGraphRuntimeInfo(Z)V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)V
    .registers 1

    .line 5692
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->clearEnableGraphRuntimeInfo()V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;I)V
    .registers 2

    .line 5692
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->setCapturePeriodMsec(I)V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)V
    .registers 1

    .line 5692
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->clearCapturePeriodMsec()V

    return-void
.end method

.method private clearCapturePeriodMsec()V
    .registers 2

    const/4 v0, 0x0

    .line 5775
    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->capturePeriodMsec_:I

    return-void
.end method

.method private clearEnableGraphRuntimeInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 5734
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->enableGraphRuntimeInfo_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 1

    .line 6030
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;
    .registers 1

    .line 5853
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;
    .registers 2

    .line 5856
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 2

    .line 5830
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 3

    .line 5836
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 2

    .line 5794
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 3

    .line 5801
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 2

    .line 5841
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 3

    .line 5848
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 2

    .line 5818
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 3

    .line 5825
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 2

    .line 5781
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 3

    .line 5788
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 2

    .line 5806
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;
    .registers 3

    .line 5813
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;",
            ">;"
        }
    .end annotation

    .line 6036
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCapturePeriodMsec(I)V
    .registers 2

    .line 5763
    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->capturePeriodMsec_:I

    return-void
.end method

.method private setEnableGraphRuntimeInfo(Z)V
    .registers 2

    .line 5723
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->enableGraphRuntimeInfo_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 5971
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_56

    .line 6014
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 6008
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 5993
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 5995
    const-class p1, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    monitor-enter p1

    .line 5996
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 5998
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6001
    sput-object p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 6003
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

    .line 5990
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    return-object p0

    .line 5979
    :pswitch_38
    const-string p0, "enableGraphRuntimeInfo_"

    const-string p1, "capturePeriodMsec_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 5983
    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u000b"

    .line 5986
    sget-object p2, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5976
    :pswitch_49
    new-instance p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig$Builder;-><init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V

    return-object p0

    .line 5973
    :pswitch_4f
    new-instance p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;

    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getCapturePeriodMsec()I
    .registers 1

    .line 5750
    iget p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->capturePeriodMsec_:I

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 5692
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getEnableGraphRuntimeInfo()Z
    .registers 1

    .line 5711
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$GraphRuntimeInfoConfig;->enableGraphRuntimeInfo_:Z

    return p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5692
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5692
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
