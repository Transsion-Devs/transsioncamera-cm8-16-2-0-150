.class Lcom/transsion/camera/app/common/storage/StorageSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentValue:Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mSupported:Ljava/util/List;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDefaultValue(Lcom/transsion/camera/app/common/storage/StorageSetting;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StorageSetting"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;-><init>(Lcom/transsion/camera/app/common/storage/StorageSetting;Lcom/transsion/camera/app/common/storage/StorageSetting-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 37
    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p3, :cond_1b

    goto :goto_1f

    .line 38
    :cond_1b
    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    :goto_1f
    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method


# virtual methods
.method disableExternalStorage()V
    .registers 3

    .line 107
    sget-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "disableExternalStorage"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    const-string v1, "external"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "internal"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v0, :cond_26

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method enableExternalStorage()V
    .registers 3

    .line 97
    sget-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enableExternalStorage"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    const-string v1, "external"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v0, :cond_21

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentStreamIds()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModeKey()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondSettingValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingValue()Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    return-object p0
.end method

.method public init(Ljava/util/List;Ljava/lang/String;)V
    .registers 6

    .line 42
    sget-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] supportValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDefaultValue:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->reload()V

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_30

    .line 47
    const-string p2, "key_restore_settings"

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_30
    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraStable(Z)V
    .registers 2

    return-void
.end method

.method public notifyGroupCaptureIconHide()V
    .registers 1

    return-void
.end method

.method public notifyGroupCaptureIconShow()V
    .registers 1

    return-void
.end method

.method public onExtraValueChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 72
    sget-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v0, :cond_3f

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public reload()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    const-string v2, "internal"

    .line 59
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reload] valueInStore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 2

    return-void
.end method

.method public syncValueToDataStore()V
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    const-string v2, "internal"

    .line 202
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[syncValueToDataStore] valueInStore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_44
    return-void
.end method

.method public turnOnSwitch(Z)V
    .registers 2

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_b

    .line 53
    const-string v1, "key_restore_settings"

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_b
    return-void
.end method
