.class public final Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Classification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x4

.field public static final INDEX_FIELD_NUMBER:I = 0x1

.field public static final LABEL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private index_:I

.field private label_:Ljava/lang/String;

.field private score_:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 801
    new-instance v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;-><init>()V

    .line 804
    sput-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 805
    const-class v1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 1

    .line 114
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;I)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setIndex(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearIndex()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;F)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setScore(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearScore()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearLabel()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setLabelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearDisplayName()V

    return-void
.end method

.method private clearDisplayName()V
    .registers 2

    .line 363
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 364
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private clearIndex()V
    .registers 2

    .line 170
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->index_:I

    return-void
.end method

.method private clearLabel()V
    .registers 2

    .line 285
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 286
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    return-void
.end method

.method private clearScore()V
    .registers 2

    .line 220
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->score_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 1

    .line 810
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .registers 1

    .line 455
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .registers 2

    .line 458
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 2

    .line 432
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 3

    .line 438
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 2

    .line 396
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 3

    .line 403
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 2

    .line 443
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 3

    .line 450
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 2

    .line 420
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 3

    .line 427
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 2

    .line 383
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 3

    .line 390
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 2

    .line 408
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .registers 3

    .line 415
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation

    .line 816
    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .registers 3

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 353
    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 376
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    .line 377
    iget p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    return-void
.end method

.method private setIndex(I)V
    .registers 3

    .line 159
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 160
    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->index_:I

    return-void
.end method

.method private setLabel(Ljava/lang/String;)V
    .registers 3

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 275
    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    return-void
.end method

.method private setLabelBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 298
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    .line 299
    iget p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    return-void
.end method

.method private setScore(F)V
    .registers 3

    .line 209
    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 210
    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->score_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 748
    sget-object p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5c

    .line 794
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 788
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 773
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 775
    const-class p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    monitor-enter p1

    .line 776
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 778
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 781
    sput-object p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 783
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

    .line 770
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0

    .line 756
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "index_"

    const-string p2, "score_"

    const-string p3, "label_"

    const-string v0, "displayName_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 763
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1001\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    .line 766
    sget-object p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 753
    :pswitch_4f
    new-instance p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;-><init>(Lcom/google/mediapipe/formats/proto/ClassificationProto$1;)V

    return-object p0

    .line 750
    :pswitch_55
    new-instance p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;-><init>()V

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 114
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 1

    .line 326
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->index_:I

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getScore()F
    .registers 1

    .line 198
    iget p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->score_:F

    return p0
.end method

.method public hasDisplayName()Z
    .registers 1

    .line 314
    iget p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasIndex()Z
    .registers 2

    .line 136
    iget p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasLabel()Z
    .registers 1

    .line 236
    iget p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasScore()Z
    .registers 1

    .line 186
    iget p0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

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

    .line 114
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 114
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
