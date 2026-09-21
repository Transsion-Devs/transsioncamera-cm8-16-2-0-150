.class public abstract Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CameraProxyCreator"
.end annotation


# instance fields
.field protected mCameraId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mcloseCamera(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->closeCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenCamera(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->openCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->releaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method protected constructor <init>(Lcom/transsion/camera/adapter/CameraAgent;Ljava/lang/String;)V
    .registers 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method private closeCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 2

    .line 169
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method private openCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 2

    .line 161
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->doOpenCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method private releaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->doReleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method


# virtual methods
.method abstract doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
.end method

.method abstract doOpenCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
.end method

.method abstract doReleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
.end method
