.class public interface abstract Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/interfaces/fold_flip/IFoldFlip;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$OneArgFunc;,
        Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$CameraActivityDelegate;
    }
.end annotation


# virtual methods
.method public abstract clearBrowserGotoGalleryListener()V
.end method

.method public abstract createCameraAppUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IApp$IIntentProxy;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/CameraSettingControl;)Lcom/transsion/camera/app/common/IAppUI;
.end method

.method public abstract createDataStore(Landroid/content/Context;)Lcom/transsion/camera/app/common/storage/DataStore;
.end method

.method public abstract hideErrorAndFinish()V
.end method

.method public abstract initSystemUI()V
.end method

.method public abstract launchFromAod(Landroid/app/Activity;)Z
.end method

.method public abstract onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreateTask(Landroid/app/Activity;Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$OneArgFunc;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$OneArgFunc;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onDestroyTasks(Landroid/app/Activity;Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$OneArgFunc;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$OneArgFunc;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onNewIntentTasks(Landroid/app/Activity;Landroid/content/Intent;)Z
.end method

.method public abstract onPauseTasks(Landroid/app/Activity;)V
.end method

.method public abstract onPrePermissionPause(Landroid/app/Activity;)V
.end method

.method public abstract onResumeTasks(Landroid/app/Activity;)V
.end method

.method public abstract onStartTasks(Landroid/app/Activity;)V
.end method

.method public abstract onStopTasks(Landroid/app/Activity;)V
.end method

.method public abstract preInitOnCreate(Landroid/app/Activity;)V
.end method

.method public abstract preSecureCreateTasks(Landroid/app/Activity;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract registerVipReceiver(Landroid/app/Activity;)V
.end method

.method public abstract setBrowserGotoGalleryListener()V
.end method

.method public abstract setCameraActivityDelegate(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy$CameraActivityDelegate;)V
.end method

.method public abstract setModeSwitchPolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
.end method

.method public abstract showErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showGotoInstallGallery(Landroid/app/Activity;Z)Z
.end method

.method public abstract unRegisterVipReceiver(Landroid/app/Activity;)V
.end method

.method public abstract updateThumbnailFromAod()V
.end method
