.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic$innerSetEffectMessageCenterCallback$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;->innerSetEffectMessageCenterCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic$innerSetEffectMessageCenterCallback$1;->$callback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;

    .line 29
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectMsgListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(IIILjava/lang/String;)V
    .registers 5

    .line 31
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic$innerSetEffectMessageCenterCallback$1;->$callback:Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerEffectMsg;->onMessageReceived(IIILjava/lang/String;)V

    return-void
.end method
