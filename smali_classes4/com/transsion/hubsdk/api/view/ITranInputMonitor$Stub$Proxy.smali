.class Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/view/ITranInputMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranInputMonitor;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public dispose()V
    .registers 5

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 101
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 103
    invoke-static {}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 104
    invoke-static {}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;->dispose()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 110
    :goto_24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_31

    .line 107
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2b

    goto :goto_24

    .line 110
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 94
    const-string p0, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    return-object p0
.end method

.method public pilferPointers()V
    .registers 5

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 119
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 121
    invoke-static {}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 122
    invoke-static {}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;->pilferPointers()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 128
    :goto_24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_31

    .line 125
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2b

    goto :goto_24

    .line 128
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    throw p0
.end method
