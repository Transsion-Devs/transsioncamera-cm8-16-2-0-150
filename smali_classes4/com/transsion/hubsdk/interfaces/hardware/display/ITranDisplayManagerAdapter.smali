.class public interface abstract Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addShowInDualDisplay(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract closeDualDisplay()V
.end method

.method public abstract closeDualDisplayForSelfie()V
.end method

.method public abstract executeSmartbuttonFunction(ILjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract getCurSelfieDisplayId()I
.end method

.method public abstract getForcedUsingDisplayMode()I
.end method

.method public abstract getSecondaryDisplayId()I
.end method

.method public abstract getSourceConnectFlag()I
.end method

.method public abstract isDualDisplayForSelfie()Z
.end method

.method public abstract isTentMode()Z
.end method

.method public abstract openDualDisplay()V
.end method

.method public abstract openDualDisplayForSelfie(Landroid/os/Bundle;)V
.end method

.method public abstract registerDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;Landroid/os/Handler;)V
.end method

.method public abstract registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V
.end method

.method public abstract registerPowerStateChangedCallback(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;Ljava/lang/String;)Z
.end method

.method public abstract registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
.end method

.method public abstract registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V
.end method

.method public abstract registerTentModeCallback(ILcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V
.end method

.method public abstract setBrightness(IF)V
.end method

.method public abstract setTemporaryBrightness(IF)V
.end method

.method public abstract setTranAutoBrightnessTemporarily(IZLjava/lang/String;)V
.end method

.method public abstract unRegisterPowerStateChangedListener(Ljava/lang/String;)Z
.end method

.method public abstract unregisterDualDisplayListener(Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$DualDisplayListener;)V
.end method

.method public abstract unregisterFlexButtonCallback(I)V
.end method

.method public abstract unregisterShoulderButtonCallback(I)V
.end method

.method public abstract unregisterSmartButtonCallback(I)V
.end method

.method public abstract unregisterTentModeCallback(I)V
.end method
