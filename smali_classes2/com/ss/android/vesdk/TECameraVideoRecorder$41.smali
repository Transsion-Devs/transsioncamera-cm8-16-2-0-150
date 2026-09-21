.class Lcom/ss/android/vesdk/TECameraVideoRecorder$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 3

    .line 3669
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$41;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$41;->val$callback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/medialib/model/SkeletonInfo;)V
    .registers 2

    .line 3672
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$41;->val$callback:Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;

    invoke-static {p1}, Lcom/ss/android/vesdk/faceinfo/VESkeletonInfo;->convert(Lcom/ss/android/medialib/model/SkeletonInfo;)Lcom/ss/android/vesdk/faceinfo/VESkeletonInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VESkeletonInfo;)V

    return-void
.end method
