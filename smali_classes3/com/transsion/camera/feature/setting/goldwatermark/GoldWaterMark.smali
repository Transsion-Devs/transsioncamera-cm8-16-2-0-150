.class public Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIArtMuseumMode:Z

.field private mAIGCMode:Z

.field private mContext:Landroid/content/Context;

.field private mGoldSupport:Z

.field private mGoldWaterMarkSupport:Z

.field private mGoldWatermarkBgValue:Ljava/lang/String;

.field private mGoldWatermarkConfig:Z

.field private mGoldWatermarkDefaultValueOn:Z

.field private mGoldWatermarkType:Ljava/lang/String;

.field private mIsLongExposureMode:Z

.field private mIsModeSupport:Z

.field private final mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field mLocationCallback:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mLocationPlainText:Ljava/lang/String;

.field private mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

.field private mProWatermarkConfig:Z

.field private mSelectWatermark:Ljava/lang/String;

.field private mTreasureBoxSupport:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoldWatermarkBgValue(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoldWatermarkType(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationPlainText(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationPlainText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mTreasureBoxSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmGoldWatermarkBgValue(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLocationPlainText(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationPlainText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGoldWaterMarkType(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->updateGoldWaterMarkType()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoldWaterMark"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mIsModeSupport:Z

    .line 77
    new-instance v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;-><init>(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 402
    new-instance v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;-><init>(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationCallback:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private getLocationPlainText()Ljava/lang/String;
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    const-string v2, "4"

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    return-object v1

    .line 420
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationPlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_plain_location_text"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 422
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getLocationPlainText in data store] locationStr = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 425
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationPlainText:Ljava/lang/String;

    return-object p0
.end method

.method private is24HourFormat()Z
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private setGoldWatermarkRealOpened()V
    .registers 5

    .line 118
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldSupport:Z

    const-string v1, "0"

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mIsModeSupport:Z

    if-eqz v0, :cond_40

    .line 119
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGoldWatermarkRealOpened: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_40
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "key_need_merge_gold_watermark"

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    sget-object p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbNeedMergeGoldWatermark: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setLocationManagerStatus(Z)V
    .registers 5

    .line 325
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationManagerStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    if-nez p0, :cond_1b

    return-void

    :cond_1b
    if-eqz p1, :cond_21

    .line 332
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->startRequestLocation()V

    return-void

    .line 334
    :cond_21
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->stopRequestLocation()V

    return-void
.end method

.method private updateGoldWaterMarkType()V
    .registers 9

    .line 128
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkDefaultValueOn:Z

    const-string v1, "off"

    const-string v2, "on"

    if-nez v0, :cond_12

    .line 129
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v3, "updateGoldWaterMarkType: config gold watermark default value set OFF"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_13

    :cond_12
    move-object v0, v2

    .line 132
    :goto_13
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "key_gold_watermark_normal"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "key_gold_watermark_time"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_gold_watermark_location"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "0"

    if-eqz v5, :cond_72

    .line 136
    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mIsLongExposureMode:Z

    const-string v7, "1"

    if-eqz v5, :cond_48

    .line 137
    iput-object v7, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    goto :goto_74

    .line 138
    :cond_48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 139
    const-string v3, "4"

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    goto :goto_74

    .line 140
    :cond_59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 141
    const-string v3, "2"

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    goto :goto_74

    .line 142
    :cond_64
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 143
    const-string v3, "3"

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    goto :goto_74

    .line 145
    :cond_6f
    iput-object v7, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    goto :goto_74

    .line 148
    :cond_72
    iput-object v6, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    .line 150
    :goto_74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    :goto_83
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->setLocationManagerStatus(Z)V

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_95

    goto :goto_97

    :cond_95
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    :goto_97
    invoke-virtual {v0, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGoldWaterMarkValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 8

    .line 365
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWaterMarkSupport:Z

    const/4 v1, 0x0

    const-string v2, "0"

    const-string v3, "off"

    if-eqz v0, :cond_c2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mAIGCMode:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    if-nez v0, :cond_17

    goto/16 :goto_c2

    .line 372
    :cond_17
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mAIArtMuseumMode:Z

    const-string/jumbo v4, "value_gold_watermark_on"

    if-eqz v0, :cond_42

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_gold_watermark_normal"

    .line 374
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 373
    invoke-virtual {v0, v5, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_31

    move-object v3, v4

    :cond_31
    const/4 p0, 0x1

    .line 375
    invoke-virtual {p1, p0, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setGoldWatermarkMode(ZLjava/lang/String;)V

    .line 376
    const-string p0, "1"

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setGoldWatermarkType(Ljava/lang/String;)V

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setProWatermarkStyle(I)V

    return v1

    .line 381
    :cond_42
    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 382
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    move-object v3, v4

    .line 386
    :cond_59
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters] isModeSupport = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->isModeSupport()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pro WatermarkType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getProWatermarkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->isModeSupport()Z

    move-result v0

    invoke-virtual {p1, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setGoldWatermarkMode(ZLjava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getGoldWatermarkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setGoldWatermarkType(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getProWatermarkType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setProWatermarkStyle(I)V

    .line 391
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getLocationPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPlainLocationText(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->is24HourFormat()Z

    move-result p0

    if-eqz p0, :cond_bc

    const/16 p0, 0x18

    goto :goto_be

    :cond_bc
    const/16 p0, 0xc

    :goto_be
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setIs24HourFormat(I)V

    return v1

    .line 366
    :cond_c2
    :goto_c2
    sget-object p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[configParameters] gold watermark is not support!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1, v1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setGoldWatermarkMode(ZLjava/lang/String;)V

    .line 368
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setGoldWatermarkType(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getGoldWatermarkType()Ljava/lang/String;
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 221
    const-string p0, "key_gold_watermark"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProWatermarkType()Ljava/lang/String;
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectWatermark()Ljava/lang/String;
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "2"

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v3, "key_pro_watermark"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mSelectWatermark:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 216
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 7

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mContext:Landroid/content/Context;

    .line 159
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkSupport:Z

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkConfig:Z

    .line 160
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkSupport:Z

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mProWatermarkConfig:Z

    .line 161
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkDefaultValueOn:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_27

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isInTrOrRuMarket()Z

    move-result p3

    if-nez p3, :cond_27

    move p3, v1

    goto :goto_28

    :cond_27
    move p3, v0

    :goto_28
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkDefaultValueOn:Z

    .line 162
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mTreasureBoxSupport:Z

    .line 163
    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkConfig:Z

    if-nez p3, :cond_38

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mProWatermarkConfig:Z

    if-eqz p3, :cond_39

    :cond_38
    move v0, v1

    :cond_39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldSupport:Z

    .line 164
    sget-object p3, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGoldSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGoldWatermarkDefaultValueOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkDefaultValueOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 167
    new-instance p2, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationCallback:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;

    const-string v2, "key_gold_watermark_location"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/location/LocationManager;Ljava/lang/String;Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    const/16 p3, 0x14

    .line 168
    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->setRetry(I)V

    .line 169
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_gold_watermark_normal"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_gold_watermark_time"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 171
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_pro_watermark"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 173
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_pro_watermark_type"

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 174
    new-instance p2, Lcom/transsion/camera/app/common/permission/PermissionManager;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 182
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    move-object v0, p2

    .line 189
    :cond_47
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    const/4 v0, 0x0

    const-string v2, "off"

    if-nez p1, :cond_65

    .line 192
    const-string p1, "initValueAndSupport mLocationPermission = false"

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_gold_watermark_location"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_gold_watermark_normal"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7d

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, p2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    :cond_7d
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v1, "key_pro_watermark_type"

    invoke-virtual {p1, v1, v4, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    if-nez p1, :cond_ad

    .line 203
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkDefaultStyleValue:I

    if-ltz p1, :cond_99

    const/4 p2, 0x2

    if-gt p1, p2, :cond_99

    goto :goto_9a

    :cond_99
    move p1, v0

    .line 205
    :goto_9a
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v3, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    .line 208
    :cond_ad
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_be

    const-string p2, "0"

    goto :goto_c0

    :cond_be
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    :goto_c0
    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGoldWaterMarkValue(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d2

    goto :goto_d4

    :cond_d2
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    :goto_d4
    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGoldWatermarkBgValue(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->updateGoldWaterMarkType()V

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->setGoldWatermarkRealOpened()V

    return-void
.end method

.method public isGoldWatermarkDefaultValueOn()Z
    .registers 1

    .line 339
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkDefaultValueOn:Z

    return p0
.end method

.method public isGoldWatermarkSupport()Z
    .registers 1

    .line 313
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldSupport:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 309
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 436
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 437
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->setLocationManagerStatus(Z)V

    .line 438
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    if-eqz p1, :cond_12

    .line 439
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->removeCallbacksAndMessages()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_14

    .line 441
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 5

    .line 254
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 255
    const-string p2, "key_gold_watermark"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mIsModeSupport:Z

    .line 256
    const-string p2, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mIsLongExposureMode:Z

    .line 257
    const-string p2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mAIGCMode:Z

    .line 258
    const-string p2, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mAIArtMuseumMode:Z

    .line 259
    sget-object p2, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsModeSupport  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mIsModeSupport:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " mode  = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 226
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->setGoldWatermarkRealOpened()V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v1, "off"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "0"

    goto :goto_44

    :cond_42
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkType:Ljava/lang/String;

    :goto_44
    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGoldWaterMarkValue(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_52

    goto :goto_54

    :cond_52
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    :goto_54
    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGoldWatermarkBgValue(Ljava/lang/String;)V

    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 6

    .line 237
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->setGoldWatermarkRealOpened()V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 269
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->setLocationManagerStatus(Z)V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->removeCallbacksAndMessages()V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 7

    .line 294
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_gold_watermark_normal"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_gold_watermark_time"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_gold_watermark_location"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_plain_location_text"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkDefaultStyleValue:I

    if-ltz v0, :cond_43

    const/4 v1, 0x2

    if-gt v0, v1, :cond_43

    goto :goto_44

    :cond_43
    move v0, v4

    .line 301
    :goto_44
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_pro_watermark_type"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWatermarkBgValue:Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->updateGoldWaterMarkType()V

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->setGoldWatermarkRealOpened()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 264
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 349
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isGoldWaterMarkSupport()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 350
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->isGoldWatermarkSupport()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWaterMarkSupport:Z

    .line 351
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mGoldWaterMarkSupport:Z

    const-string v1, "on"

    if-eqz v0, :cond_1f

    .line 354
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->isGoldWatermarkDefaultValueOn()Z

    move-result v0

    const-string v2, "off"

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move-object v1, v2

    .line 359
    :goto_29
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 281
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 282
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_gold_watermark_normal"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_gold_watermark_time"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_gold_watermark_location"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_pro_watermark"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_pro_watermark_type"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->quit()V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
