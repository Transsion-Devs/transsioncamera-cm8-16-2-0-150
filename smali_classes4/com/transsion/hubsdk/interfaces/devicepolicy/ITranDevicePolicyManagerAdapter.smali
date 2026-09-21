.class public interface abstract Lcom/transsion/hubsdk/interfaces/devicepolicy/ITranDevicePolicyManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
.end method

.method public abstract getMaximumTimeToLock(Landroid/content/ComponentName;I)J
.end method

.method public abstract getProfileOwner()Landroid/content/ComponentName;
.end method

.method public abstract getProfileOwnerAsUser(I)Landroid/content/ComponentName;
.end method

.method public abstract getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract getProfileOwnerWithContext(Landroid/content/Context;)Landroid/content/ComponentName;
.end method

.method public abstract isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
.end method

.method public abstract isFinancedRestrictDevice()Z
.end method

.method public abstract setDualProfileEnabled(Landroid/content/ComponentName;I)V
.end method
