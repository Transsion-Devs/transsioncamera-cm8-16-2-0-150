.class public final Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOriginOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/gpu/GpuOriginProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuOrigin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;,
        Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;",
        "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;",
        ">;",
        "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOriginOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 298
    new-instance v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-direct {v0}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;-><init>()V

    .line 301
    sput-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    .line 302
    const-class v1, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 1

    .line 18
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 1

    .line 307
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;
    .registers 1

    .line 226
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;
    .registers 2

    .line 229
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 2

    .line 203
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 3

    .line 209
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 2

    .line 167
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 3

    .line 174
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 2

    .line 214
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 3

    .line 221
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 2

    .line 191
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 3

    .line 198
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 2

    .line 154
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 3

    .line 161
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 2

    .line 179
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
    .registers 3

    .line 186
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 253
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_4e

    .line 291
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 285
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 270
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 272
    const-class p1, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    monitor-enter p1

    .line 273
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 275
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 278
    sput-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 280
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

    .line 267
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    return-object p0

    .line 261
    :pswitch_38
    const-string p0, "\u0000\u0000"

    .line 263
    sget-object p2, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;->DEFAULT_INSTANCE:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 258
    :pswitch_41
    new-instance p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Builder;-><init>(Lcom/google/mediapipe/gpu/GpuOriginProto$1;)V

    return-object p0

    .line 255
    :pswitch_47
    new-instance p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;

    invoke-direct {p0}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;-><init>()V

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_41
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 18
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 18
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 18
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
