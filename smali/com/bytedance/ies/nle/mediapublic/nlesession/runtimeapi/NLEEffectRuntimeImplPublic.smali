.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEEffectRuntime;


# instance fields
.field private effectMsgListener:Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;

.field private final effectRuntimeController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 12
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic$effectRuntimeController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic$effectRuntimeController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->effectRuntimeController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method private final getEffectRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;
    .registers 2

    .line 12
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->effectRuntimeController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-effectRuntimeController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    return-object p0
.end method

.method private final innerSetEffectMessageCenterCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 29
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic$innerSetEffectMessageCenterCallback$1;

    invoke-direct {v0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic$innerSetEffectMessageCenterCallback$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;)V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->effectMsgListener:Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;

    :cond_9
    return-void
.end method


# virtual methods
.method public removeEffectMessageCenterCallback()I
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->getEffectRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;->removeEffectMessageCenterCallback()I

    move-result p0

    return p0
.end method

.method public setEffectMessageCenterCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;)I
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->innerSetEffectMessageCenterCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;)V

    .line 20
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->getEffectRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    move-result-object p1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->effectMsgListener:Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;->setEffectMessageCenterCallback(Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;)I

    move-result p0

    return p0
.end method
