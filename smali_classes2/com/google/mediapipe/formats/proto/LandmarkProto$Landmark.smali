.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Landmark"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESENCE_FIELD_NUMBER:I = 0x5

.field public static final VISIBILITY_FIELD_NUMBER:I = 0x4

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2

.field public static final Z_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private presence_:F

.field private visibility_:F

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 759
    new-instance v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;-><init>()V

    .line 762
    sput-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    .line 763
    const-class v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 1

    .line 111
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->setX(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->clearPresence()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->clearX()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->setY(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->clearY()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->setZ(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->clearZ()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->setVisibility(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .registers 1

    .line 111
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->clearVisibility()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;F)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->setPresence(F)V

    return-void
.end method

.method private clearPresence()V
    .registers 2

    .line 349
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->presence_:F

    return-void
.end method

.method private clearVisibility()V
    .registers 2

    .line 283
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->visibility_:F

    return-void
.end method

.method private clearX()V
    .registers 2

    .line 149
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->x_:F

    return-void
.end method

.method private clearY()V
    .registers 2

    .line 183
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->y_:F

    return-void
.end method

.method private clearZ()V
    .registers 2

    .line 217
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->z_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 1

    .line 768
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .registers 1

    .line 428
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;
    .registers 2

    .line 431
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 2

    .line 405
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 3

    .line 411
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 2

    .line 369
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 3

    .line 376
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 2

    .line 416
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 3

    .line 423
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 2

    .line 393
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 3

    .line 400
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 2

    .line 356
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 3

    .line 363
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 2

    .line 381
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .registers 3

    .line 388
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;"
        }
    .end annotation

    .line 774
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPresence(F)V
    .registers 3

    .line 334
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    .line 335
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->presence_:F

    return-void
.end method

.method private setVisibility(F)V
    .registers 3

    .line 268
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    .line 269
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->visibility_:F

    return-void
.end method

.method private setX(F)V
    .registers 3

    .line 142
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    .line 143
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->x_:F

    return-void
.end method

.method private setY(F)V
    .registers 3

    .line 176
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    .line 177
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->y_:F

    return-void
.end method

.method private setZ(F)V
    .registers 3

    .line 210
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    .line 211
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->z_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 705
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5e

    .line 752
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 746
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 731
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_35

    .line 733
    const-class p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    monitor-enter p1

    .line 734
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_31

    .line 736
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 739
    sput-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto :goto_33

    .line 741
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

    .line 728
    :pswitch_36
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p0

    .line 713
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "x_"

    const-string v2, "y_"

    const-string v3, "z_"

    const-string v4, "visibility_"

    const-string v5, "presence_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 721
    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1001\u0004"

    .line 724
    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 710
    :pswitch_52
    new-instance p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V

    return-object p0

    .line 707
    :pswitch_58
    new-instance p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;-><init>()V

    return-object p0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 111
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getPresence()F
    .registers 1

    .line 319
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->presence_:F

    return p0
.end method

.method public getVisibility()F
    .registers 1

    .line 253
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->visibility_:F

    return p0
.end method

.method public getX()F
    .registers 1

    .line 135
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->x_:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 169
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->y_:F

    return p0
.end method

.method public getZ()F
    .registers 1

    .line 203
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->z_:F

    return p0
.end method

.method public hasPresence()Z
    .registers 1

    .line 303
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasVisibility()Z
    .registers 1

    .line 237
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasX()Z
    .registers 2

    .line 127
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasY()Z
    .registers 1

    .line 161
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasZ()Z
    .registers 1

    .line 195
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 111
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 111
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
