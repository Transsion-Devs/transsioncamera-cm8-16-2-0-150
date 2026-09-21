.class Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->removeTrackAlgorithm(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

.field final synthetic val$algorithmParam:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;)V
    .registers 3

    .line 242
    iput-object p1, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iput-object p2, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;->val$algorithmParam:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iget-object v0, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getRecordStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 246
    # getter for: Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTrackAlgorithm in status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getRecordStatus()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 249
    :cond_2c
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;->val$algorithmParam:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio mic detect delay"

    if-ne v0, v1, :cond_48

    .line 250
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    # getter for: Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->access$100(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$5;->val$algorithmParam:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableAudioAlgorithmParam(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_48
    return-void
.end method
