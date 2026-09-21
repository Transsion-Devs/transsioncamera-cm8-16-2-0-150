.class Lcom/ss/android/vesdk/TECameraVideoRecorder$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setAudioRecordStateCallack(Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$veCallack:Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V
    .registers 3

    .line 1151
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$14;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$14;->val$veCallack:Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .registers 4

    .line 1154
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$14;->val$veCallack:Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;

    if-eqz p0, :cond_7

    .line 1155
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;->onState(I)V

    .line 1158
    :cond_7
    const-string p0, "te_record_audio_start_record_ret"

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void
.end method
