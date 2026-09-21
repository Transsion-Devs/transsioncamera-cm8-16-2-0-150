.class public final Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;",
        "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCELERATION_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field public static final GPU_ORIGIN_FIELD_NUMBER:I = 0x4

.field public static final MODEL_ASSET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_STREAM_MODE_FIELD_NUMBER:I = 0x2


# instance fields
.field private acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

.field private bitField0_:I

.field private gpuOrigin_:I

.field private modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

.field private useStreamMode_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 706
    new-instance v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;-><init>()V

    .line 709
    sput-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 710
    const-class v1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 1

    .line 93
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearGpuOrigin()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->mergeModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearModelAsset()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Z)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setUseStreamMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearUseStreamMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->mergeAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearAcceleration()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setGpuOrigin(Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;)V

    return-void
.end method

.method private clearAcceleration()V
    .registers 2

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 265
    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private clearGpuOrigin()V
    .registers 2

    .line 315
    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    const/4 v0, 0x2

    .line 316
    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    return-void
.end method

.method private clearModelAsset()V
    .registers 2

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 145
    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private clearUseStreamMode()V
    .registers 2

    .line 198
    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->useStreamMode_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 1

    .line 715
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object v0
.end method

.method private mergeAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .registers 4

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    if-eqz v0, :cond_22

    .line 249
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 250
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 251
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    goto :goto_24

    .line 253
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 255
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private mergeModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .registers 4

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    if-eqz v0, :cond_22

    .line 133
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 134
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 135
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    goto :goto_24

    .line 137
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 139
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;
    .registers 1

    .line 394
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;
    .registers 2

    .line 397
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 2

    .line 371
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 3

    .line 377
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 2

    .line 335
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 3

    .line 342
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 2

    .line 382
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 3

    .line 389
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 2

    .line 359
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 3

    .line 366
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 2

    .line 322
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 3

    .line 329
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 2

    .line 347
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 3

    .line 354
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;",
            ">;"
        }
    .end annotation

    .line 721
    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .registers 2

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 236
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private setGpuOrigin(Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;)V
    .registers 2

    .line 304
    invoke-virtual {p1}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    .line 305
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private setModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .registers 2

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 124
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private setUseStreamMode(Z)V
    .registers 3

    .line 186
    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    .line 187
    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->useStreamMode_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 652
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_60

    .line 699
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 693
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 678
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_35

    .line 680
    const-class p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    monitor-enter p1

    .line 681
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_31

    .line 683
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 686
    sput-object p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto :goto_33

    .line 688
    :cond_31
    :goto_31
    monitor-exit p1

    return-object p0

    :goto_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_2e

    throw p0

    :cond_35
    return-object p0

    .line 675
    :pswitch_36
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0

    .line 660
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "modelAsset_"

    const-string v2, "useStreamMode_"

    const-string v3, "acceleration_"

    const-string v4, "gpuOrigin_"

    .line 666
    invoke-static {}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 668
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1007\u0001\u0003\u1009\u0002\u0004\u100c\u0003"

    .line 671
    sget-object p2, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 657
    :pswitch_54
    new-instance p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$1;)V

    return-object p0

    .line 654
    :pswitch_5a
    new-instance p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;-><init>()V

    return-object p0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_54
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getAcceleration()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getGpuOrigin()Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
    .registers 1

    .line 292
    iget p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    invoke-static {p0}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->forNumber(I)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    move-result-object p0

    if-nez p0, :cond_a

    .line 293
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->TOP_LEFT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    :cond_a
    return-object p0
.end method

.method public getModelAsset()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getUseStreamMode()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->useStreamMode_:Z

    return p0
.end method

.method public hasAcceleration()Z
    .registers 1

    .line 213
    iget p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasGpuOrigin()Z
    .registers 1

    .line 280
    iget p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasModelAsset()Z
    .registers 2

    .line 109
    iget p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasUseStreamMode()Z
    .registers 1

    .line 161
    iget p0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

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

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
