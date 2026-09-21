.class public interface abstract Lcom/apprichtap/haptic/player/IHapticEffectPerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getRichTapCoreMajorVersion()I
    .registers 2

    const-string p0, "IHapticEffectPerformer"

    const-string v0, "default getRichTapCoreMajorVersion"

    invoke-static {p0, v0}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public setGain(I)V
    .registers 2

    const-string p0, "IHapticEffectPerformer"

    const-string p1, "default setGain"

    invoke-static {p0, p1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSenderIdKey(Ljava/lang/String;)V
    .registers 2

    const-string p0, "IHapticEffectPerformer"

    const-string p1, "default setSenderId(int[])"

    invoke-static {p0, p1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVibrationAttributes(Landroid/os/VibrationAttributes;)V
    .registers 2

    const-string p0, "IHapticEffectPerformer"

    const-string p1, "default setVibrationAttributes"

    invoke-static {p0, p1}, Lcom/apprichtap/haptic/base/d$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract start(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method
