.class Lcom/ss/android/vesdk/TECameraVideoRecorder$69;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/listener/DistortionInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->fetchDistortionInfo(Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;)V
    .registers 3

    .line 5268
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$69;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$69;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 5271
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$69;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;

    if-eqz p0, :cond_7

    .line 5272
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
