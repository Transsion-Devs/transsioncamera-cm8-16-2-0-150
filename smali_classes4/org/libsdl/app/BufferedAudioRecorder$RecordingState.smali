.class public Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/BufferedAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordingState"
.end annotation


# instance fields
.field mObserver:Landroidx/lifecycle/Observer;

.field final synthetic this$0:Lorg/libsdl/app/BufferedAudioRecorder;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/BufferedAudioRecorder;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Landroidx/lifecycle/Observer;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->mObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public setState(Z)V
    .registers 3

    .line 82
    iget-object v0, p0, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iput-boolean p1, v0, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    .line 83
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder$RecordingState;->mObserver:Landroidx/lifecycle/Observer;

    if-eqz p0, :cond_f

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method
