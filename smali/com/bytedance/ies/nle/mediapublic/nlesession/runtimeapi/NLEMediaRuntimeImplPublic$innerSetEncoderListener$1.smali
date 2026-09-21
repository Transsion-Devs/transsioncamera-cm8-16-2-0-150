.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$innerSetEncoderListener$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->innerSetEncoderListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$innerSetEncoderListener$1;->$listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;

    .line 187
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressBuffer([BIIZ)V
    .registers 5

    .line 194
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$innerSetEncoderListener$1;->$listener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;->onEncoderDataAvailable([BIIZ)V

    return-void
.end method
