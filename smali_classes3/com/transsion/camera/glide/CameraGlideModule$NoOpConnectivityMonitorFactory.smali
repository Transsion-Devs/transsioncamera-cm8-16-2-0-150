.class final Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/glide/CameraGlideModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpConnectivityMonitorFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/glide/CameraGlideModule-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .registers 3

    .line 35
    new-instance p1, Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory$1;-><init>(Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory;)V

    return-object p1
.end method
