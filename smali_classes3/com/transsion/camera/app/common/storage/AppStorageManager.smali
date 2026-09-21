.class public Lcom/transsion/camera/app/common/storage/AppStorageManager;
.super Lcom/transsion/camera/app/common/storage/BaseStorageManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

.field private mIsPermissionRequesting:Z

.field private mIsResumed:Z

.field private mIsSwitchExternalStorageManual:Z

.field private mNeedReCheckSdcardPermission:Z

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

.field private mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# direct methods
.method public static synthetic $r8$lambda$QG6JeLr0wfi88G2vCsw9lubon5w(Lcom/transsion/camera/app/common/storage/AppStorageManager;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->lambda$setCurrentVolume$0(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsResumed(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageSetting(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/StorageSetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPermissionRequesting(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSwitchExternalStorageManual(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckExternalStoragePermission(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkExternalStoragePermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monExternalStoragePermissionGranted(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionGranted(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AppStorageManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V
    .registers 6

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 46
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 53
    new-instance v2, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Lcom/transsion/camera/app/common/storage/AppStorageManager-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    return-void
.end method

.method private checkExternalStoragePermission()V
    .registers 8

    .line 194
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 199
    sget-object v4, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkExternalStoragePermission exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExternalStoragePermission isGranted: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", uri: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_7d

    if-eqz v3, :cond_7d

    .line 202
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionGranted(Landroid/net/Uri;)V

    goto :goto_8d

    .line 204
    :cond_7d
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    if-eqz v1, :cond_85

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->requestExternalStoragePermission()V

    goto :goto_8d

    .line 207
    :cond_85
    const-string v1, "internal"

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    .line 211
    :goto_8d
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    return-void
.end method

.method private synthetic lambda$setCurrentVolume$0(ILjava/lang/String;)V
    .registers 5

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->makeCameraDirectory()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 219
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getCurrentVolume()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    if-eqz p2, :cond_3b

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    return-void

    .line 224
    :cond_17
    sget-object p1, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCameraDirectory fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    const-string p1, "external"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnNoExternalStorage()V

    :cond_3b
    return-void
.end method

.method private onExternalStoragePermissionGranted(Landroid/net/Uri;)V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateDocumentFolder(Landroidx/documentfile/provider/DocumentFile;)V

    .line 289
    const-string p1, "external"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method private requestExternalStoragePermission()V
    .registers 6

    .line 243
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExternalStoragePermission externalStorageVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_1d

    return-void

    .line 248
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 250
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 251
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/app/common/R$string;->select_dcim_folder:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->createOpenDocumentTreeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    new-instance v3, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;

    const/16 v4, 0x3e8

    invoke-direct {v3, p0, v1, v4, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/content/Intent;ILandroid/content/ContentResolver;)V

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IApp$IIntentProxy;->startActivityForResult(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V

    return-void
.end method

.method private saveVolumeToSetting(Ljava/lang/String;)V
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doOnHasExternalStorage()V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    if-nez v0, :cond_5

    return-void

    .line 172
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->enableExternalStorage()V

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getVolumeFromSetting()Ljava/lang/String;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnHasExternalStorage storedVolumeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    const-string v1, "external"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    if-eqz v0, :cond_30

    goto :goto_36

    .line 179
    :cond_30
    const-string v0, "internal"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void

    .line 176
    :cond_36
    :goto_36
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkExternalStoragePermission()V

    return-void
.end method

.method protected doOnNoExternalStorage()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    if-nez v0, :cond_5

    return-void

    .line 188
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->disableExternalStorage()V

    .line 189
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->doOnNoExternalStorage()V

    return-void
.end method

.method public getAllBucketIds()Ljava/util/ArrayList;
    .registers 1

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .registers 1

    .line 132
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p0

    return-object p0
.end method

.method public getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 127
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p0

    return-object p0
.end method

.method public getStorageSetting()Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-object p0
.end method

.method public getStorageSettingKey()Ljava/lang/String;
    .registers 1

    .line 117
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getStorageSettingKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVolumeFromSetting()Ljava/lang/String;
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .registers 7

    .line 67
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 69
    new-instance v0, Lcom/transsion/camera/app/common/storage/StorageSetting;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_storage"

    invoke-direct {v0, v2, p1, v1}, Lcom/transsion/camera/app/common/storage/StorageSetting;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const-string v1, "internal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v3, "external"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v3, v0, v1}, Lcom/transsion/camera/app/common/storage/StorageSetting;->init(Ljava/util/List;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_39

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 79
    :cond_39
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    return-void
.end method

.method protected makeCameraDirectory()Z
    .registers 1

    .line 164
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->makeCameraDirectory()Z

    move-result p0

    return p0
.end method

.method protected onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V
    .registers 2

    .line 306
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method protected onExternalStoragePermissionDenied()V
    .registers 2

    .line 294
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->onExternalStoragePermissionDenied()V

    .line 295
    const-string v0, "internal"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    return-void
.end method

.method protected onExternalStorageUnMounted()V
    .registers 1

    .line 300
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->onExternalStorageUnMounted()V

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->disableExternalStorage()V

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 107
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->pause()V

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->reload()V

    .line 101
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->resume()V

    return-void
.end method

.method protected setCurrentVolume(Ljava/lang/String;I)V
    .registers 4

    .line 216
    new-instance v0, Lcom/transsion/camera/app/common/storage/AppStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;ILjava/lang/String;)V

    invoke-super {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->setCurrentVolume(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    return-void
.end method

.method public start()V
    .registers 1

    .line 95
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 112
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->stop()V

    return-void
.end method

.method public supportExternalStorage()Z
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->getSupport()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    .line 142
    sget-object p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[hasExternalStorage] is true"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 145
    :cond_17
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hasExternalStorage] is false"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->supportExternalStorage()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 84
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInit mIsPermissionRequesting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_24

    .line 86
    const-string v1, "key_storage"

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 88
    :cond_24
    invoke-super {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->unInit()V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->unInit()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-void
.end method
