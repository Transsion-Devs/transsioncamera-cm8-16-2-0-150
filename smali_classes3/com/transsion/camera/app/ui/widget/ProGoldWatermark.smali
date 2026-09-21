.class public Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;
.super Lcom/transsion/camera/app/ui/widget/ProWatermarkView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCityInfoStr:Ljava/lang/String;

.field private mGoldWmStyleTabRoot:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsResumed:Z

.field private mIsSelected:Z

.field private mLocationButtonCheck:Z

.field mLocationCallback:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;

.field private mLocationInfoStr:Ljava/lang/String;

.field private mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

.field private mLocationSupport:Z

.field private mOptionLocation:Landroid/view/View;

.field private mOptionLocationCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

.field private mOptionTime:Landroid/view/View;

.field private mOptionTimeCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

.field private mPermissionRequest:Z

.field private mProWMPreview:Lcom/transsion/camera/app/ui/widget/ProWMPreview;

.field private mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

.field private mProWMStyles:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

.field private mProWatermarkItemCoverView:Landroid/view/View;

.field private mProWatermarkSelectedIndex:I

.field private mSavedLocationGson:Landroid/location/Location;

.field private mTimeButtonCheck:Z

.field private final mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCityInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mCityInfoStr:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProWMPreview(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Lcom/transsion/camera/app/ui/widget/ProWMPreview;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreview:Lcom/transsion/camera/app/ui/widget/ProWMPreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProWMPreviewInfo(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSavedLocationGson(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Landroid/location/Location;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mSavedLocationGson:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToastInfo(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLocationInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveLocationGson(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/location/Location;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->saveLocationGson(Landroid/location/Location;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendLocationShowDelay(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->sendLocationShowDelay(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendNotShowLocationInfo(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->sendNotShowLocationInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldShowLocationText(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->shouldShowLocationText()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowOrHideLocationPreviewText(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOrHideLocationPreviewText(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwhileGetCityInfoFromLocation(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/location/Location;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->whileGetCityInfoFromLocation(Landroid/location/Location;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwhileGettingLocation(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->whileGettingLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProGoldWMView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;-><init>(Landroid/view/LayoutInflater;)V

    .line 44
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 512
    new-instance p1, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;-><init>(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationCallback:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;

    return-void
.end method

.method private clickLocationButton()V
    .registers 6

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_72

    .line 381
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    if-nez v0, :cond_14

    .line 382
    const-string v0, "on"

    goto :goto_16

    :cond_14
    const-string v0, "off"

    .line 383
    :goto_16
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_gold_watermark_location"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 384
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[clickLocationButton]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v2

    if-nez v2, :cond_50

    .line 386
    const-string v0, "[clickLocationButton]: request location permission"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLocationPermissions()Z

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mPermissionRequest:Z

    return-void

    .line 391
    :cond_50
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    if-eqz v2, :cond_5f

    .line 392
    const-string v2, "[clickLocationButton]: update location info"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->startRequestLocation()V

    goto :goto_64

    .line 395
    :cond_5f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->stopRequestLocation()V

    .line 397
    :goto_64
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText()V

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_72

    .line 399
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_72
    :goto_72
    return-void
.end method

.method private clickTimeButton()V
    .registers 7

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionTime:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 367
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    .line 368
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickTimeButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    if-eqz v1, :cond_2e

    const-string v1, "on"

    goto :goto_30

    :cond_2e
    const-string v1, "off"

    .line 370
    :goto_30
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "key_gold_watermark_time"

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 371
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v2, :cond_47

    .line 372
    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[clickTimeButton]: check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private currentAIArtMuseumMode()Z
    .registers 2

    .line 303
    const-string v0, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentAIGCMode()Z
    .registers 3

    .line 298
    const-string v0, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1d

    .line 299
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isAIGCFromNegativeScreen()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private currentLongExposureMode()Z
    .registers 2

    .line 307
    const-string v0, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private recordLocation()V
    .registers 2

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mIsResumed:Z

    if-nez v0, :cond_5

    goto :goto_12

    .line 207
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->shouldRecordLocation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    if-eqz p0, :cond_12

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->startRequestLocation()V

    :cond_12
    :goto_12
    return-void
.end method

.method private saveLocationGson(Landroid/location/Location;)V
    .registers 6

    if-eqz p1, :cond_30

    .line 467
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->location2Str(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_pro_watermark_location_gson"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 469
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[saveLocationGson]: save loactionStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", location: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private sendCityShow()V
    .registers 3

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private sendLocationShowDelay(I)V
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendNotShowCityInfo()V
    .registers 2

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private sendNotShowLocationInfo()V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private shouldRecordLocation()Z
    .registers 1

    .line 285
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    return p0
.end method

.method private shouldShowLocationOption()Z
    .registers 7

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 271
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIArtMuseumMode()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentLongExposureMode()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_60

    .line 274
    :cond_19
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationSupport:Z

    if-nez v0, :cond_1e

    return v1

    .line 277
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    .line 278
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->isVoiceInteraction()Z

    move-result v2

    .line 279
    sget-object v3, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldShowLocationOption]: location support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSecureCamera: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVoiceInteraction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_56

    if-eqz v2, :cond_5e

    .line 280
    :cond_56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p0

    if-eqz p0, :cond_60

    :cond_5e
    const/4 p0, 0x1

    return p0

    :cond_60
    :goto_60
    return v1
.end method

.method private shouldShowLocationText()Z
    .registers 4

    .line 311
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[shouldShowLocationText]: mIsSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    if-eqz v0, :cond_3e

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationSupport:Z

    if-eqz p0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowStylesTab()Z
    .registers 2

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIArtMuseumMode()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->stylesCountMoreThanOne()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowTimeAndBrandText()Z
    .registers 4

    .line 338
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[shouldShowTimePreviewText] mTimeButtonCheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    return p0
.end method

.method private shouldShowTimeOption()Z
    .registers 2

    .line 264
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIArtMuseumMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentLongExposureMode()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private showOrHideLocationPreviewText()V
    .registers 4

    .line 343
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHideLocationPreviewText]: mCityInfoStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mCityInfoStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLocationInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mCityInfoStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mCityInfoStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText(Ljava/lang/String;)V

    return-void

    .line 347
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method private showOrHideLocationPreviewText(Ljava/lang/String;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreview:Lcom/transsion/camera/app/ui/widget/ProWMPreview;

    if-eqz v0, :cond_b

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->shouldShowLocationText()Z

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->onLocationClick(ZLjava/lang/String;)V

    :cond_b
    return-void
.end method

.method private showOrHideTimePreviewText()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreview:Lcom/transsion/camera/app/ui/widget/ProWMPreview;

    if-eqz v0, :cond_b

    .line 333
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->shouldShowTimeAndBrandText()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->onTimeClick(Z)V

    :cond_b
    return-void
.end method

.method private updateOptions()V
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mGoldWmStyleTabRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->shouldShowStylesTab()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionTime:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->shouldShowTimeOption()Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocation:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->shouldShowLocationOption()Z

    move-result p0

    if-eqz p0, :cond_28

    move v2, v3

    :cond_28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePreviewTexts()V
    .registers 1

    .line 318
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideTimePreviewText()V

    .line 319
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText()V

    return-void
.end method

.method private updateSwitches()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionTimeCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocationCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateUI()V
    .registers 6

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIArtMuseumMode()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3c

    .line 243
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_gold_watermark_time"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_gold_watermark_location"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    goto :goto_41

    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    .line 241
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    .line 247
    :goto_41
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUI]: mTimeButtonCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLocationButtonCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->updatePreviewTexts()V

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->updateSwitches()V

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->updateOptions()V

    return-void
.end method

.method private whileGetCityInfoFromLocation(Landroid/location/Location;)V
    .registers 6

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/camera/utils/LocationUtil;->getAddress(Landroid/location/Location;Landroid/content/Context;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    .line 476
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[whileGetCityInfoFromLocation]: address: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "null"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_plain_location_text"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 479
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mCityInfoStr:Ljava/lang/String;

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->sendCityShow()V

    return-void

    .line 482
    :cond_44
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->sendNotShowCityInfo()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 485
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update location, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private whileGettingLocation()V
    .registers 6

    .line 411
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocationCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    .line 413
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_gold_watermark_location"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_28

    .line 416
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    :cond_28
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText()V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_47

    .line 421
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 423
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->stopRequestLocation()V

    :cond_4c
    return-void
.end method


# virtual methods
.method getLayoutId()I
    .registers 1

    .line 121
    sget p0, Lcom/transsion/camera/R$layout;->pro_watermark_gold_layout:I

    return p0
.end method

.method getProWatermarkValue()Ljava/lang/String;
    .registers 1

    .line 436
    const-string p0, "2"

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 8

    .line 79
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->init(Landroid/content/Context;)V

    .line 80
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->AREA_GOLD_WATERMARK_SUPPORT:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 81
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPersistOobeName:Ljava/lang/String;

    const-string v1, "NG"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationSupport:Z

    .line 82
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[init]: mLocationSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIGCMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_72

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->currentAIArtMuseumMode()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_72

    .line 88
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_gold_watermark_time"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_gold_watermark_location"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    goto :goto_76

    .line 85
    :cond_72
    :goto_72
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    .line 86
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    .line 92
    :goto_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init]:  + , mTimeButtonCheck: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mTimeButtonCheck:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " + mLocationButtonCheck + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_plain_location_text"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mCityInfoStr:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] saved city info: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mCityInfoStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_pro_watermark_location_gson"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/transsion/camera/utils/LocationUtil;->str2Location(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mSavedLocationGson:Landroid/location/Location;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: savedLocation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mSavedLocationGson:Landroid/location/Location;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mSavedLocationGson:Landroid/location/Location;

    if-eqz v0, :cond_f2

    .line 100
    invoke-static {v0}, Lcom/transsion/camera/utils/LocationUtil;->getAccurateLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    .line 102
    :cond_f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init]: mLocationInfoStr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationInfoStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkDefaultStyleValue:I

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[init]: goldWatermarkDefaultStyleIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz v0, :cond_128

    const/4 p1, 0x2

    if-gt v0, p1, :cond_128

    move v1, v0

    .line 107
    :cond_128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 108
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "key_pro_watermark_type"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    .line 110
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSelectedIndexByValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWatermarkSelectedIndex:I

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->updateSelectedStyle(I)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->updateCurrentMode(Ljava/lang/String;)V

    .line 115
    new-instance p1, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, v4}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/ProGoldWatermark-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance p1, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v2, "key_gold_watermark_fragment"

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationCallback:Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/location/LocationManager;Ljava/lang/String;Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    return-void
.end method

.method initDefaultValue()V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_gold_watermark_normal"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "on"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_26

    .line 171
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 230
    sget v0, Lcom/transsion/camera/R$id;->pro_gold_time:I

    if-ne p1, v0, :cond_c

    .line 231
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->clickTimeButton()V

    goto :goto_13

    .line 232
    :cond_c
    sget v0, Lcom/transsion/camera/R$id;->pro_gold_location:I

    if-ne p1, v0, :cond_13

    .line 233
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->clickLocationButton()V

    .line 235
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->updateUI()V

    return-void
.end method

.method onDestroy()V
    .registers 3

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->whileGettingLocation()V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->stopRequestLocation()V

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationReceiverHelper:Lcom/transsion/camera/app/common/location/LocationReceiveHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationReceiveHelper;->quit()V

    return-void
.end method

.method onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mIsResumed:Z

    return-void
.end method

.method onResume()V
    .registers 6

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mIsResumed:Z

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->updateUI()V

    .line 184
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mPermissionRequest:Z

    if-eqz v1, :cond_43

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_41

    .line 188
    const-string v1, "[onResume]: no location permission"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocationCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    .line 190
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mLocationButtonCheck:Z

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_gold_watermark_location"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3e

    .line 193
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->showOrHideLocationPreviewText()V

    .line 197
    :cond_41
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mPermissionRequest:Z

    .line 199
    :cond_43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->recordLocation()V

    return-void
.end method

.method public onSelected()V
    .registers 3

    .line 429
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSelected: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mIsSelected:Z

    .line 431
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->recordLocation()V

    return-void
.end method

.method public onUnSelected()V
    .registers 2

    .line 405
    invoke-super {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->onUnSelected()V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mIsSelected:Z

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->whileGettingLocation()V

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 325
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    if-eqz p0, :cond_a

    .line 327
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    :cond_a
    return-void
.end method

.method setUpView()V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 129
    :cond_5
    sget v1, Lcom/transsion/camera/R$id;->pro_gold_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionTime:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->pro_gold_time_check_box:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionTimeCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->watermark_unselected_checkbox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionTimeCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setUncheckedBorderColor(I)V

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->pro_gold_location:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocation:Landroid/view/View;

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->pro_gold_location_check_box:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocationCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    .line 135
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setUncheckedBorderColor(I)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->pro_watermark_cover_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWatermarkItemCoverView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->gold_watermark_brand_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mGoldWmStyleTabRoot:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->gold_watermark_preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreview:Lcom/transsion/camera/app/ui/widget/ProWMPreview;

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->init(Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->prowm_style_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMStyles:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->init(Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMStyles:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$1;-><init>(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreview:Lcom/transsion/camera/app/ui/widget/ProWMPreview;

    if-eqz v0, :cond_8e

    .line 156
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWatermarkSelectedIndex:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSelectedStyle(I)V

    .line 161
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionTime:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mOptionLocation:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updateCoverViewState(Z)V
    .registers 4

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWatermarkItemCoverView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_a

    const/16 v1, 0x8

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 444
    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWatermarkItemCoverView:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 290
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->updateCurrentMode(Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mCurrentModeName:Ljava/lang/String;

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    if-eqz p0, :cond_c

    .line 293
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->updateCurrentMode(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method updateWatermarkState(Z)V
    .registers 7

    if-eqz p1, :cond_5

    .line 450
    const-string v0, "on"

    goto :goto_7

    :cond_5
    const-string v0, "off"

    .line 451
    :goto_7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_gold_watermark_normal"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 452
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1e

    .line 453
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    :cond_1e
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->mIsSelected:Z

    if-nez v1, :cond_23

    return-void

    :cond_23
    if-nez p1, :cond_28

    .line 459
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->whileGettingLocation()V

    .line 461
    :cond_28
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWatermarkState]: check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
