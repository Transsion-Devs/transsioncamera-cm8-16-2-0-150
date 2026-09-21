.class public final Lcom/google/mediapipe/formats/proto/RectProto$Rect;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/RectProto$RectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/RectProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/RectProto$Rect;",
        "Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/RectProto$RectOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/RectProto$Rect;",
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

.field private height_:I

.field private memoizedIsInitialized:B

.field private rectId_:J

.field private rotation_:F

.field private width_:I

.field private xCenter_:I

.field private yCenter_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 850
    new-instance v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;-><init>()V

    .line 853
    sput-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    .line 854
    const-class v1, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 787
    iput-byte v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 1

    .line 122
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->setXCenter(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->clearRotation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/formats/proto/RectProto$Rect;J)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->setRectId(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->clearRectId()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->clearXCenter()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->setYCenter(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->clearYCenter()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->setHeight(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->clearHeight()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/formats/proto/RectProto$Rect;I)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->setWidth(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->clearWidth()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/formats/proto/RectProto$Rect;F)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->setRotation(F)V

    return-void
.end method

.method private clearHeight()V
    .registers 2

    .line 264
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->height_:I

    return-void
.end method

.method private clearRectId()V
    .registers 3

    .line 398
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 399
    iput-wide v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->rectId_:J

    return-void
.end method

.method private clearRotation()V
    .registers 2

    .line 348
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    const/4 v0, 0x0

    .line 349
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->rotation_:F

    return-void
.end method

.method private clearWidth()V
    .registers 2

    .line 298
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->width_:I

    return-void
.end method

.method private clearXCenter()V
    .registers 2

    .line 180
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->xCenter_:I

    return-void
.end method

.method private clearYCenter()V
    .registers 2

    .line 214
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->yCenter_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 1

    .line 859
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .registers 1

    .line 477
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/RectProto$Rect;)Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;
    .registers 2

    .line 480
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 2

    .line 454
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 3

    .line 460
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 2

    .line 418
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 3

    .line 425
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 2

    .line 465
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 3

    .line 472
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 2

    .line 442
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 3

    .line 449
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 2

    .line 405
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 3

    .line 412
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 2

    .line 430
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$Rect;
    .registers 3

    .line 437
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/RectProto$Rect;",
            ">;"
        }
    .end annotation

    .line 865
    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeight(I)V
    .registers 3

    .line 253
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    .line 254
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->height_:I

    return-void
.end method

.method private setRectId(J)V
    .registers 4

    .line 387
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    .line 388
    iput-wide p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->rectId_:J

    return-void
.end method

.method private setRotation(F)V
    .registers 3

    .line 337
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    .line 338
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->rotation_:F

    return-void
.end method

.method private setWidth(I)V
    .registers 3

    .line 291
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    .line 292
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->width_:I

    return-void
.end method

.method private setXCenter(I)V
    .registers 3

    .line 168
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    .line 169
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->xCenter_:I

    return-void
.end method

.method private setYCenter(I)V
    .registers 3

    .line 207
    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

    .line 208
    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->yCenter_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 793
    sget-object p3, Lcom/google/mediapipe/formats/proto/RectProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_6a

    .line 843
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

    .line 839
    iput-byte p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->memoizedIsInitialized:B

    return-object p3

    .line 836
    :pswitch_1b
    iget-byte p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 821
    :pswitch_22
    sget-object p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3e

    .line 823
    const-class p1, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    monitor-enter p1

    .line 824
    :try_start_29
    sget-object p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_3a

    .line 826
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 829
    sput-object p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_3a

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_3c

    .line 831
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

    .line 818
    :pswitch_3f
    sget-object p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    return-object p0

    .line 801
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

    .line 810
    const-string p1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0004\u0001\u1504\u0000\u0002\u1504\u0001\u0003\u1504\u0002\u0004\u1504\u0003\u0005\u1001\u0004\u0006\u1002\u0005"

    .line 814
    sget-object p2, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 798
    :pswitch_5d
    new-instance p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;

    invoke-direct {p0, p3}, Lcom/google/mediapipe/formats/proto/RectProto$Rect$Builder;-><init>(Lcom/google/mediapipe/formats/proto/RectProto$1;)V

    return-object p0

    .line 795
    :pswitch_63
    new-instance p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;

    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$Rect;-><init>()V

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

    .line 122
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 242
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->height_:I

    return p0
.end method

.method public getRectId()J
    .registers 3

    .line 376
    iget-wide v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->rectId_:J

    return-wide v0
.end method

.method public getRotation()F
    .registers 1

    .line 326
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->rotation_:F

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 284
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->width_:I

    return p0
.end method

.method public getXCenter()I
    .registers 1

    .line 156
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->xCenter_:I

    return p0
.end method

.method public getYCenter()I
    .registers 1

    .line 200
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->yCenter_:I

    return p0
.end method

.method public hasHeight()Z
    .registers 1

    .line 230
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

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

    .line 364
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

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

    .line 314
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

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

    .line 276
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

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

    .line 143
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

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

    .line 192
    iget p0, p0, Lcom/google/mediapipe/formats/proto/RectProto$Rect;->bitField0_:I

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

    .line 122
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 122
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
