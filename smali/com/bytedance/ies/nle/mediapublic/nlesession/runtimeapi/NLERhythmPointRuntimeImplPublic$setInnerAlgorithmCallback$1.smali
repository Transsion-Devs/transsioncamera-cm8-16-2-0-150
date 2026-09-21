.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setInnerAlgorithmCallback$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;->setInnerAlgorithmCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $nleBeginVideoFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setInnerAlgorithmCallback$1;->$nleBeginVideoFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;

    .line 155
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmCallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic$setInnerAlgorithmCallback$1;->$nleBeginVideoFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-interface {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerBeginVideoFrame;->onProgress(F)V

    return-void
.end method
