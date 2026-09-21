.class Lcom/ss/android/vesdk/TECameraVideoRecorder$44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->regSceneDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V
    .registers 3

    .line 3717
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$44;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$44;->val$callback:Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/medialib/model/SceneDetectInfo;)V
    .registers 2

    .line 3720
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$44;->val$callback:Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;->onResult(Lcom/ss/android/medialib/model/SceneDetectInfo;)V

    return-void
.end method
