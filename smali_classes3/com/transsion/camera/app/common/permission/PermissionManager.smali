.class public Lcom/transsion/camera/app/common/permission/PermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCameraLocationPermissionRequesting:Z


# instance fields
.field private mARDrawlinePermissionList:Ljava/util/List;

.field private final mActivity:Landroid/app/Activity;

.field private mAllPermissionList:Ljava/util/List;

.field private mDenyARDrawlinePermissionList:Ljava/util/List;

.field private mDenyLocationPermissionList:Ljava/util/List;

.field private mDenyPermissionList:Ljava/util/List;

.field private mExternalStoragePermissionGranted:Z

.field private mLaunchPermissionList:Ljava/util/List;

.field private mLocationPermissionList:Ljava/util/List;

.field private final mTargetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PermissionManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->sCameraLocationPermissionRequesting:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mExternalStoragePermissionGranted:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mARDrawlinePermissionList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyARDrawlinePermissionList:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mTargetSdkVersion:I

    .line 66
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PermissionManager mTargetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->initCameraAllPermissionList()V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->initCameraLaunchPermissionList()V

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->initCameraLocationPermissionList()V

    return-void
.end method

.method private checkExternalStorageManager(Ljava/util/List;)V
    .registers 3

    .line 366
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->externalStorageManagerPermissionGranted()Z

    move-result p0

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-eqz p0, :cond_c

    .line 367
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 368
    :cond_c
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    .line 369
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public static clearCameraLocationPermissionRequesting()V
    .registers 1

    const/4 v0, 0x0

    .line 214
    sput-boolean v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->sCameraLocationPermissionRequesting:Z

    return-void
.end method

.method private externalStorageManagerPermissionGranted()Z
    .registers 4

    .line 280
    const-string v0, "externalStorageManagerPermissionGranted"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageManager(Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mExternalStoragePermissionGranted:Z

    .line 282
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[externalStorageManagerPermissionGranted] mExternalStoragePermissionGranted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mExternalStoragePermissionGranted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 284
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mExternalStoragePermissionGranted:Z

    return p0
.end method

.method private getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;
    .registers 6

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    return-object p1

    .line 340
    :cond_7
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getNeedCheckPermissionList()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    iget-object v3, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_17

    .line 344
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 347
    :cond_2f
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 348
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkExternalStorageManager(Ljava/util/List;)V

    .line 350
    :cond_3a
    sget-object p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNeedCheckPermissionList(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private initCameraAllPermissionList()V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCameraLaunchPermissionList()V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCameraLocationPermissionList()V
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isCameraLocationPermissionRequesting()Z
    .registers 1

    .line 207
    sget-boolean v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->sCameraLocationPermissionRequesting:Z

    return v0
.end method


# virtual methods
.method public checkCameraLaunchPermissions()Z
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 98
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraLaunchPermissions(), need check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public checkCameraLocationPermissions()Z
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 112
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraLocationPermissions(), need check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public getCameraLaunchPermissionRequestCode()I
    .registers 1

    const/16 p0, 0x64

    return p0
.end method

.method public getCameraLocationPermissionRequestCode()I
    .registers 1

    const/16 p0, 0x65

    return p0
.end method

.method public getDenyLocationPermissions()Ljava/util/List;
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 376
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 377
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 380
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    return-object p0
.end method

.method public getDenyPermissions()Ljava/util/List;
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 361
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkExternalStorageManager(Ljava/util/List;)V

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    return-object p0
.end method

.method public isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z
    .registers 12

    .line 259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 264
    :goto_1f
    array-length v7, p1

    if-ge v2, v7, :cond_30

    .line 265
    aget-object v7, p1, v2

    aget v8, p2, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 267
    :cond_30
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->externalStorageManagerPermissionGranted()Z

    move-result p0

    .line 268
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_68

    .line 270
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_68

    .line 272
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_68

    .line 274
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_68

    if-eqz p0, :cond_68

    const/4 p0, 0x1

    return p0

    :cond_68
    return v1
.end method

.method public requestCameraLaunchPermissions()Z
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2d

    const/4 v1, 0x0

    .line 157
    :try_start_d
    sget-object v2, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "requestCameraLaunchPermissions(), user check"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x64

    .line 158
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_27} :catch_28

    return v1

    :catch_28
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    .line 167
    :cond_2d
    sget-object p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "requestCameraLaunchPermissions(), all on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public requestCameraLocationPermissions()Z
    .registers 6

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2e

    .line 184
    :try_start_e
    sget-object v1, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "requestCameraLocationPermissions(), user check"

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    sput-boolean v2, Lcom/transsion/camera/app/common/permission/PermissionManager;->sCameraLocationPermissionRequesting:Z

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x65

    .line 186
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_2a} :catch_2b

    return v3

    .line 191
    :catch_2b
    sput-boolean v3, Lcom/transsion/camera/app/common/permission/PermissionManager;->sCameraLocationPermissionRequesting:Z

    return v3

    .line 195
    :cond_2e
    sput-boolean v3, Lcom/transsion/camera/app/common/permission/PermissionManager;->sCameraLocationPermissionRequesting:Z

    .line 196
    sget-object p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "requestCameraLocationPermissions(), all on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method
