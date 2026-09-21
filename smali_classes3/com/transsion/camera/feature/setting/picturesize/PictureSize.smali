.class public Lcom/transsion/camera/feature/setting/picturesize/PictureSize;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBillionPixelSupport:Z

.field private mCameraIds:[Ljava/lang/String;

.field private mHighDefinitionModeSupport:Z

.field private mISRestoring:Z

.field private mIsDistortionNeedShow:Z

.field private mIsForce4_3:Z

.field private mIsSTBlurMode:Z

.field private mIsSupportFullSize:Z

.field private mIsSupportSuperDefinition:Z

.field private mIsSupport_16_9:Z

.field private mIsTimelapseForce16_9:Z

.field private mIsUltraHD:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmISRestoring(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mISRestoring:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PictureSize"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSTBlurMode:Z

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mBillionPixelSupport:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mHighDefinitionModeSupport:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportFullSize:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_16_9:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsUltraHD:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mISRestoring:Z

    .line 387
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 415
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private handlerRestriction(ZLjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_38

    .line 348
    const-string p1, "4:3"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_27

    const-string p1, "1:1"

    .line 349
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "16:9"

    .line 350
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_27

    .line 353
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string p2, "head_value_full_screen"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_31

    .line 351
    :cond_27
    :goto_27
    invoke-static {}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string p2, "head_value_not_full_screen"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    :goto_31
    if-eqz p1, :cond_38

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_38
    return-void
.end method

.method private isWideCameraOn()Z
    .registers 3

    .line 362
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "wide_camera"

    .line 364
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method private setValueInStore(Ljava/util/List;Ljava/lang/String;)V
    .registers 14
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

    .line 133
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 134
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getDualCamCalibrationSize()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x0

    .line 138
    :cond_1d
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    if-eqz v2, :cond_ab

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    invoke-static {v5}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v7, v9

    const-wide v9, 0x3ffc71c720000000L    # 1.7777777910232544

    sub-double/2addr v7, v9

    .line 143
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v3

    if-gtz v6, :cond_2f

    .line 144
    sget-object v6, Lcom/transsion/camera/utils/CameraConstant;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_5c
    if-ge v8, v7, :cond_2f

    aget-object v9, v6, v8

    .line 145
    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 146
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    .line 152
    :cond_6c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x1

    .line 154
    :goto_79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a7

    .line 155
    const-string/jumbo v6, "x"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 157
    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v7, v6, :cond_a4

    .line 158
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 162
    :cond_a7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_b7

    .line 165
    :cond_ab
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxSensorSize()Landroid/util/Size;

    move-result-object v2

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_16_9:Z

    invoke-static {p1, v0, v2, v5}, Lcom/transsion/camera/utils/PictureSizeHelper;->filterValuesOnShown(Ljava/util/List;Ljava/lang/String;Landroid/util/Size;Z)Ljava/util/List;

    move-result-object v0

    .line 167
    :goto_b7
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    if-eqz p1, :cond_f2

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c4
    :goto_c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    invoke-static {v2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v5

    .line 171
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    const-wide v8, 0x3ff5555560000000L    # 1.3333333730697632

    sub-double/2addr v6, v8

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v3

    if-gtz v5, :cond_c4

    .line 173
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    :cond_f1
    move-object v0, p1

    .line 178
    :cond_f2
    sget-object p1, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setValueInStore], filterValuesOnShown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", valueInStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14b

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result v2

    if-eqz v2, :cond_12b

    const-string v2, "1:1"

    goto :goto_12d

    :cond_12b
    const-string v2, "4:3"

    .line 185
    :goto_12d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_131
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    invoke-static {v4}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    move-object p1, v4

    .line 191
    :cond_148
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 194
    :cond_14b
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz p1, :cond_186

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mCameraIds:[Ljava/lang/String;

    if-eqz p1, :cond_186

    .line 196
    sget-object p1, Lcom/transsion/camera/utils/CameraConstant;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    array-length v2, p1

    move v3, v1

    :goto_157
    if-ge v3, v2, :cond_165

    aget-object v4, p1, v3

    .line 197
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_162

    goto :goto_16c

    :cond_162
    add-int/lit8 v3, v3, 0x1

    goto :goto_157

    .line 203
    :cond_165
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    .line 205
    :goto_16c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mCameraIds:[Ljava/lang/String;

    .line 206
    array-length v0, p1

    move v2, v1

    :goto_170
    if-ge v2, v0, :cond_186

    aget-object v3, p1, v2

    .line 207
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_170

    .line 211
    :cond_186
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    .line 275
    const-string p0, "key_picture_size"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    if-nez v0, :cond_f

    .line 281
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    .line 283
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getRatioInStore()Ljava/lang/String;
    .registers 4

    .line 404
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsForce4_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsTimelapseForce16_9 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    const-string v1, "4:3"

    if-eqz v0, :cond_29

    return-object v1

    .line 407
    :cond_29
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz v0, :cond_30

    .line 408
    const-string p0, "16:9"

    return-object p0

    .line 410
    :cond_30
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v1, "1:1"

    .line 411
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_picture_ratio"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 270
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSuperDefinitionValueInDataStore()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_super_definition"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

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

    .line 342
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
    .registers 4

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsDistortionNeedShow:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mBillionPixelSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mBillionPixelSupport:Z

    .line 66
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mHighDefinitionModeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mHighDefinitionModeSupport:Z

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportFullSize:Z

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupport_16_9:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_16_9:Z

    .line 69
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mCameraIds:[Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 10
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

    .line 81
    sget-object p2, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onValueInitialized], supportedPictureSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getRatioInStore()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratioInStore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    const-string v2, "16:9"

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    :goto_35
    move-object v0, v2

    goto :goto_95

    .line 88
    :cond_37
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxSensorSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->isMaxSensorSize16_9(Landroid/util/Size;)Z

    move-result v1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMaxSensorSize16_9 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    const-string v4, "4:3"

    const-string v5, "key_picture_ratio"

    if-nez v1, :cond_70

    iget-boolean v6, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_16_9:Z

    if-nez v6, :cond_70

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v4

    goto :goto_95

    :cond_70
    if-eqz v1, :cond_82

    .line 93
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_35

    .line 96
    :cond_82
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullScreenRatioChanged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 97
    invoke-static {}, Lcom/transsion/camera/utils/PictureSizeHelper;->getFullScreenRatio()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    :cond_95
    :goto_95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratio in store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    .line 106
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "still can\'t find target pictureSize,find from entry values. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_115

    .line 112
    :cond_e1
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_106

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_ef
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ef

    move-object v1, v2

    .line 120
    :cond_106
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->setValueInStore(Ljava/util/List;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p2, "key_tp_picture_ratio"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, v1, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 109
    :cond_115
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "can\'t find a proper preview size."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isBillionPixelSupport()Z
    .registers 1

    .line 373
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mBillionPixelSupport:Z

    return p0
.end method

.method public isCameraFacingBack()Z
    .registers 1

    .line 368
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 369
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDocForce4_3()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsUltraHD:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isHighDefinitionModeSupport()Z
    .registers 1

    .line 377
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mHighDefinitionModeSupport:Z

    return p0
.end method

.method public isRestoring()Z
    .registers 1

    .line 380
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mISRestoring:Z

    return p0
.end method

.method public isSTBlurMode()Z
    .registers 1

    .line 332
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSTBlurMode:Z

    return p0
.end method

.method public isSupportFullSize()Z
    .registers 2

    .line 427
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportFullSize:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSuperDefinition()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportSuperDefinition:Z

    return p0
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 324
    const-string p2, "key_super_definition"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportSuperDefinition:Z

    .line 325
    const-string p2, "key_st_blur"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSTBlurMode:Z

    .line 326
    const-string p2, "com.transsion.camera.feature.mode.ultrahd.UltraHDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsUltraHD:Z

    .line 327
    const-string p2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2a

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsUltraHD:Z

    if-eqz p2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p2, 0x1

    :goto_2b
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    .line 328
    const-string p2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 9

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 289
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->pause()V

    .line 290
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mCameraIds:[Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 295
    array-length v2, v0

    move v3, v1

    :goto_24
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 296
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 299
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_tp_picture_ratio"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_53

    .line 301
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 304
    :goto_53
    invoke-static {p1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    if-nez v2, :cond_62

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isWideCameraOn()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->handlerRestriction(ZLjava/lang/String;)V

    .line 308
    :cond_62
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz v2, :cond_67

    goto :goto_72

    .line 311
    :cond_67
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_picture_ratio"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    :goto_72
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sendSettingChangeRequest()V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_84

    .line 316
    const-string v0, "key_picture_size_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_84
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

    .line 239
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    const-string v1, "key_restore_settings"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 241
    const-string p2, "need to override default value"

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p3

    .line 246
    :cond_3a
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

    .line 250
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[overrideValues] - value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " entryValues: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 337
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 3

    .line 255
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    if-eqz v0, :cond_5

    return-void

    .line 258
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isWideCameraOn()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->handlerRestriction(ZLjava/lang/String;)V

    return-void
.end method

.method public queryEntryValues(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public reConfigSupportList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reConfigSupportList], supportedPictureSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenFlip()Z

    move-result v1

    const-string v2, "4:3"

    if-eqz v1, :cond_21

    const-string v1, "1:1"

    goto :goto_22

    :cond_21
    move-object v1, v2

    .line 220
    :goto_22
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "key_picture_ratio"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    if-eqz v3, :cond_33

    goto :goto_3b

    .line 223
    :cond_33
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz v2, :cond_3a

    .line 224
    const-string v2, "16:9"

    goto :goto_3b

    :cond_3a
    move-object v2, v1

    .line 226
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ratio in store "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    invoke-static {v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    move-object v0, v3

    .line 234
    :cond_71
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->setValueInStore(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 264
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

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
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
