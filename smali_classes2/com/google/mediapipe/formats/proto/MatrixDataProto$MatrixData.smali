.class public final Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/MatrixDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatrixData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;,
        Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

.field public static final LAYOUT_FIELD_NUMBER:I = 0x4

.field public static final PACKED_DATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROWS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cols_:I

.field private layout_:I

.field private packedDataMemoizedSerializedSize:I

.field private packedData_:Lcom/google/protobuf/Internal$FloatList;

.field private rows_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 728
    new-instance v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;-><init>()V

    .line 731
    sput-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 732
    const-class v1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 272
    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedDataMemoizedSerializedSize:I

    .line 89
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 1

    .line 83
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;I)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setRows(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearRows()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;I)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setCols(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearCols()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;IF)V
    .registers 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setPackedData(IF)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;F)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->addPackedData(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;Ljava/lang/Iterable;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->addAllPackedData(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->clearPackedData()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->setLayout(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)V

    return-void
.end method

.method private addAllPackedData(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 304
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->ensurePackedDataIsMutable()V

    .line 305
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPackedData(F)V
    .registers 2

    .line 295
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->ensurePackedDataIsMutable()V

    .line 296
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$FloatList;->addFloat(F)V

    return-void
.end method

.method private clearCols()V
    .registers 2

    .line 240
    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->cols_:I

    return-void
.end method

.method private clearLayout()V
    .registers 2

    .line 366
    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    const/4 v0, 0x0

    .line 367
    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->layout_:I

    return-void
.end method

.method private clearPackedData()V
    .registers 2

    .line 312
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method private clearRows()V
    .registers 2

    .line 206
    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->rows_:I

    return-void
.end method

.method private ensurePackedDataIsMutable()V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    .line 275
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 277
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 1

    .line 737
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .registers 1

    .line 445
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .registers 2

    .line 448
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 2

    .line 422
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 3

    .line 428
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 2

    .line 386
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 3

    .line 393
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 2

    .line 433
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 3

    .line 440
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 2

    .line 410
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 3

    .line 417
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 2

    .line 373
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 3

    .line 380
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 2

    .line 398
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
    .registers 3

    .line 405
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
            ">;"
        }
    .end annotation

    .line 743
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCols(I)V
    .registers 3

    .line 233
    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    .line 234
    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->cols_:I

    return-void
.end method

.method private setLayout(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)V
    .registers 2

    .line 354
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->layout_:I

    .line 355
    iget p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    return-void
.end method

.method private setPackedData(IF)V
    .registers 3

    .line 287
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->ensurePackedDataIsMutable()V

    .line 288
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$FloatList;->setFloat(IF)F

    return-void
.end method

.method private setRows(I)V
    .registers 3

    .line 199
    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    .line 200
    iput p1, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->rows_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 674
    sget-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_60

    .line 721
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 715
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 700
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_35

    .line 702
    const-class p1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    monitor-enter p1

    .line 703
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_31

    .line 705
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 708
    sput-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto :goto_33

    .line 710
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

    .line 697
    :pswitch_36
    sget-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    return-object p0

    .line 682
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "rows_"

    const-string v2, "cols_"

    const-string v3, "packedData_"

    const-string v4, "layout_"

    .line 688
    invoke-static {}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 690
    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003$\u0004\u100c\u0002"

    .line 693
    sget-object p2, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 679
    :pswitch_54
    new-instance p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;-><init>(Lcom/google/mediapipe/formats/proto/MatrixDataProto$1;)V

    return-object p0

    .line 676
    :pswitch_5a
    new-instance p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;-><init>()V

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

.method public getCols()I
    .registers 1

    .line 226
    iget p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->cols_:I

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 83
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getLayout()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    .registers 1

    .line 341
    iget p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->layout_:I

    invoke-static {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->forNumber(I)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    move-result-object p0

    if-nez p0, :cond_a

    .line 342
    sget-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->COLUMN_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    :cond_a
    return-object p0
.end method

.method public getPackedData(I)F
    .registers 2

    .line 270
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$FloatList;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public getPackedDataCount()I
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPackedDataList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->packedData_:Lcom/google/protobuf/Internal$FloatList;

    return-object p0
.end method

.method public getRows()I
    .registers 1

    .line 192
    iget p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->rows_:I

    return p0
.end method

.method public hasCols()Z
    .registers 1

    .line 218
    iget p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasLayout()Z
    .registers 1

    .line 328
    iget p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasRows()Z
    .registers 2

    .line 184
    iget p0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->bitField0_:I

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

    .line 83
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 83
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
