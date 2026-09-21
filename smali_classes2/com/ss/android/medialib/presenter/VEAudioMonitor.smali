.class public Lcom/ss/android/medialib/presenter/VEAudioMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_INIT_EVENT:I = 0x0

.field public static final AUDIO_RELEASE_EVENT:I = 0x3

.field public static final AUDIO_START_EVENT:I = 0x1

.field public static final AUDIO_STOP_EVENT:I = 0x2

.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_OK:I


# instance fields
.field private mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/ss/android/medialib/presenter/VEAudioMonitor$1;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/presenter/VEAudioMonitor$1;-><init>(Lcom/ss/android/medialib/presenter/VEAudioMonitor;)V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/AudioRecord;IILjava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_36

    const/4 v0, 0x1

    if-eq p2, v0, :cond_28

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    return-void

    :cond_c
    if-nez p3, :cond_14

    .line 79
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioReleaseSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_14
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioReleaseError(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void

    :cond_1a
    if-nez p3, :cond_22

    .line 72
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioStopSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_22
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioStopError(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void

    :cond_28
    if-nez p3, :cond_30

    .line 65
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioStartSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_30
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioStartError(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void

    :cond_36
    if-nez p3, :cond_3e

    .line 58
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioInitSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_3e
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEAudioMonitor;->mAudioMonitorInterface:Lcom/ss/android/medialib/presenter/AudioMonitorInterface;

    invoke-interface {p0, p1, p4}, Lcom/ss/android/medialib/presenter/AudioMonitorInterface;->audioInitError(Landroid/media/AudioRecord;Ljava/lang/String;)V

    return-void
.end method
