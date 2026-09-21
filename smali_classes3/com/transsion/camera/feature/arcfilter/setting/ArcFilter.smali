.class public Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isFunVideoMode:Z

.field private isSupportMode:Z

.field private mCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterSupportMfnr:Z

.field private mIsPhotoFilterRestrictImageStyle:Z

.field private mIsSupportFullSize:Z

.field private mIsSupportHolidayFilter:Z

.field private mPdList:[Ljava/lang/String;

.field private mUseTranssionFilter:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ArcFilter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isSupportMode:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsSupportFullSize:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsSupportHolidayFilter:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsPhotoFilterRestrictImageStyle:Z

    return-void
.end method

.method private getRelationValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 178
    const-string p0, "0"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "-1"

    .line 179
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    .line 182
    :cond_11
    const-string p0, "-100"

    :cond_13
    :goto_13
    return-object p0
.end method

.method private handleOverrideValue(Ljava/lang/String;)V
    .registers 7

    .line 190
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 262
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 263
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getCaptureFilterIdByPreviewId(Ljava/lang/String;Z)I

    move-result v1

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isModeSupport()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    .line 268
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    if-eqz v0, :cond_2f

    .line 269
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionFilterId(I)V

    goto :goto_32

    .line 271
    :cond_2f
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setArcFilterId(I)V

    .line 274
    :goto_32
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 276
    :cond_4f
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionFilterId(I)V

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    return v3
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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 173
    const-string p0, "key_filter"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method protected getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 288
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterRestriction;->getArcFilterRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 168
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mCheckedList:Ljava/util/List;

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
    .registers 4

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/arcfilter/R$array;->arc_filter_setting_entry_values:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mPdList:[Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFilterSupportMfnr:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mFilterSupportMfnr:Z

    .line 60
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsSupportFullSize:Z

    .line 62
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportHolidayFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsSupportHolidayFilter:Z

    .line 63
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPhotoFilterRestrictImageStyle:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsPhotoFilterRestrictImageStyle:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
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

    if-eqz p1, :cond_97

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto/16 :goto_97

    .line 127
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mPdList:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    iget-boolean v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsSupportHolidayFilter:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->checkFilterSupportList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mCheckedList:Ljava/util/List;

    .line 130
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isFunVideoMode:Z

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    if-nez v0, :cond_3a

    const v0, 0x1000030c

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mCheckedList:Ljava/util/List;

    const v0, 0x1000030b

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 138
    const-string p1, "key_hdr"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    if-nez p1, :cond_70

    .line 140
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "initValueAndSupport hdr on"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    const-string p1, "0"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->handleOverrideValue(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_70
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 145
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initValueAndSupport setValue, value:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void
.end method

.method public isFullSizeMode()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsSupportFullSize:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isSupportMode:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 162
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isSupportMode:Z

    .line 163
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 164
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 152
    const-string p2, "FunVideo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isFunVideoMode:Z

    goto :goto_12

    :cond_f
    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isFunVideoMode:Z

    .line 157
    :goto_12
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isSupportMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 8

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 208
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getRelationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 214
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mFilterSupportMfnr:Z

    const-string v2, "off"

    const-string v3, "off,on"

    const-string v4, "key_setting_smart_denoise"

    const-string v5, "0"

    if-eqz v1, :cond_5c

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "-1"

    .line 215
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 216
    const-string v1, "on"

    invoke-virtual {v0, v4, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 218
    :cond_5c
    invoke-virtual {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_5f
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsPhotoFilterRestrictImageStyle:Z

    if-eqz v1, :cond_70

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 221
    const-string p1, "key_image_style"

    const-string v1, "on,off"

    invoke-virtual {v0, p1, v2, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_70
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    if-eqz p1, :cond_7e

    .line 224
    const-string p1, "key_hdr"

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 225
    const-string p1, "key_auto_color_level"

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 227
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 229
    :cond_83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->sendSettingChangeRequest()V

    :cond_86
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    const-string v0, "-1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_29

    move-object p2, v1

    .line 92
    :cond_29
    const-string v0, "key_hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    if-eqz v0, :cond_5e

    :cond_35
    const-string v0, "key_macro"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "key_fun_video_music_template"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "key_asd_enhance"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "key_image_style"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mIsPhotoFilterRestrictImageStyle:Z

    if-eqz v0, :cond_5a

    goto :goto_5e

    .line 101
    :cond_5a
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_63

    :cond_5e
    :goto_5e
    if-eqz p2, :cond_63

    .line 98
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->handleOverrideValue(Ljava/lang/String;)V

    .line 104
    :cond_63
    :goto_63
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x64

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_78
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getRelationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 71
    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mFilterSupportMfnr:Z

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isModeSupport()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "0"

    .line 72
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "-1"

    .line 73
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 74
    const-string v0, "on"

    const-string v2, "off,on"

    const-string v3, "key_setting_smart_denoise"

    invoke-virtual {v1, v3, v0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_32
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    if-eqz v0, :cond_40

    .line 77
    const-string v0, "key_hdr"

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 78
    const-string v0, "key_auto_color_level"

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 80
    :cond_40
    const-string v0, "key_super_definition"

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_4a
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 246
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->mUseTranssionFilter:Z

    if-eqz v0, :cond_9

    .line 247
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedTranssionFilterIds()Ljava/util/List;

    move-result-object p1

    goto :goto_d

    .line 252
    :cond_9
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedArcFilterIds()Ljava/util/List;

    move-result-object p1

    :goto_d
    const/4 v0, 0x0

    .line 256
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
