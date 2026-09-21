.class Lcom/transsion/camera/app/common/storage/AppStorageManager$1;
.super Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager;->requestExternalStoragePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/content/Intent;ILandroid/content/ContentResolver;)V
    .registers 5

    .line 254
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iput-object p4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;-><init>(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .registers 6

    .line 257
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExternalStoragePermission onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$fputmIsPermissionRequesting(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_27

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    return-void

    :cond_27
    if-eqz p2, :cond_7b

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_30

    goto :goto_7b

    .line 266
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 268
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iget-object v1, v1, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 270
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    .line 272
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestExternalStoragePermission fail  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_62
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 279
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$fgetmStorageSetting(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/StorageSetting;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/StorageSetting;->syncValueToDataStore()V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->-$$Nest$monExternalStoragePermissionGranted(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/net/Uri;)V

    :cond_7b
    :goto_7b
    return-void
.end method
