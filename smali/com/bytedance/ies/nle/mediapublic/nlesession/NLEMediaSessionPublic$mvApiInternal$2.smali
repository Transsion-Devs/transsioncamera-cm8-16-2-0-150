.class final Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mvApiInternal$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
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
.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mvApiInternal$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;
    .registers 4

    .line 114
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;-><init>()V

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mvApiInternal$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    .line 115
    # invokes: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->access$getMediaSession(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object v1

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->access$getNleEditor$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->injectCoreReplayEditor(Ljava/lang/Object;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    .line 116
    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaLifeCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->access$getMediaLifeCycleManager$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->setLifecyleManager(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 113
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mvApiInternal$2;->invoke()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;

    move-result-object p0

    return-object p0
.end method
