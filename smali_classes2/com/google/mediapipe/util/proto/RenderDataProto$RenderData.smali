.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RENDER_ANNOTATIONS_FIELD_NUMBER:I = 0x1

.field public static final SCENE_CLASS_FIELD_NUMBER:I = 0x2

.field public static final SCENE_VIEWPORT_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private sceneClass_:Ljava/lang/String;

.field private sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 790
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;-><init>()V

    .line 793
    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    .line 794
    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 99
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneClass_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 1

    .line 93
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->setRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->setSceneViewport(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->mergeSceneViewport(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->clearSceneViewport()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->addRenderAnnotations(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->addRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Ljava/lang/Iterable;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->addAllRenderAnnotations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->clearRenderAnnotations()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;I)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->removeRenderAnnotations(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->setSceneClass(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->clearSceneClass()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->setSceneClassBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllRenderAnnotations(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->ensureRenderAnnotationsIsMutable()V

    .line 180
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 3

    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->ensureRenderAnnotationsIsMutable()V

    .line 172
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRenderAnnotations(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 2

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->ensureRenderAnnotationsIsMutable()V

    .line 163
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearRenderAnnotations()V
    .registers 2

    .line 187
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSceneClass()V
    .registers 2

    .line 258
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    .line 259
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->getSceneClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneClass_:Ljava/lang/String;

    return-void
.end method

.method private clearSceneViewport()V
    .registers 2

    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    .line 353
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    return-void
.end method

.method private ensureRenderAnnotationsIsMutable()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 142
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 144
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 1

    .line 799
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object v0
.end method

.method private mergeSceneViewport(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 4

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    if-eqz v0, :cond_22

    .line 334
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 335
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    .line 336
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    goto :goto_24

    .line 338
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    .line 340
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .registers 1

    .line 431
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;
    .registers 2

    .line 434
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 2

    .line 408
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 3

    .line 414
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 2

    .line 372
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 3

    .line 379
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 2

    .line 419
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 3

    .line 426
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 2

    .line 396
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 3

    .line 403
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 2

    .line 359
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 3

    .line 366
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 2

    .line 384
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;
    .registers 3

    .line 391
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;",
            ">;"
        }
    .end annotation

    .line 805
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRenderAnnotations(I)V
    .registers 2

    .line 193
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->ensureRenderAnnotationsIsMutable()V

    .line 194
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setRenderAnnotations(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 3

    .line 153
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->ensureRenderAnnotationsIsMutable()V

    .line 155
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSceneClass(Ljava/lang/String;)V
    .registers 3

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    .line 248
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneClass_:Ljava/lang/String;

    return-void
.end method

.method private setSceneClassBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 271
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneClass_:Ljava/lang/String;

    .line 272
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    return-void
.end method

.method private setSceneViewport(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V
    .registers 2

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    .line 318
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 737
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5c

    .line 783
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 777
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 762
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 764
    const-class p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    monitor-enter p1

    .line 765
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 767
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 770
    sput-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 772
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

    .line 759
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    return-object p0

    .line 745
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "renderAnnotations_"

    const-class p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    const-string p3, "sceneClass_"

    const-string v0, "sceneViewport_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 752
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1009\u0001"

    .line 755
    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 742
    :pswitch_4f
    new-instance p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object p0

    .line 739
    :pswitch_55
    new-instance p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;

    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;-><init>()V

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

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getRenderAnnotations(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public getRenderAnnotationsCount()I
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRenderAnnotationsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getRenderAnnotationsOrBuilder(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;

    return-object p0
.end method

.method public getRenderAnnotationsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->renderAnnotations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getSceneClass()Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneClass_:Ljava/lang/String;

    return-object p0
.end method

.method public getSceneClassBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneClass_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSceneViewport()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->sceneViewport_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasSceneClass()Z
    .registers 2

    .line 209
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasSceneViewport()Z
    .registers 1

    .line 289
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderData;->bitField0_:I

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
