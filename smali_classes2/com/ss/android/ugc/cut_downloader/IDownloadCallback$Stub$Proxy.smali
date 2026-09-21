.class Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 122
    const-string p0, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    return-object p0
.end method

.method public onCancel(Ljava/lang/String;)V
    .registers 6

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    :try_start_4
    const-string v1, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 165
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 166
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onCancel(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 171
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

.method public onError(Ljava/lang/String;I)V
    .registers 7

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 145
    :try_start_4
    const-string v1, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 149
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 150
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2b

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onProgress(Ljava/lang/String;I)V
    .registers 7

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 178
    :try_start_4
    const-string v1, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 182
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 183
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onProgress(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2b

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    :try_start_4
    const-string v1, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 132
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 133
    invoke-static {}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    .line 138
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

    throw p0
.end method
