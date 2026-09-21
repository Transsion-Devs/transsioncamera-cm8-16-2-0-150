.class Lcom/ss/android/vesdk/TECameraVideoRecorder$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->registerCherEffectParamCallback(Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V
    .registers 3

    .line 3735
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$45;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$45;->val$callback:Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCherEffect([Ljava/lang/String;[D[Z)V
    .registers 4

    .line 3738
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$45;->val$callback:Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;->onCherEffect([Ljava/lang/String;[D[Z)V

    return-void
.end method
