.class public final synthetic Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

.field public final synthetic f$1:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1$$ExternalSyntheticLambda0;->f$0:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1$$ExternalSyntheticLambda0;->f$1:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1$$ExternalSyntheticLambda0;->f$0:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1$$ExternalSyntheticLambda0;->f$1:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;

    invoke-static {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->$r8$lambda$eil209HcppaX4JTA89X-lE48MDo(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V

    return-void
.end method
