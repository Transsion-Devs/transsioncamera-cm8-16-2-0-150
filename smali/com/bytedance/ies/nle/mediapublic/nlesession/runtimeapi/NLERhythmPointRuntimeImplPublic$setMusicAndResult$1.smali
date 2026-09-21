.class final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->setMusicAndResult(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $algorithmPath:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;

.field final synthetic $audioFilePath:Ljava/lang/String;

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $trimIn:I

.field final synthetic $trimOut:I

.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;Ljava/util/concurrent/CountDownLatch;)V
    .registers 8

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$result:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;

    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$audioFilePath:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$trimIn:I

    iput p5, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$trimOut:I

    iput-object p6, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$algorithmPath:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;

    iput-object p7, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 205
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 7

    .line 206
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$result:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;

    iget-object v2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$audioFilePath:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$trimIn:I

    iget v4, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$trimOut:I

    iget-object v5, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$algorithmPath:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;

    # invokes: Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->setMusicAndResultInner(Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->access$setMusicAndResultInner(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;Ljava/lang/String;IILcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 207
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setMusicAndResult$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
