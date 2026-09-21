.class public interface abstract Lcom/transsion/hubsdk/interfaces/hardware/fingerprint/ITranFingerprintManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract enterFingerNavigationMode(Z)V
.end method

.method public abstract getAddFingerprint(I)Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
.end method

.method public abstract getAppPackagename(I)Ljava/lang/String;
.end method

.method public abstract getAppUserId(I)I
.end method

.method public abstract getBiometricId(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)I
.end method

.method public abstract getEnrolledFingerprints(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAuthenticating()Z
.end method

.method public abstract isClientActive()Z
.end method

.method public abstract notifyActivateFingerprint(Z)V
.end method

.method public abstract setAppAndUserIdForBiometrics(ILjava/lang/String;I)V
.end method

.method public abstract setAppBiometrics(ILjava/lang/String;)V
.end method

.method public abstract setKeyguardClientVisible(Z)V
.end method

.method public abstract setMyClientVisible(Ljava/lang/String;Z)V
.end method

.method public abstract setUdfpColor(I)V
.end method

.method public abstract startAppForFp(I)V
.end method
