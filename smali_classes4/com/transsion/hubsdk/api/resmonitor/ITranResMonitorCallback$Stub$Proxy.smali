.class Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 87
    const-string p0, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    return-object p0
.end method

.method public onEvent(ILjava/lang/String;)V
    .registers 6

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    :try_start_4
    const-string v1, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 97
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 98
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;->onEvent(ILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    throw p0
.end method
