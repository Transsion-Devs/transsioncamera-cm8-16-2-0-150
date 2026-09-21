.class Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;->mCachedVersion:I

    .line 157
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 160
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
