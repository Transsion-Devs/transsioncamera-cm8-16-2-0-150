.class Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;
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

    .line 255
    iput-object p1, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iput-object p2, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;->val$algorithmParam:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;->val$algorithmParam:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->getAlgorithmType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    .line 259
    iget-object v0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;->val$algorithmParam:Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;

    check-cast v0, Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;

    .line 260
    iget-object p0, p0, Lcom/ss/android/vesdk/effect/VECameraVideoEffect$6;->this$0:Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    # getter for: Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->mPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;->access$100(Lcom/ss/android/vesdk/effect/VECameraVideoEffect;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    iget-object v1, v0, Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;->graphName:Ljava/lang/String;

    iget-object v0, v0, Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;->algorithmConfig:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableBachAlgorithm(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
