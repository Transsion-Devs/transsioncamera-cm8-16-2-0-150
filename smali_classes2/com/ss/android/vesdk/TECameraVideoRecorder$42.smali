.class Lcom/ss/android/vesdk/TECameraVideoRecorder$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 3

    .line 3687
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$42;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$42;->val$callback:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/medialib/model/SmartBeautyInfo;)V
    .registers 2

    .line 3690
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$42;->val$callback:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    invoke-static {p1}, Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;->convert(Lcom/ss/android/medialib/model/SmartBeautyInfo;)Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VESmartBeautyInfo;)V

    return-void
.end method
