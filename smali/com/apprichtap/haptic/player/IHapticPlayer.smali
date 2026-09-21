.class public interface abstract Lcom/apprichtap/haptic/player/IHapticPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)Lcom/apprichtap/haptic/player/IHapticPlayer;
    .registers 2

    new-instance v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-direct {v0, p0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;-><init>(Lcom/apprichtap/haptic/player/IHapticEffectPerformer;)V

    return-object v0
.end method


# virtual methods
.method public abstract isPlaying()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract setDataSource(Ljava/lang/String;IIIILcom/apprichtap/haptic/sync/SyncCallback;)V
.end method

.method public abstract setStartOffsetMillis(I)V
.end method

.method public abstract setVibrationAttributes(Landroid/os/VibrationAttributes;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
