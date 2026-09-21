.class public Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;,
        Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_BRAND_PICTURE_HEIGHT:F = 984.0f

.field public static final DEFAULT_TEXT_PICTURE_HEIGHT:I = 0xd80

.field private static final EDIT_WATERMARK_LOCATION_THREAD:Ljava/lang/String; = "edit_watermark_location_thread"

.field private static final EDIT_WATERMARK_SHADOW_COLOR:Ljava/lang/String; = "#33000000"

.field private static final EDIT_WATERMARK_WORK_THREAD:Ljava/lang/String; = "edit_watermark_work_thread"

.field public static final FOCUS_UPDATE:I = 0x1

.field public static final MSG_EDIT_WATERMARK_HANDLE:I = 0x65

.field public static final MSG_EDIT_WATERMARK_LOCATION_UPDATE:I = 0xc9

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m4in1Size:I

.field private mAIArtMuseumMode:Z

.field private mBrandHeight:I

.field private mCityInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mEditWaterMarkUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEditWatermarkSupport:Z

.field private mEnableUpdate:Z

.field private mForceCloseWatermark:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideDeviceInfo:Z

.field private mIsModeSupport:Z

.field private mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mLocationHandler:Landroid/os/Handler;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPause:Z

.field private mPictureHeight:I

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSingleLineBrandHeight:I

.field private mTextWaterMarkInfo:Ljava/lang/String;

.field private mWatermarkOn:Z


# direct methods
.method public static synthetic $r8$lambda$HAAuqUqzTrUvvVduBrSM2V9VevA(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->lambda$getCityInfo$0(Lcom/transsion/camera/app/common/location/LocationManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCityInfo(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeType(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPause(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatermarkOn(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mWatermarkOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCityInfo(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForceCloseWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mForceCloseWatermark:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWatermarkOn(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mWatermarkOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoNotUpdateWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->doNotUpdateWatermark()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPictureSize(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEditWaterMarkClose(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWaterMarkClose()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mwriteWaterMarkGuard(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->writeWaterMarkGuard(III)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 92
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditWaterMark"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEnableUpdate:Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    .line 125
    new-instance v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 363
    new-instance v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$2;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 377
    new-instance v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private covertWaterMarkBitmapToNV21(III)[B
    .registers 4

    .line 543
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->createWaterMarkBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 545
    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->getNV21(IILandroid/graphics/Bitmap;)[B

    move-result-object p3

    .line 546
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->intToBytes(I)[B

    move-result-object p1

    .line 547
    invoke-static {p2}, Lcom/transsion/camera/utils/BitmapUtils;->intToBytes(I)[B

    move-result-object p2

    .line 548
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getAlpha(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    .line 549
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->mergeBytes([B[B)[B

    move-result-object p1

    .line 550
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/BitmapUtils;->mergeBytes([B[B)[B

    move-result-object p1

    .line 551
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/BitmapUtils;->mergeBytes([B[B)[B

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private createWaterMarkBitmap(III)Landroid/graphics/Bitmap;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x3

    .line 572
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 557
    iget-object v5, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_edit_watermark_item"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 558
    iget-object v6, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v9, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    const-string v10, "text_water_mark_input_tip"

    invoke-static {v9, v10}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v11

    const-string v12, "key_text_watermark_info"

    invoke-virtual {v6, v12, v9, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mTextWaterMarkInfo:Ljava/lang/String;

    .line 559
    sget-object v6, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createWaterMarkBitmap itemsValue = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_a6

    .line 561
    iget-object v12, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v12}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v12

    if-nez v12, :cond_8e

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8e

    .line 562
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 563
    iget-object v12, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v12}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v5, v13, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    iget-object v7, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v12, "key_edit_watermark_sort"

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v5, v13, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createWaterMarkBitmap, do not have location permission, remove city watermark, removed: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    :cond_8e
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 568
    array-length v6, v5

    move v7, v9

    :goto_94
    if-ge v7, v6, :cond_a6

    aget-char v12, v5, v7

    .line 569
    iget-object v13, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    add-int/lit8 v12, v12, -0x30

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    .line 572
    :cond_a6
    iget-boolean v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHideDeviceInfo:Z

    if-eqz v5, :cond_b7

    iget-object v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 573
    iget-object v5, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 575
    :cond_b7
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 576
    sget-object v5, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createWaterMarkBitmap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", density = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 577
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v11}, Landroid/text/TextPaint;-><init>(I)V

    const/4 v6, -0x1

    .line 578
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v7, p3

    int-to-float v7, v7

    .line 579
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 580
    const-string v12, "sans-serif-medium"

    invoke-static {v12, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 581
    const-string v12, "#33000000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x0

    move-object/from16 v16, v8

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v5, v14, v15, v8, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 582
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 583
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 584
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 585
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 586
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 587
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v14, v15, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 588
    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 589
    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 591
    iget v7, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    iget v8, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mSingleLineBrandHeight:I

    if-le v7, v8, :cond_141

    move v7, v11

    goto :goto_142

    :cond_141
    const/4 v7, 0x0

    .line 592
    :goto_142
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    invoke-virtual {v0, v1, v8}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getBrandInfo(II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 593
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move/from16 p3, v14

    iget v14, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v12, v14

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v6

    div-float v12, v12, p3

    mul-int/lit8 v6, v2, 0x7

    int-to-float v6, v6

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v6, v14

    move/from16 p3, v14

    add-float v14, v6, v12

    .line 597
    :try_start_163
    iget-object v15, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v11

    const/16 v17, 0x0

    :goto_16c
    if-ltz v15, :cond_28e

    .line 598
    iget-object v11, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/high16 v18, 0x41d00000    # 26.0f

    if-ne v11, v3, :cond_224

    if-eqz v7, :cond_189

    .line 600
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    add-float v17, v17, v11

    :cond_189
    move/from16 v11, v17

    goto :goto_18f

    :catch_18c
    move-exception v0

    goto/16 :goto_296

    .line 602
    :goto_18f
    sget-object v3, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "drawBrand: diffLine:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", baseline:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", distance:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", brandInfo.getHeight():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", brandInfo.getWidth():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", brandInfo density:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", canvas: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getDensity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mSingleLineBrandHeight"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mSingleLineBrandHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isBigBrandSize"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-float v2, v1

    div-float v2, v2, v18

    sub-float v3, v6, v11

    .line 608
    invoke-virtual {v9, v8, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v7, :cond_221

    .line 610
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    add-float v17, v11, v2

    :goto_21f
    const/4 v3, 0x1

    goto :goto_27d

    :cond_221
    move/from16 v17, v11

    goto :goto_21f

    :cond_224
    move-object/from16 v19, v4

    .line 613
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_238

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    goto :goto_23e

    :cond_238
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    :goto_23e
    iget-object v4, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getStringFromType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_255

    goto :goto_265

    :cond_255
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getStringFromType(I)Ljava/lang/String;

    move-result-object v2

    :goto_265
    mul-int/lit8 v4, v1, 0xc

    int-to-float v4, v4

    const/high16 v11, 0x41500000    # 13.0f

    div-float/2addr v4, v11

    .line 615
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v5, v4, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 616
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v4, v1

    div-float v4, v4, v18

    sub-float v11, v14, v17

    invoke-virtual {v9, v2, v4, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_27d
    mul-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-float v2, v2, p3

    add-float v17, v17, v2

    add-int/lit8 v15, v15, -0x1

    move/from16 v2, p2

    move v11, v3

    move-object/from16 v4, v19

    const/4 v3, 0x3

    goto/16 :goto_16c

    :cond_28e
    move-object/from16 v19, v4

    .line 620
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_295} :catch_18c

    return-object v19

    .line 624
    :goto_296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v16
.end method

.method private doNotUpdateWatermark()Z
    .registers 3

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_definition"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 782
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->m4in1Size:I

    if-gt v0, v1, :cond_2d

    .line 783
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->needIgnoreFilter()Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method private getPictureSize()Landroid/util/Size;
    .registers 3

    .line 643
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_picture_size"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 646
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_15
    return-object v0
.end method

.method private getStringFromType(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 636
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mTextWaterMarkInfo:Ljava/lang/String;

    return-object p0

    .line 634
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    return-object p0

    .line 632
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getTimeInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEditWaterMarkClose()Z
    .registers 8

    .line 490
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mForceCloseWatermark:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 493
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_time_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 494
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "key_city_watermark"

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 495
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_text_watermark"

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_brand_watermark"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz v0, :cond_51

    if-eqz v2, :cond_51

    if-eqz v3, :cond_51

    if-eqz p0, :cond_51

    return v1

    :cond_51
    const/4 p0, 0x0

    return p0
.end method

.method private isSuperDefinition108MInLowPlatform()Z
    .registers 3

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 821
    const-string v1, "key_super_definition"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 822
    const-string v1, "billion"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 823
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperdefinition108mInLowPlatform:Z

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method private synthetic lambda$getCityInfo$0(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 3

    .line 427
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const/4 p0, 0x0

    .line 430
    const-string v0, "key_edit_watermark"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    const/4 p0, 0x1

    .line 431
    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method

.method private needIgnoreFilter()Z
    .registers 3

    .line 787
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 788
    iget p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->m4in1Size:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/2addr v1, v0

    if-lt p0, v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private scaleBitmapParameter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11

    .line 476
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 477
    iget v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    mul-int/2addr v0, p2

    int-to-float v0, v0

    const/high16 v1, 0x44760000    # 984.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 478
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 480
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleBitmap, src size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dst size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mBrandHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", pictureHeight: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 480
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_86

    .line 484
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_86
    return-object p1
.end method

.method private setLocationManagerStatus(Z)V
    .registers 5

    .line 776
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationManagerStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 777
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p0

    const-string v0, "key_edit_watermark"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method

.method private updateCityInfoFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 3

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/LocationUtil;->getAddress(Landroid/location/Location;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object p0

    .line 451
    :cond_d
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->getLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeWaterMarkGuard(III)V
    .registers 6

    .line 514
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "writeYUVByRandomAccessFile start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->writeYUVByRandomAccessFile(III)V

    .line 516
    const-string/jumbo p0, "writeYUVByRandomAccessFile end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private writeYUVByRandomAccessFile(III)V
    .registers 9

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 523
    const-string v2, "/data/vendor/camera_watermark/watermark.nv21"

    invoke-static {v2}, Lcom/transsion/camera/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 524
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "watermark file don\'t exist return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 527
    :cond_15
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->covertWaterMarkBitmapToNV21(III)[B

    move-result-object p0

    .line 528
    sget-object p1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "writeYUVByRandomAccessFile covertWaterMarkBitmapToNV21 : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_6c

    .line 531
    :try_start_37
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string p2, "rw"

    invoke-direct {p1, v2, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 533
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 534
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4b} :catch_4c
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_37 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    .line 536
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 538
    :goto_50
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "writeYUVByRandomAccessFile: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 852
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWatermarkSupport()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mAIArtMuseumMode:Z

    if-eqz v0, :cond_b

    goto :goto_3b

    .line 856
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 857
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] isModeSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isModeSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isModeSupport()Z

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setEditWatermarkMode(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 853
    :cond_3b
    :goto_3b
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters] edit watermark is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

.method public getBrandInfo(II)Landroid/graphics/Bitmap;
    .registers 7

    .line 456
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getBrandWatermark()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandCustomize:Z

    if-eqz v1, :cond_38

    .line 459
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWMOptionalResNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "watermarkCustomize_editWatermarkSetting:getBrandWatermark = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    const-string v2, "edit_watermark_brand"

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWatermarkCustomizedResId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 464
    :cond_38
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getWatermarkDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 467
    :goto_3c
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrandInfo brandBitmap Density:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 472
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->scaleBitmapParameter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method getBrandWatermark()Ljava/lang/String;
    .registers 2

    .line 808
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 809
    const-string p0, "edit_watermark_brand_special"

    return-object p0

    .line 810
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isSuperDefinition108MInLowPlatform()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 811
    const-string p0, "edit_watermark_brand_108m"

    return-object p0

    .line 813
    :cond_12
    const-string p0, "edit_watermark_brand"

    return-object p0
.end method

.method public getCityInfo(I)Ljava/lang/String;
    .registers 6

    .line 417
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getCityInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    .line 420
    const-string v2, "key_edit_watermark"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 422
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->updateCityInfoFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    if-lez p1, :cond_4c

    .line 424
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    if-nez v2, :cond_4c

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentLocation = null retry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    .line 433
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 p1, p1, -0x1

    .line 434
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getCityInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 436
    :cond_4c
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_5a

    .line 438
    const-string p0, "currentLocation = null lastKnownLocation = null "

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 443
    const-string p0, ""

    return-object p0

    .line 440
    :cond_5a
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->updateCityInfoFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .registers 1

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 290
    const-string p0, "key_edit_watermark"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 2

    .line 360
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0

    :cond_7
    const/4 p0, 0x0

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

    .line 285
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

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .registers 5

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 403
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 404
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm"

    invoke-direct {v2, v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 405
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 406
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

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

.method public getTimeInSecond()Ljava/lang/String;
    .registers 4

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 411
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 412
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 413
    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .registers 1

    .line 398
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getSystemTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 195
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkSupport:Z

    .line 196
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkSupport:Z

    if-nez p2, :cond_16

    if-eqz p3, :cond_14

    goto :goto_16

    :cond_14
    const/4 p2, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p2, 0x1

    .line 197
    :goto_17
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-nez p2, :cond_23

    .line 199
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "init UnSupport "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_23
    sget-object p2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "init"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mContext:Landroid/content/Context;

    .line 206
    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "edit_watermark_work_thread"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 208
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "edit_watermark_location_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    new-instance v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v1, p0, p3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance p3, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;-><init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    .line 212
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_time_watermark"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 213
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 214
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_edit_watermark_update"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 215
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_picture_size_sat"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 216
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_pro_watermark"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 217
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_pro_edit_watermark_state"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 218
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_watermark"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandHeight:I

    iput p3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    .line 220
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mBrandHeight = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mBrandHeight:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkSingleLineBrandHeight:I

    iput p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mSingleLineBrandHeight:I

    .line 222
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldHideDeviceInfo()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHideDeviceInfo:Z

    .line 223
    new-instance p2, Lcom/transsion/camera/app/common/permission/PermissionManager;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

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

    .line 228
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-nez v0, :cond_c

    .line 229
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "initValueAndSupport UnSupport "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_29

    .line 233
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initValueAndSupport mLocationPermission = false"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_city_watermark"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :cond_29
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPictureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 242
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 245
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_7f
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isEditWatermarkSupport()Z
    .registers 1

    .line 792
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 797
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 869
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 870
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->setLocationManagerStatus(Z)V

    .line 871
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    .line 872
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    .line 874
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 5

    .line 323
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 324
    const-string v0, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mAIArtMuseumMode:Z

    .line 325
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-nez v0, :cond_10

    return-void

    .line 328
    :cond_10
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 329
    const-string p2, "key_edit_watermark"

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    .line 330
    sget-object p2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsModeSupport  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

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
    .registers 8

    .line 295
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "off"

    const-string/jumbo v2, "value_edit_watermark_on"

    if-nez v0, :cond_4b

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 297
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 298
    :cond_31
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p1, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 302
    :cond_4b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string/jumbo p1, "valueoff"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setEditWaterMarkBrandValue(Ljava/lang/String;)V

    return-void

    .line 306
    :cond_60
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p1, "key_edit_watermark_item"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setEditWaterMarkBrandValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 347
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 352
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_15
    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->setLocationManagerStatus(Z)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 8

    .line 253
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->postRestrictionAfterInitialized()V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_pro_watermark"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkDefaultValueOn:Z

    const-string v2, "off"

    const-string v3, "on"

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isInTrOrRuMarket()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    move-object v1, v3

    goto :goto_29

    .line 257
    :cond_20
    :goto_20
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v4, "updateGoldWaterMarkType: config gold watermark default value set OFF"

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v2

    .line 260
    :goto_29
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_watermark"

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_44

    const-string v1, "1"

    .line 262
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 263
    :cond_44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkSupport:Z

    if-eqz v0, :cond_4e

    move v0, v4

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mForceCloseWatermark:Z

    .line 264
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[postRestrictionAfterInitialized], mForceCloseWatermark: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mForceCloseWatermark:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_city_watermark"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v2, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->setLocationManagerStatus(Z)V

    .line 267
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mIsModeSupport:Z

    if-eqz v2, :cond_d5

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->doNotUpdateWatermark()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pictureSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getPictureSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " return"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_a5
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWaterMarkClose()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    :cond_b7
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_city_watermark_info"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mCityInfo:Ljava/lang/String;

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    const/16 v0, 0xc9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d5
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 6

    .line 670
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-nez v0, :cond_5

    goto :goto_41

    .line 673
    :cond_5
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 674
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkSupport:Z

    if-eqz v0, :cond_41

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_time_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_brand_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_city_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 679
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_text_watermark"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_41
    :goto_41
    return-void
.end method

.method public resume()V
    .registers 2

    .line 340
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mPause:Z

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEnableUpdate:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 835
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 836
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 837
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->m4in1Size:I

    goto :goto_27

    .line 839
    :cond_25
    iput v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->m4in1Size:I

    .line 841
    :goto_27
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWatermarkSupport()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 842
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    const-string/jumbo v0, "value_edit_watermark_on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_45
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

.method public turnOnSwitch(Z)V
    .registers 2

    .line 802
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEnableUpdate:Z

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 653
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 654
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 655
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mEditWatermarkSupport:Z

    if-eqz v0, :cond_60

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mLocationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_time_watermark"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_picture_size"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_edit_watermark_update"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_picture_size_sat"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_pro_watermark"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_pro_edit_watermark_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_watermark"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_60
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
