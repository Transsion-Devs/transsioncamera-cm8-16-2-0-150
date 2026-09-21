.class Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/BaseStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 361
    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmTag(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA Receiver onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_32

    goto/16 :goto_d4

    .line 367
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageManager(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmTranStorageManager(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$misUsbStorage(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Landroid/os/storage/StorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmTag(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "return because action on OTG storage."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_10e

    goto :goto_7b

    :sswitch_5b
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto :goto_7b

    :cond_64
    const/4 v3, 0x2

    goto :goto_7b

    :sswitch_66
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_7b

    :cond_6f
    move v3, v1

    goto :goto_7b

    :sswitch_71
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto :goto_7b

    :cond_7a
    move v3, v2

    :goto_7b
    packed-switch v3, :pswitch_data_11c

    goto :goto_d4

    .line 374
    :pswitch_7f
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateExternalStoragePublicDirectoryPath()V

    if-eqz p2, :cond_a5

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->onExternalStorageUnMounted()V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageVolumeListener(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_d4

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageVolumeListener(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onSDCardUnMounted()V

    return-void

    .line 380
    :cond_a5
    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$smisInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fputmStorageAvailable(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Z)V

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageAvailable(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    return-void

    .line 400
    :pswitch_c3
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageVolumeListener(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_d4

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageVolumeListener(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onMediaScannerFinished()V

    :cond_d4
    :goto_d4
    return-void

    .line 387
    :pswitch_d5
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateExternalStoragePublicDirectoryPath()V

    .line 388
    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$smisInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fputmStorageAvailable(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Z)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageAvailable(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    return-void

    .line 393
    :cond_f6
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageVolumeListener(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_107

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->-$$Nest$fgetmStorageVolumeListener(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onSDCardMounted()V

    .line 396
    :cond_107
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/BaseStorageManager;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V

    return-void

    nop

    :sswitch_data_10e
    .sparse-switch
        -0x5a4113c8 -> :sswitch_71
        -0x4418042d -> :sswitch_66
        -0x254e496f -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_c3
        :pswitch_7f
    .end packed-switch
.end method
