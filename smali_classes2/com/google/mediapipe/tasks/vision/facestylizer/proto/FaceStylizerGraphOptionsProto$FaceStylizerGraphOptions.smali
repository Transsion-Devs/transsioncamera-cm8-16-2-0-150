.class public final Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceStylizerGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1ea1bd3c

.field public static final FACE_ALIGNMENT_SIZE_FIELD_NUMBER:I = 0x3

.field public static final FACE_LANDMARKER_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private faceAlignmentSize_:I

.field private faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 628
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;-><init>()V

    .line 631
    sput-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    .line 632
    const-class v1, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 654
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 655
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    move-result-object v3

    .line 656
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    move-result-object v4

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    const/4 v5, 0x0

    const v6, 0x1ea1bd3c

    .line 653
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/16 v0, 0x100

    .line 84
    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceAlignmentSize_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 1

    .line 78
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->setFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->mergeFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->clearFaceLandmarkerGraphOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;I)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->setFaceAlignmentSize(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->clearFaceAlignmentSize()V

    return-void
.end method

.method private clearBaseOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 155
    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearFaceAlignmentSize()V
    .registers 2

    .line 270
    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    const/16 v0, 0x100

    .line 271
    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceAlignmentSize_:I

    return-void
.end method

.method private clearFaceLandmarkerGraphOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 221
    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 1

    .line 637
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object v0
.end method

.method private mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 4

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_22

    .line 138
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 139
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 140
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_24

    .line 142
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 144
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .registers 4

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    if-eqz v0, :cond_22

    .line 205
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 206
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 207
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    goto :goto_24

    .line 209
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 211
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .registers 1

    .line 349
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;
    .registers 2

    .line 352
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 2

    .line 326
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 3

    .line 332
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 2

    .line 290
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 3

    .line 297
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 2

    .line 337
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 3

    .line 344
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 2

    .line 314
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 3

    .line 321
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 2

    .line 277
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 3

    .line 284
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 2

    .line 302
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;
    .registers 3

    .line 309
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;",
            ">;"
        }
    .end annotation

    .line 643
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 124
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setFaceAlignmentSize(I)V
    .registers 3

    .line 259
    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    .line 260
    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceAlignmentSize_:I

    return-void
.end method

.method private setFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .registers 2

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 192
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 576
    sget-object p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5a

    .line 621
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 615
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 600
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 602
    const-class p1, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    monitor-enter p1

    .line 603
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 605
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 608
    sput-object p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 610
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

    .line 597
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    return-object p0

    .line 584
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "baseOptions_"

    const-string p2, "faceLandmarkerGraphOptions_"

    const-string p3, "faceAlignmentSize_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 590
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1004\u0002"

    .line 593
    sget-object p2, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 581
    :pswitch_4d
    new-instance p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$1;)V

    return-object p0

    .line 578
    :pswitch_53
    new-instance p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;

    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;-><init>()V

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

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 78
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getFaceAlignmentSize()I
    .registers 1

    .line 248
    iget p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceAlignmentSize_:I

    return p0
.end method

.method public getFaceLandmarkerGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->faceLandmarkerGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasBaseOptions()Z
    .registers 2

    .line 99
    iget p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasFaceAlignmentSize()Z
    .registers 1

    .line 236
    iget p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasFaceLandmarkerGraphOptions()Z
    .registers 1

    .line 169
    iget p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/proto/FaceStylizerGraphOptionsProto$FaceStylizerGraphOptions;->bitField0_:I

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

    .line 78
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 78
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
