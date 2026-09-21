.class public final Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioEmbedderGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;",
        "Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

.field public static final EMBEDDER_OPTIONS_FIELD_NUMBER:I = 0x2

.field public static final EXT_FIELD_NUMBER:I = 0x1d0b42e9

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 518
    new-instance v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;-><init>()V

    .line 521
    sput-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    .line 522
    const-class v1, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 544
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 545
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    move-result-object v3

    .line 546
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    move-result-object v4

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    const/4 v5, 0x0

    const v6, 0x1d0b42e9

    .line 543
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 1

    .line 61
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->setEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->mergeEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->clearEmbedderOptions()V

    return-void
.end method

.method private clearBaseOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 137
    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearEmbedderOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 208
    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 1

    .line 527
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object v0
.end method

.method private mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 4

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_22

    .line 120
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 121
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 122
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_24

    .line 124
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 126
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    .registers 4

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    if-eqz v0, :cond_22

    .line 191
    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 192
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 193
    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->newBuilder(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    goto :goto_24

    .line 195
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 197
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;
    .registers 1

    .line 286
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;
    .registers 2

    .line 289
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 2

    .line 263
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 3

    .line 269
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 2

    .line 227
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 3

    .line 234
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 2

    .line 274
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 3

    .line 281
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 2

    .line 251
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 3

    .line 258
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 2

    .line 214
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 3

    .line 221
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 2

    .line 239
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;
    .registers 3

    .line 246
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;",
            ">;"
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 106
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    return-void
.end method

.method private setEmbedderOptions(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    .registers 2

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 177
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 467
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_58

    .line 511
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 505
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 490
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 492
    const-class p1, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    monitor-enter p1

    .line 493
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 495
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 498
    sput-object p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 500
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

    .line 487
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    return-object p0

    .line 475
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "baseOptions_"

    const-string p2, "embedderOptions_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 480
    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    .line 483
    sget-object p2, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 472
    :pswitch_4b
    new-instance p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$1;)V

    return-object p0

    .line 469
    :pswitch_51
    new-instance p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;

    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;-><init>()V

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4b
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 61
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getEmbedderOptions()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->embedderOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasBaseOptions()Z
    .registers 2

    .line 81
    iget p0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasEmbedderOptions()Z
    .registers 1

    .line 152
    iget p0, p0, Lcom/google/mediapipe/tasks/audio/audioembedder/proto/AudioEmbedderGraphOptionsProto$AudioEmbedderGraphOptions;->bitField0_:I

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

    .line 61
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 61
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
