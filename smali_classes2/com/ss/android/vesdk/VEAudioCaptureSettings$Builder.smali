.class public Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEAudioCaptureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;-><init>(Lcom/ss/android/vesdk/VEAudioCaptureSettings$1;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;-><init>(Lcom/ss/android/vesdk/VEAudioCaptureSettings$1;)V

    .line 125
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEAudioCaptureSettings;
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    return-object p0
.end method

.method public enableSysKaraoke(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->enableSysKaraoke:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$802(Lcom/ss/android/vesdk/VEAudioCaptureSettings;Z)Z

    return-object p0
.end method

.method public preferBuiltinMicInBluetoothScene(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->preferBuiltinMicInBluetoothScene:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$902(Lcom/ss/android/vesdk/VEAudioCaptureSettings;Z)Z

    return-object p0
.end method

.method public setAudioCaptureLowLatency(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 5

    if-eqz p1, :cond_23

    .line 196
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TESystemUtils;->getSuggestedOutputProperty()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 198
    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->sampleRate:I
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$202(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    .line 199
    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->framesPerBuffer:I
    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$602(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    goto :goto_32

    .line 202
    :cond_23
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    const v1, 0xac44

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->sampleRate:I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$202(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    .line 203
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    const/16 v1, 0x100

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->framesPerBuffer:I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$602(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    .line 205
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->lowLatency:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$702(Lcom/ss/android/vesdk/VEAudioCaptureSettings;Z)Z

    return-object p0
.end method

.method public setAudioDataStore(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->dataStore:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$502(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    return-object p0
.end method

.method public setAudioSource(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->audioSource:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$402(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    return-object p0
.end method

.method public setBitSamples(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->bitSamples:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$302(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    return-object p0
.end method

.method public setChannel(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->channel:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$102(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    return-object p0
.end method

.method public setSampleRate(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->settings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    # setter for: Lcom/ss/android/vesdk/VEAudioCaptureSettings;->sampleRate:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings;->access$202(Lcom/ss/android/vesdk/VEAudioCaptureSettings;I)I

    return-object p0
.end method
