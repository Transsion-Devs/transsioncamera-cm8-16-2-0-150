.class public abstract Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ss.android.ugc.cut_downloader.IDownloadCallback"

.field static final TRANSACTION_onCancel:I = 0x3

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x4

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    instance-of v1, v0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;
    .registers 1

    .line 211
    sget-object v0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;)Z
    .registers 2

    .line 201
    sget-object v0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 205
    sput-object p0, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 202
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

    .line 58
    const-string v0, "com.ss.android.ugc.cut_downloader.IDownloadCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_45

    const/4 v2, 0x2

    if-eq p1, v2, :cond_36

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_18

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 62
    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 95
    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 100
    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onProgress(Ljava/lang/String;I)V

    return v1

    .line 87
    :cond_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onCancel(Ljava/lang/String;)V

    return v1

    .line 77
    :cond_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 82
    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onError(Ljava/lang/String;I)V

    return v1

    .line 67
    :cond_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_downloader/IDownloadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
