.class public final Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioClassifierGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field public static final CLASSIFIER_OPTIONS_FIELD_NUMBER:I = 0x2

.field public static final DEFAULT_INPUT_AUDIO_SAMPLE_RATE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1aed3f0c

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

.field private defaultInputAudioSampleRate_:D


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 650
    new-instance v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;-><init>()V

    .line 653
    sput-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 654
    const-class v1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 676
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 677
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    move-result-object v3

    .line 678
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    move-result-object v4

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    const/4 v5, 0x0

    const v6, 0x1aed3f0c

    .line 675
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 1

    .line 82
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearClassifierOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;D)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setDefaultInputAudioSampleRate(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearDefaultInputAudioSampleRate()V

    return-void
.end method

.method private clearBaseOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 158
    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearClassifierOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 229
    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearDefaultInputAudioSampleRate()V
    .registers 3

    .line 282
    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 283
    iput-wide v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->defaultInputAudioSampleRate_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 1

    .line 659
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object v0
.end method

.method private mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 4

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_22

    .line 141
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 142
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 143
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_24

    .line 145
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 147
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .registers 4

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    if-eqz v0, :cond_22

    .line 212
    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 213
    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 214
    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->newBuilder(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    goto :goto_24

    .line 216
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 218
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 1

    .line 361
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .registers 2

    .line 364
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 2

    .line 338
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 3

    .line 344
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 2

    .line 302
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 3

    .line 309
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 2

    .line 349
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 3

    .line 356
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 2

    .line 326
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 3

    .line 333
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 2

    .line 289
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 3

    .line 296
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 2

    .line 314
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .registers 3

    .line 321
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
            ">;"
        }
    .end annotation

    .line 665
    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .registers 2

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 127
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .registers 2

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 198
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private setDefaultInputAudioSampleRate(D)V
    .registers 4

    .line 270
    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    .line 271
    iput-wide p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->defaultInputAudioSampleRate_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 598
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_5a

    .line 643
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 637
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 622
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_34

    .line 624
    const-class p1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    monitor-enter p1

    .line 625
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_30

    .line 627
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 630
    sput-object p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 632
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

    .line 619
    :pswitch_35
    sget-object p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0

    .line 606
    :pswitch_38
    const-string p0, "bitField0_"

    const-string p1, "baseOptions_"

    const-string p2, "classifierOptions_"

    const-string p3, "defaultInputAudioSampleRate_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 612
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1000\u0002"

    .line 615
    sget-object p2, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 603
    :pswitch_4d
    new-instance p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$1;)V

    return-object p0

    .line 600
    :pswitch_53
    new-instance p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;-><init>()V

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

    .line 114
    iget-object p0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getDefaultInputAudioSampleRate()D
    .registers 3

    .line 258
    iget-wide v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->defaultInputAudioSampleRate_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public hasBaseOptions()Z
    .registers 2

    .line 102
    iget p0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasClassifierOptions()Z
    .registers 1

    .line 173
    iget p0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasDefaultInputAudioSampleRate()Z
    .registers 1

    .line 245
    iget p0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

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

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
