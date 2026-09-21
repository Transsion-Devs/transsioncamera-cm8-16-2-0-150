.class public final synthetic Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;


# direct methods
.method public synthetic constructor <init>(ILcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;Ljava/lang/String;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$3:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    iget-object v2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1$$ExternalSyntheticLambda0;->f$3:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    invoke-static {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;->$r8$lambda$6QF1KdxbbujsDMJcWpV_R8wpMpQ(ILcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;Ljava/lang/String;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V

    return-void
.end method
