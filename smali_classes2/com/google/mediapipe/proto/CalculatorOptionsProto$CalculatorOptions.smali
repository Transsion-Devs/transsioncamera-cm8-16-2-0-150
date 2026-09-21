.class public final Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalculatorOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
        "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

.field public static final MERGE_FIELDS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private mergeFields_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 344
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;-><init>()V

    .line 347
    sput-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    .line 348
    const-class v1, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    .line 288
    iput-byte v0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 1

    .line 54
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;Z)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->setMergeFields(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->clearMergeFields()V

    return-void
.end method

.method private clearMergeFields()V
    .registers 2

    .line 116
    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->mergeFields_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 1

    .line 353
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;
    .registers 1

    .line 195
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;
    .registers 2

    .line 198
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 2

    .line 172
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 3

    .line 178
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 2

    .line 136
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 3

    .line 143
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 2

    .line 183
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 3

    .line 190
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 2

    .line 160
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 3

    .line 167
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 2

    .line 123
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 3

    .line 130
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 2

    .line 148
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .registers 3

    .line 155
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            ">;"
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMergeFields(Z)V
    .registers 3

    .line 103
    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->bitField0_:I

    .line 104
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->mergeFields_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 294
    sget-object p3, Lcom/google/mediapipe/proto/CalculatorOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 337
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

    .line 333
    iput-byte p1, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->memoizedIsInitialized:B

    return-object p3

    .line 330
    :pswitch_1b
    iget-byte p0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 315
    :pswitch_22
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3d

    .line 317
    const-class p1, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    monitor-enter p1

    .line 318
    :try_start_29
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_39

    .line 320
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 323
    sput-object p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3b

    .line 325
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

    .line 312
    :pswitch_3e
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object p0

    .line 302
    :pswitch_41
    const-string p0, "bitField0_"

    const-string p1, "mergeFields_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 306
    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1007\u0000"

    .line 308
    sget-object p2, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 299
    :pswitch_52
    new-instance p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    invoke-direct {p0, p3}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;-><init>(Lcom/google/mediapipe/proto/CalculatorOptionsProto$1;)V

    return-object p0

    .line 296
    :pswitch_58
    new-instance p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;-><init>()V

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

    .line 54
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getMergeFields()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->mergeFields_:Z

    return p0
.end method

.method public hasMergeFields()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    iget p0, p0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->bitField0_:I

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

    .line 54
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 54
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
