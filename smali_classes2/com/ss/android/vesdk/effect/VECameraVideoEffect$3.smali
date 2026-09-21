.class Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->addTrackAlgorithm(IILcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

.field final synthetic val$param:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

.field final synthetic val$trackIndex:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;I)V
    .registers 4

    .line 183
    iput-object p1, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iput-object p2, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->val$param:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    iput p3, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->val$trackIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iget-object v0, v0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getRecordStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 187
    # getter for: Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTrackAlgorithm in status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mRecorder:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getRecordStatus()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_2c
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->val$param:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5a

    .line 191
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->val$param:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio mic detect delay"

    if-ne v0, v1, :cond_5a

    .line 192
    iget v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->val$trackIndex:I

    if-nez v0, :cond_5a

    .line 193
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->val$param:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    check-cast v0, Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;

    .line 194
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$3;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    # getter for: Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->access$100(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;->getModelPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableAudioAlgorithmParam(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_5a
    return-void
.end method
