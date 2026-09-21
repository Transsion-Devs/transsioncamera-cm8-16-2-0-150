.class public final synthetic Lcom/ss/android/vesdk/TERecorder$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TERecorder$4;

.field public final synthetic f$1:Lcom/ss/android/ttve/model/VEAudioDeviceType;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TERecorder$4;Lcom/ss/android/ttve/model/VEAudioDeviceType;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$4$$ExternalSyntheticLambda0;->f$0:Lcom/ss/android/vesdk/TERecorder$4;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$4$$ExternalSyntheticLambda0;->f$1:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4$$ExternalSyntheticLambda0;->f$0:Lcom/ss/android/vesdk/TERecorder$4;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4$$ExternalSyntheticLambda0;->f$1:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/TERecorder$4;->$r8$lambda$sy31Zc3MkSm-4AlQUwxtOZeqmcM(Lcom/ss/android/vesdk/TERecorder$4;Lcom/ss/android/ttve/model/VEAudioDeviceType;)V

    return-void
.end method
