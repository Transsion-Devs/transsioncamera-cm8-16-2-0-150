.class public final Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;,
        Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptionsOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 2

    .line 10
    sget-object v0, Lcom/google/mediapipe/tasks/text/textembedder/proto/TextEmbedderGraphOptionsProto$TextEmbedderGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method
