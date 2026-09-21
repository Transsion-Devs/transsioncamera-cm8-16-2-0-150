.class final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic$mediaRuntimeController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;-><init>()V
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
.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic$mediaRuntimeController$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic$mediaRuntimeController$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;

    # invokes: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;->access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getMattingApi()Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic$mediaRuntimeController$2;->invoke()Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    move-result-object p0

    return-object p0
.end method
