.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->innerSetInfoListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;


# direct methods
.method public static synthetic $r8$lambda$6QF1KdxbbujsDMJcWpV_R8wpMpQ(ILcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;Ljava/lang/String;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;->onInfoCallback$lambda-1$lambda-0(ILcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;Ljava/lang/String;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V

    return-void
.end method

.method constructor <init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onInfoCallback$lambda-1$lambda-0(ILcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;Ljava/lang/String;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V
    .registers 5

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p0, :cond_15

    if-nez p2, :cond_10

    .line 104
    const-string p2, ""

    :cond_10
    const/4 v0, 0x0

    invoke-interface {p1, p0, p0, v0, p2}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;->onCompileError(IIFLjava/lang/String;)V

    goto :goto_18

    .line 106
    :cond_15
    invoke-interface {p1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;->onCompileDone()V

    :goto_18
    const/4 p0, 0x0

    .line 108
    invoke-static {p3, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->access$setInternalCompileListener$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)V

    return-void
.end method


# virtual methods
.method public onErrorCallback(IIFLjava/lang/String;)V
    .registers 6

    const-string v0, "msg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->internalCompileListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->access$getInternalCompileListener$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    move-result-object p0

    if-nez p0, :cond_e

    return-void

    .line 123
    :cond_e
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;->onCompileError(IIFLjava/lang/String;)V

    return-void
.end method

.method public onInfoCallback(IIFLjava/lang/String;)V
    .registers 6

    const/16 v0, 0x1007

    if-eq p1, v0, :cond_16

    const/16 p2, 0x1009

    if-eq p1, p2, :cond_9

    goto :goto_1e

    .line 112
    :cond_9
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->internalCompileListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->access$getInternalCompileListener$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_1e

    .line 113
    :cond_12
    invoke-interface {p0, p3}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;->onCompileProgress(F)V

    return-void

    .line 101
    :cond_16
    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->internalCompileListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->access$getInternalCompileListener$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    move-result-object p1

    if-nez p1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    .line 102
    # invokes: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getAsyncHandler()Landroid/os/Handler;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->access$getAsyncHandler(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p4, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;-><init>(ILcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;Ljava/lang/String;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyFrameProcess(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
    .registers 6

    return-void
.end method
