.class public Lcom/transsion/hubsdk/api/os/TranUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/os/TranUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADMIN:I = 0x2

.field public static final FLAG_DEMO:I = 0x200

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_DUAL_PROFILE:I = 0x8000

.field public static final FLAG_EPHEMERAL:I = 0x100

.field public static final FLAG_FULL:I = 0x400

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_PROFILE:I = 0x1000

.field public static final FLAG_QUIET_MODE:I = 0x80

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final FLAG_SYSTEM:I = 0x800

.field public static final NO_PROFILE_GROUP_ID:I = -0x2710

.field public static final USER_TYPE_PROFILE_DUAL:Ljava/lang/String; = "android.os.usertype.profile.DUAL"


# instance fields
.field public mConvertedFromPreCreated:Z

.field public mCreationTime:J

.field public mFlags:I

.field public mGuestToRemove:Z

.field public mIconPath:Ljava/lang/String;

.field public mId:I

.field public mIsDualProfile:Z

.field public mLastLoggedInFingerprint:Ljava/lang/String;

.field public mLastLoggedInTime:J

.field public mName:Ljava/lang/String;

.field public mPartial:Z

.field public mPreCreated:Z

.field public mProfileBadge:I

.field public mProfileGroupId:I

.field public mRestrictedProfileParentId:I

.field public mSerialNumber:I

.field public mUserType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 478
    new-instance v0, Lcom/transsion/hubsdk/api/os/TranUserInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/os/TranUserInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    move v0, v2

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_42

    move v0, v2

    goto :goto_43

    :cond_42
    move v0, v1

    :goto_43
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_64

    move v1, v2

    :cond_64
    iput-boolean v1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIsDualProfile:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getCreationTime()J
    .registers 3

    .line 262
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    return-wide v0
.end method

.method public getFlags()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    return p0
.end method

.method public getIconPath()Ljava/lang/String;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .registers 1

    .line 154
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    return p0
.end method

.method public getLastLoggedInFingerprint()Ljava/lang/String;
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileBadge()I
    .registers 1

    .line 334
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    return p0
.end method

.method public getProfileGroupId()I
    .registers 1

    .line 370
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    return p0
.end method

.method public getRestrictedProfileParentId()I
    .registers 1

    .line 352
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    return p0
.end method

.method public getSerialNumber()I
    .registers 1

    .line 226
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    return p0
.end method

.method public getUserType()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    return-object p0
.end method

.method public isCloneProfile()Z
    .registers 2

    .line 415
    const-string v0, "android.os.usertype.profile.CLONE"

    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDualProfile()Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIsDualProfile:Z

    return p0
.end method

.method public isEnabled()Z
    .registers 2

    .line 397
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isInitialized()Z
    .registers 2

    .line 388
    iget p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isManagedProfile()Z
    .registers 2

    .line 406
    const-string v0, "android.os.usertype.profile.MANAGED"

    iget-object p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPartial()Z
    .registers 1

    .line 280
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    return p0
.end method

.method public isPreCreated()Z
    .registers 1

    .line 298
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    return p0
.end method

.method public setCreationTime(J)V
    .registers 3

    .line 271
    iput-wide p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    return-void
.end method

.method public setDualProfile(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIsDualProfile:Z

    return-void
.end method

.method public setFlags(I)V
    .registers 2

    .line 181
    iput p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mFlags:I

    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 163
    iput p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    return-void
.end method

.method public setLastLoggedInFingerprint(Ljava/lang/String;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPartial(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    return-void
.end method

.method public setPreCreated(Z)V
    .registers 2

    .line 307
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    return-void
.end method

.method public setProfileBadge(I)V
    .registers 2

    .line 343
    iput p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    return-void
.end method

.method public setProfileGroupId(I)V
    .registers 2

    .line 379
    iput p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    return-void
.end method

.method public setRestrictedProfileParentId(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    return-void
.end method

.method public setSerialNumber(I)V
    .registers 2

    .line 235
    iput p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 448
    iget v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mSerialNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIconPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-wide v0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mCreationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 455
    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPartial:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 456
    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mPreCreated:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 457
    iget-object p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mLastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileBadge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mRestrictedProfileParentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget p2, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mProfileGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/os/TranUserInfo;->mIsDualProfile:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
