.class public final Lcom/google/mediapipe/util/proto/ColorProto$Color;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/util/proto/ColorProto$ColorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/ColorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
        "Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/ColorProto$ColorOrBuilder;"
    }
.end annotation


# static fields
.field public static final B_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

.field public static final G_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final R_FIELD_NUMBER:I = 0x1


# instance fields
.field private b_:I

.field private bitField0_:I

.field private g_:I

.field private r_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 423
    new-instance v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;-><init>()V

    .line 426
    sput-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 427
    const-class v1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 1

    .line 51
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/util/proto/ColorProto$Color;I)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->setR(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->clearR()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/util/proto/ColorProto$Color;I)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->setG(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->clearG()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/util/proto/ColorProto$Color;I)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->setB(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->clearB()V

    return-void
.end method

.method private clearB()V
    .registers 2

    .line 157
    iget v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->b_:I

    return-void
.end method

.method private clearG()V
    .registers 2

    .line 123
    iget v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->g_:I

    return-void
.end method

.method private clearR()V
    .registers 2

    .line 89
    iget v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->r_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 1

    .line 432
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;
    .registers 1

    .line 236
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;
    .registers 2

    .line 239
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 2

    .line 213
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 3

    .line 219
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 2

    .line 177
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 3

    .line 184
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 2

    .line 224
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 3

    .line 231
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 2

    .line 201
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 3

    .line 208
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 2

    .line 164
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 3

    .line 171
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 2

    .line 189
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 3

    .line 196
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setB(I)V
    .registers 3

    .line 150
    iget v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    .line 151
    iput p1, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->b_:I

    return-void
.end method

.method private setG(I)V
    .registers 3

    .line 116
    iget v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    .line 117
    iput p1, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->g_:I

    return-void
.end method

.method private setR(I)V
    .registers 3

    .line 82
    iget v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    .line 83
    iput p1, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->r_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 371
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5a

    .line 416
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 410
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 395
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 397
    const-class p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    monitor-enter p1

    .line 398
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 400
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 403
    sput-object p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 405
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

    .line 392
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p0

    .line 379
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "r_"

    const-string p2, "g_"

    const-string p3, "b_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 385
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    .line 388
    sget-object p2, Lcom/google/mediapipe/util/proto/ColorProto$Color;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 376
    :pswitch_4d
    new-instance p0, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;-><init>(Lcom/google/mediapipe/util/proto/ColorProto$1;)V

    return-object p0

    .line 373
    :pswitch_53
    new-instance p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;-><init>()V

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

.method public getB()I
    .registers 1

    .line 143
    iget p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->b_:I

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 51
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getG()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->g_:I

    return p0
.end method

.method public getR()I
    .registers 1

    .line 75
    iget p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->r_:I

    return p0
.end method

.method public hasB()Z
    .registers 1

    .line 135
    iget p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasG()Z
    .registers 1

    .line 101
    iget p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasR()Z
    .registers 2

    .line 67
    iget p0, p0, Lcom/google/mediapipe/util/proto/ColorProto$Color;->bitField0_:I

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

    .line 51
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 51
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
