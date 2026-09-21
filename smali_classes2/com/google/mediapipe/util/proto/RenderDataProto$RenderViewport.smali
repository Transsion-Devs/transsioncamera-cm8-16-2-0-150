.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewportOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMPOSE_ON_VIDEO_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

.field public static final HEIGHT_PX_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH_PX_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private composeOnVideo_:Z

.field private heightPx_:I

.field private id_:Ljava/lang/String;

.field private widthPx_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11505
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;-><init>()V

    .line 11508
    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    .line 11509
    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 10844
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->id_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19900()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 1

    .line 10839
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object v0
.end method

.method static synthetic access$20000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;Ljava/lang/String;)V
    .registers 2

    .line 10839
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 1

    .line 10839
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->clearId()V

    return-void
.end method

.method static synthetic access$20200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 10839
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;I)V
    .registers 2

    .line 10839
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->setWidthPx(I)V

    return-void
.end method

.method static synthetic access$20400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 1

    .line 10839
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->clearWidthPx()V

    return-void
.end method

.method static synthetic access$20500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;I)V
    .registers 2

    .line 10839
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->setHeightPx(I)V

    return-void
.end method

.method static synthetic access$20600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 1

    .line 10839
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->clearHeightPx()V

    return-void
.end method

.method static synthetic access$20700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;Z)V
    .registers 2

    .line 10839
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->setComposeOnVideo(Z)V

    return-void
.end method

.method static synthetic access$20800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 1

    .line 10839
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->clearComposeOnVideo()V

    return-void
.end method

.method private clearComposeOnVideo()V
    .registers 2

    .line 11088
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    const/4 v0, 0x0

    .line 11089
    iput-boolean v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->composeOnVideo_:Z

    return-void
.end method

.method private clearHeightPx()V
    .registers 2

    .line 11034
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    const/4 v0, 0x0

    .line 11035
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->heightPx_:I

    return-void
.end method

.method private clearId()V
    .registers 2

    .line 10909
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    .line 10910
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearWidthPx()V
    .registers 2

    .line 11000
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    const/4 v0, 0x0

    .line 11001
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->widthPx_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 1

    .line 11514
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .registers 1

    .line 11167
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .registers 2

    .line 11170
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 2

    .line 11144
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 3

    .line 11150
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 2

    .line 11108
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 3

    .line 11115
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 2

    .line 11155
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 3

    .line 11162
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 2

    .line 11132
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 3

    .line 11139
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 2

    .line 11095
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 3

    .line 11102
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 2

    .line 11120
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 3

    .line 11127
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;",
            ">;"
        }
    .end annotation

    .line 11520
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setComposeOnVideo(Z)V
    .registers 3

    .line 11076
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    .line 11077
    iput-boolean p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->composeOnVideo_:Z

    return-void
.end method

.method private setHeightPx(I)V
    .registers 3

    .line 11027
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    .line 11028
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->heightPx_:I

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .registers 3

    .line 10897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10898
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    .line 10899
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 10922
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->id_:Ljava/lang/String;

    .line 10923
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    return-void
.end method

.method private setWidthPx(I)V
    .registers 3

    .line 10982
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    .line 10983
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->widthPx_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 11452
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5c

    .line 11498
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 11492
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 11477
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 11479
    const-class p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    monitor-enter p1

    .line 11480
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 11482
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11485
    sput-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 11487
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

    .line 11474
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    return-object p0

    .line 11460
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "id_"

    const-string p2, "widthPx_"

    const-string p3, "heightPx_"

    const-string v0, "composeOnVideo_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 11467
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1007\u0003"

    .line 11470
    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11457
    :pswitch_4f
    new-instance p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object p0

    .line 11454
    :pswitch_55
    new-instance p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;-><init>()V

    return-object p0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4f
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getComposeOnVideo()Z
    .registers 1

    .line 11064
    iget-boolean p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->composeOnVideo_:Z

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 10839
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getHeightPx()I
    .registers 1

    .line 11020
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->heightPx_:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 10872
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 10885
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->id_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getWidthPx()I
    .registers 1

    .line 10964
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->widthPx_:I

    return p0
.end method

.method public hasComposeOnVideo()Z
    .registers 1

    .line 11051
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasHeightPx()Z
    .registers 1

    .line 11012
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasId()Z
    .registers 2

    .line 10860
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasWidthPx()Z
    .registers 1

    .line 10945
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 10839
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 10839
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
