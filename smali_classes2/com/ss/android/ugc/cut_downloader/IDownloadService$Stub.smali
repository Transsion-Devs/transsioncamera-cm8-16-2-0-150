.class public abstract Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_downloader/IDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/IDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ss.android.ugc.cut_downloader.IDownloadService"

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_download:I = 0x2

.field static final TRANSACTION_registerCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.ss.android.ugc.cut_downloader.IDownloadService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_downloader/IDownloadService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "com.ss.android.ugc.cut_downloader.IDownloadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadService;
    .registers 1

    .line 174
    sget-object v0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ss/android/ugc/cut_downloader/IDownloadService;)Z
    .registers 2

    .line 164
    sget-object v0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 168
    sput-object p0, Lcom/ss/android/ugc/cut_downloader/IDownloadService$Stub$Proxy;->sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 165
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 55
    const-string v0, "com.ss.android.ugc.cut_downloader.IDownloadService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_24

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 59
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 80
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->cancel(Ljava/lang/String;)V

    return v1

    .line 72
    :cond_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->download(Ljava/lang/String;)V

    return v1

    .line 64
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadService;->registerCallback(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)V

    return v1
.end method
