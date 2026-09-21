.class public final synthetic Lcom/transsion/camera/app/common/location/LocationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/location/LocationProvider$ILocationUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/location/LocationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/location/LocationManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final onLocationUpdate(Landroid/location/Location;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/location/LocationManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/location/LocationManager;->$r8$lambda$tshPTskSBrzgwYSCfadf0nU1y0A(Lcom/transsion/camera/app/common/location/LocationManager;Landroid/location/Location;)V

    return-void
.end method
