.class Lcom/ss/android/vesdk/TECameraVideoRecorder$72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/listener/AudioManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setEffectAudioManagerCallback(Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)V
    .registers 3

    .line 5357
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$72;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$72;->val$callback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()Z
    .registers 1

    .line 5361
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$72;->val$callback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    if-eqz p0, :cond_9

    .line 5362
    invoke-interface {p0}, Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;->onIntercept()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 5369
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$72;->val$callback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    if-eqz p0, :cond_9

    .line 5370
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
