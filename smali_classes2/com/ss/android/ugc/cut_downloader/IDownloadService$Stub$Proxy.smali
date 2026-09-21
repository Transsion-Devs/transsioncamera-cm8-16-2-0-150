.class Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_downloader/IDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public cancel(Ljava/lang/String;)V
    .registers 6

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    :try_start_4
    const-string v1, "com.ss.android.ugc.cut_downloader.IDownloadService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 146
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 147
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->cancel(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public download(Ljava/lang/String;)V
    .registers 6

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    :try_start_4
    const-string v1, "com.ss.android.ugc.cut_downloader.IDownloadService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 130
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 131
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->download(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 105
    const-string p0, "com.ss.android.ugc.cut_downloader.IDownloadService"

    return-object p0
.end method

.method public registerCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
    .registers 5

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    :try_start_4
    const-string v1, "com.ss.android.ugc.cut_downloader.IDownloadService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 112
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_35

    :cond_13
    move-object v2, v1

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 113
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 114
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 115
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->registerCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_11

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
