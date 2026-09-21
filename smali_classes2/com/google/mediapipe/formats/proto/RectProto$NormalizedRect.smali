.class public final Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/RectProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalizedRect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_ID_FIELD_NUMBER:I = 0x6

.field public static final ROTATION_FIELD_NUMBER:I = 0x5

.field public static final WIDTH_FIELD_NUMBER:I = 0x4

.field public static final X_CENTER_FIELD_NUMBER:I = 0x1

.field public static final Y_CENTER_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private height_:F

.field private memoizedIsInitialized:B

.field private rectId_:J

.field private rotation_:F

.field private width_:F

.field private xCenter_:F

.field private yCenter_:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1720
    new-instance v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;-><init>()V

    .line 1723
    sput-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1724
    const-class v1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 988
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 1657
    iput-byte v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$1400()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 1

    .line 983
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .registers 2

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setXCenter(F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .registers 1

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearXCenter()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .registers 2

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setYCenter(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .registers 1

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearYCenter()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .registers 2

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setHeight(F)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .registers 1

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearHeight()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .registers 2

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setWidth(F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .registers 1

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearWidth()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .registers 2

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setRotation(F)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .registers 1

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearRotation()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;J)V
    .registers 3

    .line 983
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setRectId(J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .registers 1

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearRectId()V

    return-void
.end method

.method private clearHeight()V
    .registers 2

    .line 1125
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    .line 1126
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->height_:F

    return-void
.end method

.method private clearRectId()V
    .registers 3

    .line 1263
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1264
    iput-wide v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rectId_:J

    return-void
.end method

.method private clearRotation()V
    .registers 2

    .line 1209
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    .line 1210
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rotation_:F

    return-void
.end method

.method private clearWidth()V
    .registers 2

    .line 1159
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    .line 1160
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->width_:F

    return-void
.end method

.method private clearXCenter()V
    .registers 2

    .line 1041
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    .line 1042
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->xCenter_:F

    return-void
.end method

.method private clearYCenter()V
    .registers 2

    .line 1075
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    .line 1076
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->yCenter_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 1

    .line 1729
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 1

    .line 1342
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .registers 2

    .line 1345
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 2

    .line 1319
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 3

    .line 1325
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 2

    .line 1283
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 3

    .line 1290
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 2

    .line 1330
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 3

    .line 1337
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 2

    .line 1307
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 3

    .line 1314
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 2

    .line 1270
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 3

    .line 1277
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 2

    .line 1295
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .registers 3

    .line 1302
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;"
        }
    .end annotation

    .line 1735
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeight(F)V
    .registers 3

    .line 1114
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    .line 1115
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->height_:F

    return-void
.end method

.method private setRectId(J)V
    .registers 4

    .line 1251
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    .line 1252
    iput-wide p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rectId_:J

    return-void
.end method

.method private setRotation(F)V
    .registers 3

    .line 1198
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    .line 1199
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rotation_:F

    return-void
.end method

.method private setWidth(F)V
    .registers 3

    .line 1152
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    .line 1153
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->width_:F

    return-void
.end method

.method private setXCenter(F)V
    .registers 3

    .line 1029
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    .line 1030
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->xCenter_:F

    return-void
.end method

.method private setYCenter(F)V
    .registers 3

    .line 1068
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    .line 1069
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->yCenter_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1663
    sget-object p3, Lcom/google/mediapipe/formats/proto/RectProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_6a

    .line 1713
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

    .line 1709
    iput-byte p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->memoizedIsInitialized:B

    return-object p3

    .line 1706
    :pswitch_1b
    iget-byte p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1691
    :pswitch_22
    sget-object p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3e

    .line 1693
    const-class p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    monitor-enter p1

    .line 1694
    :try_start_29
    sget-object p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3a

    .line 1696
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1699
    sput-object p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_3a

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_3c

    .line 1701
    :cond_3a
    :goto_3a
    monitor-exit p1

    return-object p0

    :goto_3c
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_37

    throw p0

    :cond_3e
    return-object p0

    .line 1688
    :pswitch_3f
    sget-object p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0

    .line 1671
    :pswitch_42
    const-string v0, "bitField0_"

    const-string v1, "xCenter_"

    const-string v2, "yCenter_"

    const-string v3, "height_"

    const-string v4, "width_"

    const-string v5, "rotation_"

    const-string v6, "rectId_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 1680
    const-string p1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0004\u0001\u1501\u0000\u0002\u1501\u0001\u0003\u1501\u0002\u0004\u1501\u0003\u0005\u1001\u0004\u0006\u1002\u0005"

    .line 1684
    sget-object p2, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1668
    :pswitch_5d
    new-instance p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    invoke-direct {p0, p3}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;-><init>(Lcom/google/mediapipe/formats/proto/RectProto$1;)V

    return-object p0

    .line 1665
    :pswitch_63
    new-instance p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;-><init>()V

    return-object p0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_63
        :pswitch_5d
        :pswitch_42
        :pswitch_3f
        :pswitch_22
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()F
    .registers 1

    .line 1103
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->height_:F

    return p0
.end method

.method public getRectId()J
    .registers 3

    .line 1239
    iget-wide v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rectId_:J

    return-wide v0
.end method

.method public getRotation()F
    .registers 1

    .line 1187
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rotation_:F

    return p0
.end method

.method public getWidth()F
    .registers 1

    .line 1145
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->width_:F

    return p0
.end method

.method public getXCenter()F
    .registers 1

    .line 1017
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->xCenter_:F

    return p0
.end method

.method public getYCenter()F
    .registers 1

    .line 1061
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->yCenter_:F

    return p0
.end method

.method public hasHeight()Z
    .registers 1

    .line 1091
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasRectId()Z
    .registers 1

    .line 1226
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasRotation()Z
    .registers 1

    .line 1175
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasWidth()Z
    .registers 1

    .line 1137
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasXCenter()Z
    .registers 2

    .line 1004
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasYCenter()Z
    .registers 1

    .line 1053
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

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

    .line 983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
