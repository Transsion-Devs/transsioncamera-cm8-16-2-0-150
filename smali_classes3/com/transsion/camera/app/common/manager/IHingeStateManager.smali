.class public interface abstract Lcom/transsion/camera/app/common/manager/IHingeStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/interfaces/fold_flip/IFoldFlip;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/manager/IHingeStateManager$DeviceStateCallback;
    }
.end annotation


# static fields
.field public static final DEVICE_STATE_CLOSED:I = 0x0

.field public static final DEVICE_STATE_HALF_OPENED:I = 0x1

.field public static final DEVICE_STATE_OPENED:I = 0x2


# virtual methods
.method public abstract isRegisterCallback()Z
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract synthetic onOrientationChanged(I)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract registerDeviceStateCallback(Lcom/transsion/camera/app/common/manager/IHingeStateManager$DeviceStateCallback;Landroid/os/Handler;)V
.end method

.method public abstract unregisterDeviceStateCallback()V
.end method
