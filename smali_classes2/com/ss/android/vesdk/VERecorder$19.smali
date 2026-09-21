.class Lcom/ss/android/vesdk/VERecorder$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/lens/VEModelDownload$VEModelDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

.field final synthetic val$taintSceneDetectParams:Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
    .registers 4

    .line 6692
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$19;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$19;->val$taintSceneDetectParams:Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;

    iput-object p3, p0, Lcom/ss/android/vesdk/VERecorder$19;->val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    .line 6700
    const-string p0, "VERecorder"

    const-string p1, "get model path failure!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3

    .line 6695
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecorder$19;->val$taintSceneDetectParams:Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;

    iput-object p1, v0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->modelPath:Ljava/lang/String;

    .line 6696
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$19;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$19;->val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    invoke-virtual {p1, v0, p0}, Lcom/ss/android/vesdk/TERecorderBase;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    return-void
.end method
