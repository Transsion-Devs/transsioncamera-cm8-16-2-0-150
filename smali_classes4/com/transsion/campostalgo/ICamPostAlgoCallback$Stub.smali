.class public abstract Lcom/transsion/campostalgo/ICamPostAlgoCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/campostalgo/ICamPostAlgoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/campostalgo/ICamPostAlgoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/campostalgo/ICamPostAlgoCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onNextCapture:I = 0x2

.field static final TRANSACTION_processPreview:I = 0x3

.field static final TRANSACTION_processResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.transsion.campostalgo.ICamPostAlgoCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/campostalgo/ICamPostAlgoCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "com.transsion.campostalgo.ICamPostAlgoCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Lcom/transsion/campostalgo/ICamPostAlgoCallback;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/transsion/campostalgo/ICamPostAlgoCallback;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/transsion/campostalgo/ICamPostAlgoCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/campostalgo/ICamPostAlgoCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 55
    const-string v0, "com.transsion.campostalgo.ICamPostAlgoCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_48

    if-eq p1, v1, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 87
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 88
    invoke-interface {p0, p1, p2}, Lcom/transsion/campostalgo/ICamPostAlgoCallback;->processPreview(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    # invokes: Lcom/transsion/campostalgo/ICamPostAlgoCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, p0, v1}, Lcom/transsion/campostalgo/ICamPostAlgoCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_47

    .line 79
    :cond_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 80
    invoke-interface {p0, p1}, Lcom/transsion/campostalgo/ICamPostAlgoCallback;->onNextCapture(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_47

    .line 71
    :cond_39
    sget-object p1, Lcom/transsion/campostalgo/FeatureParam;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/transsion/campostalgo/ICamPostAlgoCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/transsion/campostalgo/ICamPostAlgoCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/campostalgo/FeatureParam;

    .line 72
    invoke-interface {p0, p1}, Lcom/transsion/campostalgo/ICamPostAlgoCallback;->processResult(Lcom/transsion/campostalgo/FeatureParam;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_47
    return v1

    .line 62
    :cond_48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
