.class public Lcom/transsion/camera/app/common/location/LocationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentLocation:Landroid/location/Location;

.field private mKeys:Ljava/util/List;

.field private mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

.field mLocationUpdateListener:Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$tshPTskSBrzgwYSCfadf0nU1y0A(Lcom/transsion/camera/app/common/location/LocationManager;Landroid/location/Location;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/location/LocationManager;->lambda$new$0(Landroid/location/Location;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LocationManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/location/LocationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/location/LocationManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationUpdateListener:Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationProvider;

    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationUpdateListener:Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/common/location/LocationProvider;-><init>(Landroid/app/Activity;Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/location/Location;)V
    .registers 5

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mCurrentLocation:Landroid/location/Location;

    .line 72
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged: mKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearAllLocationRequests(Ljava/lang/String;)V
    .registers 5

    .line 84
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllLocationRequests reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " keys = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationManager;->stopReceivingLocation()V

    return-void
.end method

.method public getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 5

    .line 57
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mCurrentLocation:Landroid/location/Location;

    return-object p0

    .line 61
    :cond_21
    const-string p0, "Location not received yet or this key is switched off. "

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public recordLocation(ZLjava/lang/String;)V
    .registers 6

    .line 37
    sget-object v0, Lcom/transsion/camera/app/common/location/LocationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keys = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_49

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationManager;->startReceivingLocation()V

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 44
    :cond_49
    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/location/LocationManager;->stopReceivingLocation()V

    :cond_59
    return-void
.end method

.method public startReceivingLocation()V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/location/LocationProvider;->startLocationUpdate(Z)V

    return-void
.end method

.method public stopReceivingLocation()V
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager;->mLocationProvider:Lcom/transsion/camera/app/common/location/LocationProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/location/LocationProvider;->startLocationUpdate(Z)V

    return-void
.end method
