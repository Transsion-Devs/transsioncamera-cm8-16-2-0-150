.class Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Lcom/transsion/camera/app/common/storage/AppStorageManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 309
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 312
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStorageSetting changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$fgetmIsResumed(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExternalStorageVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iget-object v1, v1, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$fgetmIsResumed(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result p1

    if-nez p1, :cond_3b

    return-void

    .line 318
    :cond_3b
    const-string p1, "external"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iget-object p2, p1, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz p2, :cond_53

    const/4 p2, 0x1

    .line 319
    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$fputmIsSwitchExternalStorageManual(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$mcheckExternalStoragePermission(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    return-void

    .line 322
    :cond_53
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    const-string p1, "internal"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method
