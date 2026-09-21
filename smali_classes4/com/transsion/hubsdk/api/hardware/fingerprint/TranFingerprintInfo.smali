.class public Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_SYSTEM:I


# instance fields
.field private mAppPkgName:Ljava/lang/CharSequence;

.field private mBiometricId:I

.field private mDeviceId:J

.field private mGroupId:I

.field private mName:Ljava/lang/CharSequence;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mGroupId:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mUserId:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mName:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mBiometricId:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mDeviceId:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAppPkgName()Ljava/lang/CharSequence;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mAppPkgName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getBiometricId()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mBiometricId:I

    return p0
.end method

.method public getDeviceId()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mDeviceId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 62
    iget p0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mUserId:I

    return p0
.end method

.method public setAppPkgName(Ljava/lang/CharSequence;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mAppPkgName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setBiometricId(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mBiometricId:I

    return-void
.end method

.method public setDeviceId(J)V
    .registers 3

    .line 125
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mDeviceId:J

    return-void
.end method

.method public setGroupId(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mGroupId:I

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mUserId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 149
    iget p2, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget p2, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object p2, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mName:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget p2, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mBiometricId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
