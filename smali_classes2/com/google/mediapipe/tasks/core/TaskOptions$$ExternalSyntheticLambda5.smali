.class public final synthetic Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda5;->f$0:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda5;->f$0:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p0, p1}, Lcom/google/mediapipe/tasks/core/TaskOptions;->$r8$lambda$MKwyVrYZ-dZrY9Kx4k7zimwvqvY(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;Ljava/nio/ByteBuffer;)V

    return-void
.end method
