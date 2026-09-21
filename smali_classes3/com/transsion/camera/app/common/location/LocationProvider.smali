.class public Lcom/transsion/camera/app/common/location/LocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;,
        Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mLocationUpdateListener:Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;

.field private mRecordLocation:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLocationUpdateListener(Lcom/transsion/camera/app/common/location/LocationProvider;)Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationUpdateListener:Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LocationProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    const-string v1, "gps"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;-><init>(Lcom/transsion/camera/app/common/location/LocationProvider;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;-><init>(Lcom/transsion/camera/app/common/location/LocationProvider;Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 51
    iput-object p2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationUpdateListener:Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;

    return-void
.end method

.method private startReceivingLocationUpdates()V
    .registers 11

    .line 95
    const-string v1, "fail to request location update, ignore"

    const-string v2, "provider does not exist "

    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "startReceivingLocationUpdates ++++"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1b

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "location"

    .line 99
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 101
    :cond_1b
    iget-object v3, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v3, :cond_8c

    const/4 v0, 0x1

    .line 103
    :try_start_20
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    .line 104
    const-string v4, "network"

    iget-object v5, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    aget-object v8, v5, v0

    const-wide/16 v5, 0x1388

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2e} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_2e} :catch_2f

    goto :goto_51

    :catch_2f
    move-exception v0

    goto :goto_33

    :catch_31
    move-exception v0

    goto :goto_4c

    .line 110
    :goto_33
    sget-object v3, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_51

    .line 108
    :goto_4c
    sget-object v3, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v3, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :goto_51
    :try_start_51
    iget-object v4, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    const/4 v0, 0x0

    aget-object v9, p0, v0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_60
    .catch Ljava/lang/SecurityException; {:try_start_51 .. :try_end_60} :catch_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_60} :catch_61

    goto :goto_85

    :catch_61
    move-exception v0

    move-object p0, v0

    goto :goto_67

    :catch_64
    move-exception v0

    move-object p0, v0

    goto :goto_80

    .line 120
    :goto_67
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_85

    .line 118
    :goto_80
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :goto_85
    sget-object p0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startReceivingLocationUpdates----"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_8c
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .registers 8

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2e

    .line 128
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopReceivingLocationUpdates++++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationListeners:[Lcom/transsion/camera/app/common/location/LocationProvider$LocationListener;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_27

    aget-object v4, v0, v3

    .line 131
    :try_start_14
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    .line 132
    iget-object v5, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v4

    .line 134
    sget-object v5, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, "fail to remove location listners, ignore"

    invoke-static {v5, v6, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 137
    :cond_27
    sget-object p0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopReceivingLocationUpdates----"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public getLastKnownLocation()Landroid/location/Location;
    .registers 11

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 59
    :cond_6
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastKnownLocation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mRecordLocation:Z

    if-nez v0, :cond_23

    return-object v1

    .line 65
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 66
    const-string v2, "gps"

    const-string v3, "network"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    .line 69
    :goto_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8c

    .line 70
    iget-object v5, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_89

    .line 72
    sget-object v6, Lcom/transsion/camera/app/common/location/LocationProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLastKnownLocation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_89

    .line 75
    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    move-wide v2, v1

    move-object v1, v5

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_8c
    return-object v1
.end method

.method public startLocationUpdate(Z)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/location/LocationProvider;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_f

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationProvider;->startReceivingLocationUpdates()V

    return-void

    .line 90
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/app/common/location/LocationProvider;->stopReceivingLocationUpdates()V

    return-void
.end method
