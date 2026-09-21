.class public Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

.field private final mUseGlobalStore:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Z)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    .line 25
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 26
    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mUseGlobalStore:Z

    .line 27
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 28
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V

    return-void
.end method

.method private getStoreScope()Ljava/lang/String;
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mUseGlobalStore:Z

    if-eqz v0, :cond_b

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public restoreTempDisplay()V
    .registers 7

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_template_index"

    const-string v3, "0"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "48"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v5, "key_template_offset"

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_template_position"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "-1"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v5, "key_vlog_temp_detail_tag"

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_indicator_index"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public restoreToDefault()V
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_template_index"

    const-string v3, "0"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "48"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v5, "key_template_offset"

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_template_position"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v1, "true"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v5, "key_video_guide_volume"

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "-1"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v5, "key_vlog_temp_detail_tag"

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_indicator_index"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
