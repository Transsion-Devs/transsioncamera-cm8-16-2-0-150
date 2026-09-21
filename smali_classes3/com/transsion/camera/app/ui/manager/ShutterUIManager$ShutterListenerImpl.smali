.class Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ShutterUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Lcom/transsion/camera/app/ui/manager/ShutterUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V

    return-void
.end method


# virtual methods
.method public onFloatingShutterButtonMove(II)V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->onFloatingShutterButtonMove(II)V

    :cond_11
    return-void
.end method

.method public onLeaveAfterSwipeUp()V
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->onLeaveAfterSwipeUp()V

    :cond_11
    return-void
.end method

.method public onShutterButtonSwipeUp(II)Z
    .registers 9

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmFloatingShutterNotSupportMode(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    return v1

    .line 314
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmFloatingShutterHideEnd(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    .line 317
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAIArtMuseumCapturing(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v1

    .line 320
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmIsAIGCContinuousShooting(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    .line 323
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b8

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_state"

    const-string v5, "floating_shutter_ui_hide"

    invoke-virtual {v0, v4, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v3, "floating_shutter_ui_show_by_swipe"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    return v1

    .line 328
    :cond_59
    const-string v5, "floating_shutter_ui_show_by_auto"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v5, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_7f

    :cond_7e
    return v1

    .line 331
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1, p2, v2, v2}, Lcom/transsion/camera/app/common/IAppUI;->showFloatingShutterUI(IIZZ)V

    return v2

    .line 337
    :cond_9c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1, p2, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showFloatingShutterUI(IIZZ)V

    :cond_b8
    return v2
.end method

.method public onShutterCancel()V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterListeners(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 300
    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 301
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz v0, :cond_19

    .line 304
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterCancel()V

    goto :goto_19

    :cond_31
    return-void
.end method

.method public onShutterClick(II)V
    .registers 6

    .line 388
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction onShutterClick isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInFragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", curPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsIntentPhotoModeSaving:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmIsIntentPhotoModeSaving(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmIsIntentPhotoModeSaving(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto/16 :goto_177

    .line 392
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_178

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_178

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Landroid/content/Context;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const/16 v0, 0xa

    if-ne p1, v0, :cond_178

    :cond_7c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInFragment(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_86

    goto/16 :goto_178

    .line 397
    :cond_86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->getModeManager()Lcom/transsion/camera/app/common/mode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 398
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isLivePhotoMediaRecorderPrepared()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 399
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onShutterClick] interrupted, live photo media recorder is preparing."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_a4
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isShutterEnable()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 403
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onShutterClick] interrupted, tzservice/isphidl is connecting."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_b8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInSwitchingDevice(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 407
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onShutterClick] mInSwitchingDevice:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInSwitchingDevice(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_df
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDownStartVideoRecord:Z

    if-eqz v0, :cond_123

    const/4 v0, 0x1

    if-ne p1, v0, :cond_123

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v0

    .line 415
    const-string v1, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    goto :goto_177

    .line 419
    :cond_123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    goto :goto_177

    .line 422
    :cond_132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterHook(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    if-eqz v0, :cond_143

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterHook(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterClick(II)Z

    .line 425
    :cond_143
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterListeners(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 427
    :cond_151
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 428
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    .line 431
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    invoke-static {v0}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityByKey(Ljava/lang/String;)I

    move-result v0

    if-le v0, p1, :cond_151

    if-eqz v1, :cond_151

    .line 434
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterClick(II)Z

    move-result v0

    if-eqz v0, :cond_151

    :cond_177
    :goto_177
    return-void

    .line 394
    :cond_178
    :goto_178
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onShutterClick] interrupted, hasVisibleFragment:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->hasVisibleFragment(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEnable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onShutterDown()V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInSwitchingDevice(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 371
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onShutterDown] mInSwitchingDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInSwitchingDevice(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 374
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterListeners(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 377
    :cond_40
    :goto_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 378
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz v0, :cond_40

    .line 381
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterDown()V

    goto :goto_40

    :cond_58
    return-void
.end method

.method public onShutterLongClick(II)V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmIsIntentPhotoModeSaving(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_a8

    .line 445
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3c

    .line 446
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAction onShutterLongClick return, isEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", curPriority:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 449
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInSwitchingDevice(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 450
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onShutterLongClick] mInSwitchingDevice:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmInSwitchingDevice(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterHook(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterHook(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterLongClick(II)Z

    .line 456
    :cond_74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterListeners(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 458
    :cond_82
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 459
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    .line 462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    invoke-static {v0}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityByKey(Ljava/lang/String;)I

    move-result v0

    if-le v0, p1, :cond_82

    if-eqz v1, :cond_82

    .line 465
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterLongClick(II)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_a8
    :goto_a8
    return-void
.end method

.method public onShutterUp(I)V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fgetmShutterListeners(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 284
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 285
    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 286
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz v0, :cond_1c

    .line 290
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterUp(I)V

    goto :goto_1c

    :cond_34
    return-void
.end method

.method public onSwipeTouchDown()V
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fputmSwipeTouchUp(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Z)V

    return-void
.end method

.method public onSwipeTouchUp()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fputmFloatingShutterHideEnd(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Z)V

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->-$$Nest$fputmSwipeTouchUp(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Z)V

    return-void
.end method
