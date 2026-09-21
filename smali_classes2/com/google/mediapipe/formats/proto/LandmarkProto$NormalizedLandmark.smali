.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalizedLandmark"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
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

    .line 2170
    new-instance v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;-><init>()V

    .line 2173
    sput-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 2174
    const-class v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1656
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$2800()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 1

    .line 1651
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .registers 2

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setX(F)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .registers 1

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearX()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .registers 2

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setY(F)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .registers 1

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearY()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .registers 2

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setZ(F)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .registers 1

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearZ()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .registers 2

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setVisibility(F)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .registers 1

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearVisibility()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .registers 2

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setPresence(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .registers 1

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearPresence()V

    return-void
.end method

.method private clearPresence()V
    .registers 2

    .line 1825
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    .line 1826
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->presence_:F

    return-void
.end method

.method private clearVisibility()V
    .registers 2

    .line 1791
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    .line 1792
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->visibility_:F

    return-void
.end method

.method private clearX()V
    .registers 2

    .line 1689
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->x_:F

    return-void
.end method

.method private clearY()V
    .registers 2

    .line 1723
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    .line 1724
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->y_:F

    return-void
.end method

.method private clearZ()V
    .registers 2

    .line 1757
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    .line 1758
    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->z_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 1

    .line 2179
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .registers 1

    .line 1904
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .registers 2

    .line 1907
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 2

    .line 1881
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 3

    .line 1887
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 2

    .line 1845
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 3

    .line 1852
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 2

    .line 1892
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 3

    .line 1899
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 2

    .line 1869
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 3

    .line 1876
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 2

    .line 1832
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 3

    .line 1839
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 2

    .line 1857
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .registers 3

    .line 1864
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;"
        }
    .end annotation

    .line 2185
    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPresence(F)V
    .registers 3

    .line 1818
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    .line 1819
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->presence_:F

    return-void
.end method

.method private setVisibility(F)V
    .registers 3

    .line 1784
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    .line 1785
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->visibility_:F

    return-void
.end method

.method private setX(F)V
    .registers 3

    .line 1682
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    .line 1683
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->x_:F

    return-void
.end method

.method private setY(F)V
    .registers 3

    .line 1716
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    .line 1717
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->y_:F

    return-void
.end method

.method private setZ(F)V
    .registers 3

    .line 1750
    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    .line 1751
    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->z_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 2116
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5e

    .line 2163
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 2157
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2142
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_35

    .line 2144
    const-class p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    monitor-enter p1

    .line 2145
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_31

    .line 2147
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2150
    sput-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto :goto_33

    .line 2152
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

    .line 2139
    :pswitch_36
    sget-object p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0

    .line 2124
    :pswitch_39
    const-string v0, "bitField0_"

    const-string v1, "x_"

    const-string v2, "y_"

    const-string v3, "z_"

    const-string v4, "visibility_"

    const-string v5, "presence_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 2132
    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1001\u0004"

    .line 2135
    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2121
    :pswitch_52
    new-instance p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V

    return-object p0

    .line 2118
    :pswitch_58
    new-instance p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;-><init>()V

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

    .line 1651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getPresence()F
    .registers 1

    .line 1811
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->presence_:F

    return p0
.end method

.method public getVisibility()F
    .registers 1

    .line 1777
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->visibility_:F

    return p0
.end method

.method public getX()F
    .registers 1

    .line 1675
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->x_:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 1709
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->y_:F

    return p0
.end method

.method public getZ()F
    .registers 1

    .line 1743
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->z_:F

    return p0
.end method

.method public hasPresence()Z
    .registers 1

    .line 1803
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    .line 1769
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    .line 1667
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    .line 1701
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    .line 1735
    iget p0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    .line 1651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
