.class Lcom/ss/android/vesdk/TECameraVideoRecorder$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 3

    .line 3598
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$39;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$39;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([I[JF)V
    .registers 9

    .line 3601
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 3602
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_17

    .line 3603
    aget v2, p1, v1

    aget-wide v3, p2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3605
    :cond_17
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$39;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;

    invoke-interface {p0, v0, p3}, Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;->onResult(Landroid/util/SparseArray;F)V

    return-void
.end method
